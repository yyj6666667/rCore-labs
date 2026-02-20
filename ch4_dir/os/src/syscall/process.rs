//! Process management syscalls
use core::mem::size_of;

use crate::{
    task::{change_program_brk, exit_current_and_run_next, suspend_current_and_run_next, get_current_task_id, get_syscall_cnt, current_user_token, map_for_current_task, unmap_for_current_task},
    timer::get_time_us,
    mm::{VirtAddr, translated_byte_buffer, MapPermission, PageTable},
    config::PAGE_SIZE,
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
            // 检查地址是否合法
            let page_table = PageTable::from_token(token);
            let va = VirtAddr::from(_id);
            let vpn = va.floor();
            let pte_opt = page_table.translate(vpn); // return none or some(pte)
            match pte_opt {
                Some(pte) => {
                    if !pte.is_valid() || !pte.usermode() || !pte.readable() {
                        return -1;
                    }
                },
                None => return -1,
            }
            //剩下合法情况
            // 从用户空间 _id 地址读 1 字节，返回该字节（作为 isize）
            let ppn = pte_opt.unwrap().ppn();
            ppn.get_bytes_array()[va.page_offset()] as isize
        },
        1 => {
            // 检查地址是否合法
            let page_table = PageTable::from_token(token);
            let va = VirtAddr::from(_id);
            let vpn = va.floor();
            let pte_opt = page_table.translate(vpn); // return none or some(pte)
            match pte_opt {
                Some(pte) => {
                    if !pte.is_valid() || !pte.usermode() ||!pte.writable() {
                        return -1;
                    }
                },
                None => return -1,
            }
            // 向用户空间 _id 地址写 1 字节，值为 _data 的低 8 位
            let written = &mut pte_opt.unwrap().ppn().get_bytes_array()[va.page_offset()];
            *written = _data as u8;
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
pub fn sys_mmap(_start: usize, _len: usize, _prot: usize) -> isize {
    trace!("kernel: sys_mmap NOT IMPLEMENTED YET!");
    if _start % PAGE_SIZE != 0 { // 如果虚拟地址没有按页对齐直接失败
        return -1;
    }
    if _prot & !0x7 != 0 { // _prot 其余位必须为 0
        return -1;
    }
    if _prot & 0x7 == 0 { // 这样的内存无意义
        return -1;
    }
    let num_pages = (_len + PAGE_SIZE - 1) / PAGE_SIZE; // page 数向上取整
    let mut map_perm: MapPermission = MapPermission::U; // MapPermission::V 会在 page_table 的 map 中被加上
    if _prot & 0x1 != 0 { // read
        map_perm |= MapPermission::R;
    }
    if _prot & 0x2 != 0 { // write
        map_perm |= MapPermission::W;
    }
    if _prot & 0x4 != 0 { // execute
        map_perm |= MapPermission::X;
    }
    let vpn = VirtAddr::from(_start).floor();
    match map_for_current_task(vpn, num_pages, map_perm) {
        0 => {
            return 0;
        },
        _ => {
            return -1;
        }
    };
}

// YOUR JOB: Implement munmap.
pub fn sys_munmap(_start: usize, _len: usize) -> isize {
    if _start % PAGE_SIZE != 0 { // 如果虚拟地址没有按页对齐直接失败
        return -1;
    }
    let num_pages = (_len + PAGE_SIZE - 1) / PAGE_SIZE; // page 数向上取整
    let vpn = VirtAddr::from(_start).floor();
    match unmap_for_current_task(vpn, num_pages) {
        0 => {
            return 0;
        },
        _ => {
            return -1;
        },
    };
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
