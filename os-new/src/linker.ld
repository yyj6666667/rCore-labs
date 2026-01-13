OUTPUT_ARCH(riscv)
ENTRY(_start)
SECTIONS {
    .text 0x80200000 : {
        *(.text.entry)
        *(.text .text.*)
    }
    .rodata : {
        *(.rodata .rodata.*)
        *(.srodata .srodata.*)
    }
    .data : {
        *(.data .data.*)
        *(.sdata .sdata.*)
    }
    .bss : {
        sbss = .;
        *(.bss.uninit)
        *(.bss .bss.*)
        *(.sbss .sbss.*)
        ebss = .;
    }
}