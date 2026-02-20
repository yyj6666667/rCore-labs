#![no_std]
#![no_main]
use core::fmt;
use core::fmt::Write;


mod lang_items;
mod sbi;

core::arch::global_asm!(include_str!("entry.asm")); ///写相当于 mod entry ， 哈哈哈， 只是entry是汇编

//add bss clear func
#[no_mangle]
fn clear_bss() {
    extern "C" {
        fn sbss();
        fn ebss();
    }
    (sbss as usize..ebss as usize).for_each(|a| {
                                                        //sbss 本身是 ptr， 转换成usize
                                                        // .. 创建了一个范围
                                                        // 直接把范围当成对象用， 第一眼看很离谱， 看多了就好了
        unsafe { (a as *mut u8).write_volatile(0);}
                                                        // a as *mut u8 ， 把a转换成可变的u8指针
                                                        // unsafe 绕过rust安全检查， 才能直接操作内存
                                                        // volatile 确保每次的写入不会被编译器优化
    });
}


#[no_mangle]
pub fn rust_main() {
    clear_bss();
    //clear_bss 是为了填平刚开机时ram里面的随机电平值， 安全
    use crate::sbi::shutdown;
    shutdown();
}

const SYSCALL_EXIT: usize = 93;
const SYSCALL_WRITE: usize = 64;

//id转给rust's core 部分实现
fn syscall(id: usize, args: [usize; 3]) -> isize {
    let mut ret;
    unsafe {
        core::arch::asm!(
            "ecall",
            inlateout("x10") args[0] => ret, //haha , inlateout
            in("x11") args[1],
            in("x12") args[2],
            in("x17") id,
        );
    }
    ret
}

pub fn sys_exit(xstate: i32) -> isize {
    syscall(SYSCALL_EXIT, [xstate as usize, 0, 0])
}

pub fn sys_write(fd: usize, buffer: &[u8]) -> isize {
    syscall(SYSCALL_WRITE, [fd, buffer.as_ptr() as usize, buffer.len()])
}


struct Stdout;

impl Write for Stdout {
    fn write_str(&mut self, s: &str) -> fmt::Result {
        sys_write(1, s.as_bytes());
        Ok(())
    }
}

pub fn print(args: fmt::Arguments) {
    Stdout.write_fmt(args).unwrap();
}

#[macro_export]
macro_rules! print {
    ($fmt: literal $(, $($arg: tt)+)?) => {
        $crate::print(format_args!($fmt $(, $($arg)+)?));
    }
}

#[macro_export]
macro_rules! println {
    ($fmt: literal $(, $($arg: tt)+)?) => {
        print(format_args!(concat!($fmt, "\n") $(, $($arg)+)?));
    }
}

//#[no_mangle]
//extern "C" fn _start() {
//    print!("哎呀， world");
//    sys_exit(9);
//    use crate::sbi::shutdown;//call stack:``
//                            // sbi -> sbi_call -> 
//                            //-> asm in sbi.rs -> 
//                            //-> real asm (loc = 0) 
//                            //-> call rust_main
//    shutdown();
//}





