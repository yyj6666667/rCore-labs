    .section .text.entry
    .globl   _start     // .globl let linker find from 全局
_start:
    la sp, boot_stack_top// asm 允许前向引用
    call rust_main   // = jal ra, rust_main

    .section .bss.stack //疑问：为什么把栈放到bss段
    .globl boot_stack
boot_stack:
    .space 4096 * 16
    .globl boot_stack_top
boot_stack_top: