//! Process management syscalls
use core::mem::size_of;

use crate::{
    task::{change_program_brk, exit_current_and_run_next, suspend_current_and_run_next, get_current_task_id, get_syscall_cnt, current_user_token},
    timer::get_time_us,
    mm::translated_byte_buffer,
};

#[repr(C)]
#[derive(Debug)]
pub struct TimeVal {
    pub sec: usize,
    pub usec: usize,
}

/// task exits and submit an exit code
pub fn sys_exit(_exit_code: i32) -> ! {
    trace!("kernel: sys_exit");
    exit_current_and_run_next();
    panic!("Unreachable in sys_exit!");
}

/// current task gives up resources for other tasks
pub fn sys_yield() -> isize {
    trace!("kernel: sys_yield");
    suspend_current_and_run_next();
    0
}


/// YOUR JOB: get time with second and microsecond
/// HINT: You might reimplement it with virtual memory management.
/// HINT: What if [`TimeVal`] is splitted by two pages ?
pub fn sys_get_time(ts: *mut TimeVal, _tz: usize) -> isize {
    trace!("kernel: sys_get_time");
    let time_us = get_time_us();
    let time_val = TimeVal {
        sec: time_us / 1_000_000,
        usec: time_us % 1_000_000,
    };

    let src = unsafe {
        core::slice::from_raw_parts(&time_val as *const TimeVal as *const u8, size_of::<TimeVal>())
    };
    let buffers = translated_byte_buffer(current_user_token(), ts as *const u8, src.len());
    let mut offset = 0;
    for buffer in buffers {
        buffer.copy_from_slice(&src[offset..offset + buffer.len()]);
        offset += buffer.len();
    }
    0
}

/// TODO: Finish sys_trace to pass testcases
/// HINT: You might reimplement it with virtual memory management.
pub fn sys_trace(_trace_request: usize, _id: usize, _data: usize) -> isize {
    trace!("kernel: sys_trace");
    let token = current_user_token();
    match _trace_request {
        0 => {
            // 从用户空间 _id 地址读 1 字节，返回该字节（作为 isize）
            let buffers = translated_byte_buffer(token, _id as *const u8, size_of::<u8>());
            buffers[0][0] as isize
        },
        1 => {
            // 向用户空间 _id 地址写 1 字节，值为 _data 的低 8 位
            let mut buffers = translated_byte_buffer(token, _id as *const u8, size_of::<u8>());
            buffers[0][0] = _data as u8;
            0
        },
        2 => {
            let syscall_id = _id;
            let current_task_id = get_current_task_id();
            let ret = get_syscall_cnt(current_task_id, syscall_id) as isize;
            ret
        },
        _ => -1,
    }
}

// YOUR JOB: Implement mmap.
pub fn sys_mmap(_start: usize, _len: usize, _port: usize) -> isize {
    trace!("kernel: sys_mmap NOT IMPLEMENTED YET!");
    -1
}

// YOUR JOB: Implement munmap.
pub fn sys_munmap(_start: usize, _len: usize) -> isize {
    trace!("kernel: sys_munmap NOT IMPLEMENTED YET!");
    -1
}
/// change data segment size
pub fn sys_sbrk(size: i32) -> isize {
    trace!("kernel: sys_sbrk");
    if let Some(old_brk) = change_program_brk(size) {
        old_brk as isize
    } else {
        -1
    }
}
