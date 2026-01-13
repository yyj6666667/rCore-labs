
target/riscv64gc-unknown-none-elf/release/os:	file format elf64-littleriscv

Disassembly of section .text:

0000000080200000 <_start>:
80200000: 17 01 01 00  	auipc	sp, 0x10
80200004: 13 01 81 3d  	addi	sp, sp, 0x3d8
80200008: 97 00 00 00  	auipc	ra, 0x0
8020000c: e7 80 a0 05  	jalr	0x5a(ra) <rust_main>

0000000080200010 <rust_begin_unwind>:
80200010: 41 11        	addi	sp, sp, -0x10
80200012: 06 e4        	sd	ra, 0x8(sp)
80200014: 22 e0        	sd	s0, 0x0(sp)
80200016: 00 08        	addi	s0, sp, 0x10
80200018: 01 a0        	j	0x80200018 <rust_begin_unwind+0x8>

000000008020001a <_ZN2os3sbi8shutdown17h9fe919b7610a8464E>:
8020001a: 39 71        	addi	sp, sp, -0x40
8020001c: 06 fc        	sd	ra, 0x38(sp)
8020001e: 22 f8        	sd	s0, 0x30(sp)
80200020: 80 00        	addi	s0, sp, 0x40
80200022: a1 46        	li	a3, 0x8
80200024: a1 48        	li	a7, 0x8
80200026: 01 45        	li	a0, 0x0
80200028: 81 45        	li	a1, 0x0
8020002a: 01 46        	li	a2, 0x0
8020002c: 73 00 00 00  	ecall

0000000080200030 <.Lpcrel_hi1>:
80200030: 17 05 00 00  	auipc	a0, 0x0
80200034: 13 05 85 0f  	addi	a0, a0, 0xf8
80200038: 23 30 a4 fc  	sd	a0, -0x40(s0)
8020003c: 05 45        	li	a0, 0x1
8020003e: 23 34 a4 fc  	sd	a0, -0x38(s0)
80200042: 23 30 04 fe  	sd	zero, -0x20(s0)
80200046: 23 38 d4 fc  	sd	a3, -0x30(s0)
8020004a: 23 3c 04 fc  	sd	zero, -0x28(s0)

000000008020004e <.Lpcrel_hi2>:
8020004e: 17 05 00 00  	auipc	a0, 0x0
80200052: 93 05 a5 0f  	addi	a1, a0, 0xfa
80200056: 13 05 04 fc  	addi	a0, s0, -0x40
8020005a: 97 00 00 00  	auipc	ra, 0x0
8020005e: e7 80 e0 07  	jalr	0x7e(ra) <_ZN4core9panicking9panic_fmt17h11ec9af140fca503E>

0000000080200062 <rust_main>:
80200062: 41 11        	addi	sp, sp, -0x10
80200064: 06 e4        	sd	ra, 0x8(sp)
80200066: 22 e0        	sd	s0, 0x0(sp)
80200068: 00 08        	addi	s0, sp, 0x10

000000008020006a <.Lpcrel_hi5>:
8020006a: 17 05 00 00  	auipc	a0, 0x0
8020006e: 93 05 65 0f  	addi	a1, a0, 0xf6
80200072: 05 45        	li	a0, 0x1
80200074: 65 46        	li	a2, 0x19
80200076: 93 08 00 04  	li	a7, 0x40
8020007a: 73 00 00 00  	ecall

000000008020007e <.Lpcrel_hi6>:
8020007e: 17 05 01 00  	auipc	a0, 0x10
80200082: 13 05 a5 35  	addi	a0, a0, 0x35a

0000000080200086 <.Lpcrel_hi7>:
80200086: 97 05 00 00  	auipc	a1, 0x0
8020008a: 93 85 25 35  	addi	a1, a1, 0x352
8020008e: 63 f9 a5 00  	bgeu	a1, a0, 0x802000a0 <.Lpcrel_hi7+0x1a>
80200092: 13 86 15 00  	addi	a2, a1, 0x1
80200096: 23 80 05 00  	sb	zero, 0x0(a1)
8020009a: b2 85        	mv	a1, a2
8020009c: e3 6b a6 fe  	bltu	a2, a0, 0x80200092 <.Lpcrel_hi7+0xc>
802000a0: 97 00 00 00  	auipc	ra, 0x0
802000a4: e7 80 a0 f7  	jalr	-0x86(ra) <_ZN2os3sbi8shutdown17h9fe919b7610a8464E>

00000000802000a8 <_ZN4core3ptr37drop_in_place$LT$core..fmt..Error$GT$17h7c410a26c1d28cadE>:
802000a8: 41 11        	addi	sp, sp, -0x10
802000aa: 06 e4        	sd	ra, 0x8(sp)
802000ac: 22 e0        	sd	s0, 0x0(sp)
802000ae: 00 08        	addi	s0, sp, 0x10
802000b0: a2 60        	ld	ra, 0x8(sp)
802000b2: 02 64        	ld	s0, 0x0(sp)
802000b4: 41 01        	addi	sp, sp, 0x10
802000b6: 82 80        	ret

00000000802000b8 <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hc3d15622f3d995abE>:
802000b8: 41 11        	addi	sp, sp, -0x10
802000ba: 06 e4        	sd	ra, 0x8(sp)
802000bc: 22 e0        	sd	s0, 0x0(sp)
802000be: 00 08        	addi	s0, sp, 0x10

00000000802000c0 <.Lpcrel_hi221>:
802000c0: 17 05 00 00  	auipc	a0, 0x0
802000c4: 03 35 05 18  	ld	a0, 0x180(a0)

00000000802000c8 <.Lpcrel_hi222>:
802000c8: 97 05 00 00  	auipc	a1, 0x0
802000cc: 83 b5 05 18  	ld	a1, 0x180(a1)
802000d0: a2 60        	ld	ra, 0x8(sp)
802000d2: 02 64        	ld	s0, 0x0(sp)
802000d4: 41 01        	addi	sp, sp, 0x10
802000d6: 82 80        	ret

00000000802000d8 <_ZN4core9panicking9panic_fmt17h11ec9af140fca503E>:
802000d8: 39 71        	addi	sp, sp, -0x40
802000da: 06 fc        	sd	ra, 0x38(sp)
802000dc: 22 f8        	sd	s0, 0x30(sp)
802000de: 80 00        	addi	s0, sp, 0x40
802000e0: 05 46        	li	a2, 0x1
802000e2: 23 34 c4 fc  	sd	a2, -0x38(s0)

00000000802000e6 <.Lpcrel_hi365>:
802000e6: 97 06 00 00  	auipc	a3, 0x0
802000ea: 93 86 a6 09  	addi	a3, a3, 0x9a
802000ee: 23 38 d4 fc  	sd	a3, -0x30(s0)
802000f2: 23 3c a4 fc  	sd	a0, -0x28(s0)
802000f6: 23 30 b4 fe  	sd	a1, -0x20(s0)
802000fa: 23 14 c4 fe  	sh	a2, -0x18(s0)
802000fe: 13 05 84 fc  	addi	a0, s0, -0x38
80200102: 97 00 00 00  	auipc	ra, 0x0
80200106: e7 80 e0 f0  	jalr	-0xf2(ra) <rust_begin_unwind>
