
target/riscv64gc-unknown-none-elf/release/os:	file format elf64-littleriscv

Disassembly of section .text:

0000000080200000 <_start>:
80200000: 17 11 01 00  	auipc	sp, 0x11
80200004: 13 01 81 d6  	addi	sp, sp, -0x298
80200008: 97 00 00 00  	auipc	ra, 0x0
8020000c: e7 80 00 1e  	jalr	0x1e0(ra) <rust_main>

0000000080200010 <_ZN4core3fmt5Write10write_char17hc26f5f09d050855aE>:
80200010: 01 11        	addi	sp, sp, -0x20
80200012: 06 ec        	sd	ra, 0x18(sp)
80200014: 22 e8        	sd	s0, 0x10(sp)
80200016: 00 10        	addi	s0, sp, 0x20
80200018: 1b 85 05 00  	sext.w	a0, a1
8020001c: 13 06 00 08  	li	a2, 0x80
80200020: 23 26 04 fe  	sw	zero, -0x14(s0)
80200024: 63 76 c5 00  	bgeu	a0, a2, 0x80200030 <_ZN4core3fmt5Write10write_char17hc26f5f09d050855aE+0x20>
80200028: 23 06 b4 fe  	sb	a1, -0x14(s0)
8020002c: 05 46        	li	a2, 0x1
8020002e: 71 a0        	j	0x802000ba <_ZN4core3fmt5Write10write_char17hc26f5f09d050855aE+0xaa>
80200030: 1b d5 b5 00  	srliw	a0, a1, 0xb
80200034: 19 ed        	bnez	a0, 0x80200052 <_ZN4core3fmt5Write10write_char17hc26f5f09d050855aE+0x42>
80200036: 13 d5 65 00  	srli	a0, a1, 0x6
8020003a: 13 65 05 0c  	ori	a0, a0, 0xc0
8020003e: 23 06 a4 fe  	sb	a0, -0x14(s0)
80200042: 13 f5 f5 03  	andi	a0, a1, 0x3f
80200046: 13 05 05 08  	addi	a0, a0, 0x80
8020004a: a3 06 a4 fe  	sb	a0, -0x13(s0)
8020004e: 09 46        	li	a2, 0x2
80200050: ad a0        	j	0x802000ba <_ZN4core3fmt5Write10write_char17hc26f5f09d050855aE+0xaa>
80200052: 1b d5 05 01  	srliw	a0, a1, 0x10
80200056: 15 e5        	bnez	a0, 0x80200082 <_ZN4core3fmt5Write10write_char17hc26f5f09d050855aE+0x72>
80200058: 13 d5 c5 00  	srli	a0, a1, 0xc
8020005c: 13 65 05 0e  	ori	a0, a0, 0xe0
80200060: 23 06 a4 fe  	sb	a0, -0x14(s0)
80200064: 13 95 45 03  	slli	a0, a1, 0x34
80200068: 69 91        	srli	a0, a0, 0x3a
8020006a: 13 05 05 08  	addi	a0, a0, 0x80
8020006e: a3 06 a4 fe  	sb	a0, -0x13(s0)
80200072: 13 f5 f5 03  	andi	a0, a1, 0x3f
80200076: 13 05 05 08  	addi	a0, a0, 0x80
8020007a: 23 07 a4 fe  	sb	a0, -0x12(s0)
8020007e: 0d 46        	li	a2, 0x3
80200080: 2d a8        	j	0x802000ba <_ZN4core3fmt5Write10write_char17hc26f5f09d050855aE+0xaa>
80200082: 13 95 b5 02  	slli	a0, a1, 0x2b
80200086: 75 91        	srli	a0, a0, 0x3d
80200088: 13 05 05 0f  	addi	a0, a0, 0xf0
8020008c: 23 06 a4 fe  	sb	a0, -0x14(s0)
80200090: 13 95 e5 02  	slli	a0, a1, 0x2e
80200094: 69 91        	srli	a0, a0, 0x3a
80200096: 13 05 05 08  	addi	a0, a0, 0x80
8020009a: a3 06 a4 fe  	sb	a0, -0x13(s0)
8020009e: 13 95 45 03  	slli	a0, a1, 0x34
802000a2: 69 91        	srli	a0, a0, 0x3a
802000a4: 13 05 05 08  	addi	a0, a0, 0x80
802000a8: 23 07 a4 fe  	sb	a0, -0x12(s0)
802000ac: 13 f5 f5 03  	andi	a0, a1, 0x3f
802000b0: 13 05 05 08  	addi	a0, a0, 0x80
802000b4: a3 07 a4 fe  	sb	a0, -0x11(s0)
802000b8: 11 46        	li	a2, 0x4
802000ba: 05 45        	li	a0, 0x1
802000bc: 93 05 c4 fe  	addi	a1, s0, -0x14
802000c0: 93 08 00 04  	li	a7, 0x40
802000c4: 73 00 00 00  	ecall
802000c8: 01 45        	li	a0, 0x0
802000ca: e2 60        	ld	ra, 0x18(sp)
802000cc: 42 64        	ld	s0, 0x10(sp)
802000ce: 05 61        	addi	sp, sp, 0x20
802000d0: 82 80        	ret

00000000802000d2 <_ZN4core3fmt5Write9write_fmt17hafeca024886a0a55E>:
802000d2: 41 11        	addi	sp, sp, -0x10
802000d4: 06 e4        	sd	ra, 0x8(sp)
802000d6: 22 e0        	sd	s0, 0x0(sp)
802000d8: 00 08        	addi	s0, sp, 0x10

00000000802000da <.Lpcrel_hi1>:
802000da: 17 06 00 00  	auipc	a2, 0x0
802000de: 13 06 66 7e  	addi	a2, a2, 0x7e6
802000e2: ae 86        	mv	a3, a1
802000e4: b2 85        	mv	a1, a2
802000e6: 36 86        	mv	a2, a3
802000e8: a2 60        	ld	ra, 0x8(sp)
802000ea: 02 64        	ld	s0, 0x0(sp)
802000ec: 41 01        	addi	sp, sp, 0x10
802000ee: 17 03 00 00  	auipc	t1, 0x0
802000f2: 67 00 83 20  	jr	0x208(t1) <_ZN4core3fmt5write17h49a560cace6c89d2E>

00000000802000f6 <_ZN4core3ptr31drop_in_place$LT$os..Stdout$GT$17h5b5705b44243225eE>:
802000f6: 41 11        	addi	sp, sp, -0x10
802000f8: 06 e4        	sd	ra, 0x8(sp)
802000fa: 22 e0        	sd	s0, 0x0(sp)
802000fc: 00 08        	addi	s0, sp, 0x10
802000fe: a2 60        	ld	ra, 0x8(sp)
80200100: 02 64        	ld	s0, 0x0(sp)
80200102: 41 01        	addi	sp, sp, 0x10
80200104: 82 80        	ret

0000000080200106 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h1e73695f188ebaffE>:
80200106: 41 11        	addi	sp, sp, -0x10
80200108: 06 e4        	sd	ra, 0x8(sp)
8020010a: 22 e0        	sd	s0, 0x0(sp)
8020010c: 00 08        	addi	s0, sp, 0x10

000000008020010e <.Lpcrel_hi2>:
8020010e: 17 05 00 00  	auipc	a0, 0x0
80200112: 93 06 a5 7a  	addi	a3, a0, 0x7aa
80200116: 15 46        	li	a2, 0x5
80200118: 2e 85        	mv	a0, a1
8020011a: b6 85        	mv	a1, a3
8020011c: a2 60        	ld	ra, 0x8(sp)
8020011e: 02 64        	ld	s0, 0x0(sp)
80200120: 41 01        	addi	sp, sp, 0x10
80200122: 17 03 00 00  	auipc	t1, 0x0
80200126: 67 00 43 5a  	jr	0x5a4(t1) <_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h5573f2111dd68248E>

000000008020012a <rust_begin_unwind>:
8020012a: 41 11        	addi	sp, sp, -0x10
8020012c: 06 e4        	sd	ra, 0x8(sp)
8020012e: 22 e0        	sd	s0, 0x0(sp)
80200130: 00 08        	addi	s0, sp, 0x10
80200132: 01 a0        	j	0x80200132 <rust_begin_unwind+0x8>

0000000080200134 <_ZN2os3sbi8shutdown17h9fe919b7610a8464E>:
80200134: 39 71        	addi	sp, sp, -0x40
80200136: 06 fc        	sd	ra, 0x38(sp)
80200138: 22 f8        	sd	s0, 0x30(sp)
8020013a: 80 00        	addi	s0, sp, 0x40
8020013c: a1 46        	li	a3, 0x8
8020013e: a1 48        	li	a7, 0x8
80200140: 01 45        	li	a0, 0x0
80200142: 81 45        	li	a1, 0x0
80200144: 01 46        	li	a2, 0x0
80200146: 73 00 00 00  	ecall

000000008020014a <.Lpcrel_hi3>:
8020014a: 17 05 00 00  	auipc	a0, 0x0
8020014e: 13 05 e5 7b  	addi	a0, a0, 0x7be
80200152: 23 30 a4 fc  	sd	a0, -0x40(s0)
80200156: 05 45        	li	a0, 0x1
80200158: 23 34 a4 fc  	sd	a0, -0x38(s0)
8020015c: 23 30 04 fe  	sd	zero, -0x20(s0)
80200160: 23 38 d4 fc  	sd	a3, -0x30(s0)
80200164: 23 3c 04 fc  	sd	zero, -0x28(s0)

0000000080200168 <.Lpcrel_hi4>:
80200168: 17 05 00 00  	auipc	a0, 0x0
8020016c: 93 05 05 7c  	addi	a1, a0, 0x7c0
80200170: 13 05 04 fc  	addi	a0, s0, -0x40
80200174: 97 00 00 00  	auipc	ra, 0x0
80200178: e7 80 00 0e  	jalr	0xe0(ra) <_ZN4core9panicking9panic_fmt17h11ec9af140fca503E>

000000008020017c <_ZN47_$LT$os..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17hb6f898a89eed1cedE>:
8020017c: 41 11        	addi	sp, sp, -0x10
8020017e: 06 e4        	sd	ra, 0x8(sp)
80200180: 22 e0        	sd	s0, 0x0(sp)
80200182: 00 08        	addi	s0, sp, 0x10
80200184: 05 45        	li	a0, 0x1
80200186: 93 08 00 04  	li	a7, 0x40
8020018a: 73 00 00 00  	ecall
8020018e: 01 45        	li	a0, 0x0
80200190: a2 60        	ld	ra, 0x8(sp)
80200192: 02 64        	ld	s0, 0x0(sp)
80200194: 41 01        	addi	sp, sp, 0x10
80200196: 82 80        	ret

0000000080200198 <_ZN2os5print17h6703f4c8a57dfd31E>:
80200198: 01 11        	addi	sp, sp, -0x20
8020019a: 06 ec        	sd	ra, 0x18(sp)
8020019c: 22 e8        	sd	s0, 0x10(sp)
8020019e: 00 10        	addi	s0, sp, 0x20
802001a0: 2a 86        	mv	a2, a0

00000000802001a2 <.Lpcrel_hi5>:
802001a2: 17 05 00 00  	auipc	a0, 0x0
802001a6: 93 05 e5 71  	addi	a1, a0, 0x71e
802001aa: 13 05 f4 fe  	addi	a0, s0, -0x11
802001ae: 97 00 00 00  	auipc	ra, 0x0
802001b2: e7 80 80 14  	jalr	0x148(ra) <_ZN4core3fmt5write17h49a560cace6c89d2E>
802001b6: 09 e5        	bnez	a0, 0x802001c0 <.Lpcrel_hi6>
802001b8: e2 60        	ld	ra, 0x18(sp)
802001ba: 42 64        	ld	s0, 0x10(sp)
802001bc: 05 61        	addi	sp, sp, 0x20
802001be: 82 80        	ret

00000000802001c0 <.Lpcrel_hi6>:
802001c0: 17 05 00 00  	auipc	a0, 0x0
802001c4: 13 05 05 78  	addi	a0, a0, 0x780

00000000802001c8 <.Lpcrel_hi7>:
802001c8: 97 05 00 00  	auipc	a1, 0x0
802001cc: 93 86 85 7a  	addi	a3, a1, 0x7a8

00000000802001d0 <.Lpcrel_hi8>:
802001d0: 97 05 00 00  	auipc	a1, 0x0
802001d4: 13 87 05 7d  	addi	a4, a1, 0x7d0
802001d8: 93 05 b0 02  	li	a1, 0x2b
802001dc: 13 06 f4 fe  	addi	a2, s0, -0x11
802001e0: 97 00 00 00  	auipc	ra, 0x0
802001e4: e7 80 60 0a  	jalr	0xa6(ra) <_ZN4core6result13unwrap_failed17h368883645868569cE>

00000000802001e8 <rust_main>:
802001e8: 39 71        	addi	sp, sp, -0x40
802001ea: 06 fc        	sd	ra, 0x38(sp)
802001ec: 22 f8        	sd	s0, 0x30(sp)
802001ee: 80 00        	addi	s0, sp, 0x40

00000000802001f0 <.Lpcrel_hi9>:
802001f0: 17 05 00 00  	auipc	a0, 0x0
802001f4: 13 05 85 7e  	addi	a0, a0, 0x7e8
802001f8: 23 30 a4 fc  	sd	a0, -0x40(s0)
802001fc: 05 45        	li	a0, 0x1
802001fe: 23 34 a4 fc  	sd	a0, -0x38(s0)
80200202: 23 30 04 fe  	sd	zero, -0x20(s0)
80200206: 21 45        	li	a0, 0x8
80200208: 23 38 a4 fc  	sd	a0, -0x30(s0)
8020020c: 23 3c 04 fc  	sd	zero, -0x28(s0)
80200210: 13 05 04 fc  	addi	a0, s0, -0x40
80200214: 97 00 00 00  	auipc	ra, 0x0
80200218: e7 80 40 f8  	jalr	-0x7c(ra) <_ZN2os5print17h6703f4c8a57dfd31E>
8020021c: 97 00 00 00  	auipc	ra, 0x0
80200220: e7 80 80 f1  	jalr	-0xe8(ra) <_ZN2os3sbi8shutdown17h9fe919b7610a8464E>

0000000080200224 <_ZN4core3ptr37drop_in_place$LT$core..fmt..Error$GT$17h7c410a26c1d28cadE>:
80200224: 41 11        	addi	sp, sp, -0x10
80200226: 06 e4        	sd	ra, 0x8(sp)
80200228: 22 e0        	sd	s0, 0x0(sp)
8020022a: 00 08        	addi	s0, sp, 0x10
8020022c: a2 60        	ld	ra, 0x8(sp)
8020022e: 02 64        	ld	s0, 0x0(sp)
80200230: 41 01        	addi	sp, sp, 0x10
80200232: 82 80        	ret

0000000080200234 <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hc3d15622f3d995abE>:
80200234: 41 11        	addi	sp, sp, -0x10
80200236: 06 e4        	sd	ra, 0x8(sp)
80200238: 22 e0        	sd	s0, 0x0(sp)
8020023a: 00 08        	addi	s0, sp, 0x10

000000008020023c <.Lpcrel_hi221>:
8020023c: 17 15 00 00  	auipc	a0, 0x1
80200240: 03 35 45 99  	ld	a0, -0x66c(a0)

0000000080200244 <.Lpcrel_hi222>:
80200244: 97 15 00 00  	auipc	a1, 0x1
80200248: 83 b5 45 99  	ld	a1, -0x66c(a1)
8020024c: a2 60        	ld	ra, 0x8(sp)
8020024e: 02 64        	ld	s0, 0x0(sp)
80200250: 41 01        	addi	sp, sp, 0x10
80200252: 82 80        	ret

0000000080200254 <_ZN4core9panicking9panic_fmt17h11ec9af140fca503E>:
80200254: 39 71        	addi	sp, sp, -0x40
80200256: 06 fc        	sd	ra, 0x38(sp)
80200258: 22 f8        	sd	s0, 0x30(sp)
8020025a: 80 00        	addi	s0, sp, 0x40
8020025c: 05 46        	li	a2, 0x1
8020025e: 23 34 c4 fc  	sd	a2, -0x38(s0)

0000000080200262 <.Lpcrel_hi365>:
80200262: 97 06 00 00  	auipc	a3, 0x0
80200266: 93 86 66 78  	addi	a3, a3, 0x786
8020026a: 23 38 d4 fc  	sd	a3, -0x30(s0)
8020026e: 23 3c a4 fc  	sd	a0, -0x28(s0)
80200272: 23 30 b4 fe  	sd	a1, -0x20(s0)
80200276: 23 14 c4 fe  	sh	a2, -0x18(s0)
8020027a: 13 05 84 fc  	addi	a0, s0, -0x38
8020027e: 97 00 00 00  	auipc	ra, 0x0
80200282: e7 80 c0 ea  	jalr	-0x154(ra) <rust_begin_unwind>

0000000080200286 <_ZN4core6result13unwrap_failed17h368883645868569cE>:
80200286: 19 71        	addi	sp, sp, -0x80
80200288: 86 fc        	sd	ra, 0x78(sp)
8020028a: a2 f8        	sd	s0, 0x70(sp)
8020028c: 00 01        	addi	s0, sp, 0x80
8020028e: 23 30 a4 f8  	sd	a0, -0x80(s0)
80200292: 23 34 b4 f8  	sd	a1, -0x78(s0)
80200296: 23 38 c4 f8  	sd	a2, -0x70(s0)
8020029a: 23 3c d4 f8  	sd	a3, -0x68(s0)
8020029e: 13 05 04 f8  	addi	a0, s0, -0x80
802002a2: 23 38 a4 fc  	sd	a0, -0x30(s0)

00000000802002a6 <.Lpcrel_hi393>:
802002a6: 17 05 00 00  	auipc	a0, 0x0
802002aa: 13 05 45 5f  	addi	a0, a0, 0x5f4
802002ae: 23 3c a4 fc  	sd	a0, -0x28(s0)
802002b2: 13 05 04 f9  	addi	a0, s0, -0x70
802002b6: 23 30 a4 fe  	sd	a0, -0x20(s0)

00000000802002ba <.Lpcrel_hi394>:
802002ba: 17 05 00 00  	auipc	a0, 0x0
802002be: 13 05 a5 5c  	addi	a0, a0, 0x5ca
802002c2: 23 34 a4 fe  	sd	a0, -0x18(s0)

00000000802002c6 <.Lpcrel_hi395>:
802002c6: 17 05 00 00  	auipc	a0, 0x0
802002ca: 13 05 a5 74  	addi	a0, a0, 0x74a
802002ce: 23 30 a4 fa  	sd	a0, -0x60(s0)
802002d2: 09 45        	li	a0, 0x2
802002d4: 23 34 a4 fa  	sd	a0, -0x58(s0)
802002d8: 23 30 04 fc  	sd	zero, -0x40(s0)
802002dc: 93 05 04 fd  	addi	a1, s0, -0x30
802002e0: 23 38 b4 fa  	sd	a1, -0x50(s0)
802002e4: 23 3c a4 fa  	sd	a0, -0x48(s0)
802002e8: 13 05 04 fa  	addi	a0, s0, -0x60
802002ec: ba 85        	mv	a1, a4
802002ee: 97 00 00 00  	auipc	ra, 0x0
802002f2: e7 80 60 f6  	jalr	-0x9a(ra) <_ZN4core9panicking9panic_fmt17h11ec9af140fca503E>

00000000802002f6 <_ZN4core3fmt5write17h49a560cace6c89d2E>:
802002f6: 75 71        	addi	sp, sp, -0x90
802002f8: 06 e5        	sd	ra, 0x88(sp)
802002fa: 22 e1        	sd	s0, 0x80(sp)
802002fc: a6 fc        	sd	s1, 0x78(sp)
802002fe: ca f8        	sd	s2, 0x70(sp)
80200300: ce f4        	sd	s3, 0x68(sp)
80200302: d2 f0        	sd	s4, 0x60(sp)
80200304: d6 ec        	sd	s5, 0x58(sp)
80200306: da e8        	sd	s6, 0x50(sp)
80200308: de e4        	sd	s7, 0x48(sp)
8020030a: e2 e0        	sd	s8, 0x40(sp)
8020030c: 00 09        	addi	s0, sp, 0x90
8020030e: b2 89        	mv	s3, a2
80200310: 13 06 00 02  	li	a2, 0x20
80200314: 23 30 c4 fa  	sd	a2, -0x60(s0)
80200318: 0d 46        	li	a2, 0x3
8020031a: 23 04 c4 fa  	sb	a2, -0x58(s0)
8020031e: 83 b4 09 02  	ld	s1, 0x20(s3)
80200322: 23 38 04 f6  	sd	zero, -0x90(s0)
80200326: 23 30 04 f8  	sd	zero, -0x80(s0)
8020032a: 23 38 a4 f8  	sd	a0, -0x70(s0)
8020032e: 23 3c b4 f8  	sd	a1, -0x68(s0)
80200332: f9 c8        	beqz	s1, 0x80200408 <_ZN4core3fmt5write17h49a560cace6c89d2E+0x112>
80200334: 03 b5 89 02  	ld	a0, 0x28(s3)
80200338: 63 06 05 12  	beqz	a0, 0x80200464 <_ZN4core3fmt5write17h49a560cace6c89d2E+0x16e>
8020033c: 03 bb 09 00  	ld	s6, 0x0(s3)
80200340: 03 ba 09 01  	ld	s4, 0x10(s3)
80200344: 93 05 f5 ff  	addi	a1, a0, -0x1
80200348: 8e 05        	slli	a1, a1, 0x3
8020034a: 8d 81        	srli	a1, a1, 0x3
8020034c: 13 89 15 00  	addi	s2, a1, 0x1
80200350: 21 0b        	addi	s6, s6, 0x8
80200352: 93 05 80 03  	li	a1, 0x38
80200356: b3 0a b5 02  	mul	s5, a0, a1
8020035a: e1 04        	addi	s1, s1, 0x18
8020035c: 89 4b        	li	s7, 0x2
8020035e: 05 4c        	li	s8, 0x1
80200360: 03 36 0b 00  	ld	a2, 0x0(s6)
80200364: 19 ca        	beqz	a2, 0x8020037a <_ZN4core3fmt5write17h49a560cace6c89d2E+0x84>
80200366: 83 36 84 f9  	ld	a3, -0x68(s0)
8020036a: 03 35 04 f9  	ld	a0, -0x70(s0)
8020036e: 83 35 8b ff  	ld	a1, -0x8(s6)
80200372: 94 6e        	ld	a3, 0x18(a3)
80200374: 82 96        	jalr	a3
80200376: 63 1b 05 10  	bnez	a0, 0x8020048c <_ZN4core3fmt5write17h49a560cace6c89d2E+0x196>
8020037a: 88 68        	ld	a0, 0x10(s1)
8020037c: 23 30 a4 fa  	sd	a0, -0x60(s0)
80200380: 03 c6 84 01  	lbu	a2, 0x18(s1)
80200384: 83 b5 84 ff  	ld	a1, -0x8(s1)
80200388: 88 60        	ld	a0, 0x0(s1)
8020038a: 23 04 c4 fa  	sb	a2, -0x58(s0)
8020038e: 95 c1        	beqz	a1, 0x802003b2 <_ZN4core3fmt5write17h49a560cace6c89d2E+0xbc>
80200390: 63 96 85 01  	bne	a1, s8, 0x8020039c <_ZN4core3fmt5write17h49a560cace6c89d2E+0xa6>
80200394: 12 05        	slli	a0, a0, 0x4
80200396: 52 95        	add	a0, a0, s4
80200398: 0c 65        	ld	a1, 0x8(a0)
8020039a: 99 c9        	beqz	a1, 0x802003b0 <_ZN4core3fmt5write17h49a560cace6c89d2E+0xba>
8020039c: 81 45        	li	a1, 0x0
8020039e: 03 b6 84 fe  	ld	a2, -0x18(s1)
802003a2: 23 38 04 f6  	sd	zero, -0x90(s0)
802003a6: 23 3c a4 f6  	sd	a0, -0x88(s0)
802003aa: 63 1d 76 01  	bne	a2, s7, 0x802003c4 <_ZN4core3fmt5write17h49a560cace6c89d2E+0xce>
802003ae: 25 a0        	j	0x802003d6 <_ZN4core3fmt5write17h49a560cace6c89d2E+0xe0>
802003b0: 08 61        	ld	a0, 0x0(a0)
802003b2: 85 45        	li	a1, 0x1
802003b4: 03 b6 84 fe  	ld	a2, -0x18(s1)
802003b8: 23 38 b4 f6  	sd	a1, -0x90(s0)
802003bc: 23 3c a4 f6  	sd	a0, -0x88(s0)
802003c0: 63 0b 76 01  	beq	a2, s7, 0x802003d6 <_ZN4core3fmt5write17h49a560cace6c89d2E+0xe0>
802003c4: 83 b5 04 ff  	ld	a1, -0x10(s1)
802003c8: 63 1a 86 01  	bne	a2, s8, 0x802003dc <_ZN4core3fmt5write17h49a560cace6c89d2E+0xe6>
802003cc: 13 95 45 00  	slli	a0, a1, 0x4
802003d0: 52 95        	add	a0, a0, s4
802003d2: 0c 65        	ld	a1, 0x8(a0)
802003d4: 99 c1        	beqz	a1, 0x802003da <_ZN4core3fmt5write17h49a560cace6c89d2E+0xe4>
802003d6: 01 46        	li	a2, 0x0
802003d8: 19 a0        	j	0x802003de <_ZN4core3fmt5write17h49a560cace6c89d2E+0xe8>
802003da: 0c 61        	ld	a1, 0x0(a0)
802003dc: 05 46        	li	a2, 0x1
802003de: 88 64        	ld	a0, 0x8(s1)
802003e0: 12 05        	slli	a0, a0, 0x4
802003e2: 52 95        	add	a0, a0, s4
802003e4: 14 65        	ld	a3, 0x8(a0)
802003e6: 08 61        	ld	a0, 0x0(a0)
802003e8: 23 30 c4 f8  	sd	a2, -0x80(s0)
802003ec: 23 34 b4 f8  	sd	a1, -0x78(s0)
802003f0: 93 05 04 f7  	addi	a1, s0, -0x90
802003f4: 82 96        	jalr	a3
802003f6: 59 e9        	bnez	a0, 0x8020048c <_ZN4core3fmt5write17h49a560cace6c89d2E+0x196>
802003f8: 41 0b        	addi	s6, s6, 0x10
802003fa: 93 8a 8a fc  	addi	s5, s5, -0x38
802003fe: 93 84 84 03  	addi	s1, s1, 0x38
80200402: e3 9f 0a f4  	bnez	s5, 0x80200360 <_ZN4core3fmt5write17h49a560cace6c89d2E+0x6a>
80200406: 91 a8        	j	0x8020045a <_ZN4core3fmt5write17h49a560cace6c89d2E+0x164>
80200408: 03 ba 89 01  	ld	s4, 0x18(s3)
8020040c: 63 0c 0a 04  	beqz	s4, 0x80200464 <_ZN4core3fmt5write17h49a560cace6c89d2E+0x16e>
80200410: 83 b4 09 01  	ld	s1, 0x10(s3)
80200414: 83 ba 09 00  	ld	s5, 0x0(s3)
80200418: 13 05 fa ff  	addi	a0, s4, -0x1
8020041c: 12 05        	slli	a0, a0, 0x4
8020041e: 11 81        	srli	a0, a0, 0x4
80200420: 13 09 15 00  	addi	s2, a0, 0x1
80200424: a1 0a        	addi	s5, s5, 0x8
80200426: 12 0a        	slli	s4, s4, 0x4
80200428: a1 04        	addi	s1, s1, 0x8
8020042a: 03 b6 0a 00  	ld	a2, 0x0(s5)
8020042e: 11 ca        	beqz	a2, 0x80200442 <_ZN4core3fmt5write17h49a560cace6c89d2E+0x14c>
80200430: 83 36 84 f9  	ld	a3, -0x68(s0)
80200434: 03 35 04 f9  	ld	a0, -0x70(s0)
80200438: 83 b5 8a ff  	ld	a1, -0x8(s5)
8020043c: 94 6e        	ld	a3, 0x18(a3)
8020043e: 82 96        	jalr	a3
80200440: 31 e5        	bnez	a0, 0x8020048c <_ZN4core3fmt5write17h49a560cace6c89d2E+0x196>
80200442: 90 60        	ld	a2, 0x0(s1)
80200444: 03 b5 84 ff  	ld	a0, -0x8(s1)
80200448: 93 05 04 f7  	addi	a1, s0, -0x90
8020044c: 02 96        	jalr	a2
8020044e: 1d ed        	bnez	a0, 0x8020048c <_ZN4core3fmt5write17h49a560cace6c89d2E+0x196>
80200450: c1 0a        	addi	s5, s5, 0x10
80200452: 41 1a        	addi	s4, s4, -0x10
80200454: c1 04        	addi	s1, s1, 0x10
80200456: e3 1a 0a fc  	bnez	s4, 0x8020042a <_ZN4core3fmt5write17h49a560cace6c89d2E+0x134>
8020045a: 03 b5 89 00  	ld	a0, 0x8(s3)
8020045e: 63 68 a9 00  	bltu	s2, a0, 0x8020046e <_ZN4core3fmt5write17h49a560cace6c89d2E+0x178>
80200462: 3d a0        	j	0x80200490 <_ZN4core3fmt5write17h49a560cace6c89d2E+0x19a>
80200464: 01 49        	li	s2, 0x0
80200466: 03 b5 89 00  	ld	a0, 0x8(s3)
8020046a: 63 73 a0 02  	bgeu	zero, a0, 0x80200490 <_ZN4core3fmt5write17h49a560cace6c89d2E+0x19a>
8020046e: 03 b5 09 00  	ld	a0, 0x0(s3)
80200472: 12 09        	slli	s2, s2, 0x4
80200474: 2a 99        	add	s2, s2, a0
80200476: 83 36 84 f9  	ld	a3, -0x68(s0)
8020047a: 03 35 04 f9  	ld	a0, -0x70(s0)
8020047e: 83 35 09 00  	ld	a1, 0x0(s2)
80200482: 03 36 89 00  	ld	a2, 0x8(s2)
80200486: 94 6e        	ld	a3, 0x18(a3)
80200488: 82 96        	jalr	a3
8020048a: 19 c1        	beqz	a0, 0x80200490 <_ZN4core3fmt5write17h49a560cace6c89d2E+0x19a>
8020048c: 05 45        	li	a0, 0x1
8020048e: 11 a0        	j	0x80200492 <_ZN4core3fmt5write17h49a560cace6c89d2E+0x19c>
80200490: 01 45        	li	a0, 0x0
80200492: aa 60        	ld	ra, 0x88(sp)
80200494: 0a 64        	ld	s0, 0x80(sp)
80200496: e6 74        	ld	s1, 0x78(sp)
80200498: 46 79        	ld	s2, 0x70(sp)
8020049a: a6 79        	ld	s3, 0x68(sp)
8020049c: 06 7a        	ld	s4, 0x60(sp)
8020049e: e6 6a        	ld	s5, 0x58(sp)
802004a0: 46 6b        	ld	s6, 0x50(sp)
802004a2: a6 6b        	ld	s7, 0x48(sp)
802004a4: 06 6c        	ld	s8, 0x40(sp)
802004a6: 49 61        	addi	sp, sp, 0x90
802004a8: 82 80        	ret

00000000802004aa <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E>:
802004aa: 5d 71        	addi	sp, sp, -0x50
802004ac: 86 e4        	sd	ra, 0x48(sp)
802004ae: a2 e0        	sd	s0, 0x40(sp)
802004b0: 26 fc        	sd	s1, 0x38(sp)
802004b2: 4a f8        	sd	s2, 0x30(sp)
802004b4: 4e f4        	sd	s3, 0x28(sp)
802004b6: 52 f0        	sd	s4, 0x20(sp)
802004b8: 56 ec        	sd	s5, 0x18(sp)
802004ba: 5a e8        	sd	s6, 0x10(sp)
802004bc: 5e e4        	sd	s7, 0x8(sp)
802004be: 80 08        	addi	s0, sp, 0x50
802004c0: 03 33 05 00  	ld	t1, 0x0(a0)
802004c4: 18 69        	ld	a4, 0x10(a0)
802004c6: b3 67 e3 00  	or	a5, t1, a4
802004ca: b2 89        	mv	s3, a2
802004cc: 2e 89        	mv	s2, a1
802004ce: 63 8b 07 14  	beqz	a5, 0x80200624 <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x17a>
802004d2: 6d cb        	beqz	a4, 0x802005c4 <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x11a>
802004d4: 18 6d        	ld	a4, 0x18(a0)
802004d6: 33 06 39 01  	add	a2, s2, s3
802004da: 81 47        	li	a5, 0x0
802004dc: 2d cf        	beqz	a4, 0x80200556 <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0xac>
802004de: 93 02 00 0e  	li	t0, 0xe0
802004e2: 93 08 00 0f  	li	a7, 0xf0
802004e6: 37 08 11 00  	lui	a6, 0x110
802004ea: ca 84        	mv	s1, s2
802004ec: 01 a8        	j	0x802004fc <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x52>
802004ee: 93 85 14 00  	addi	a1, s1, 0x1
802004f2: 85 8f        	sub	a5, a5, s1
802004f4: 7d 17        	addi	a4, a4, -0x1
802004f6: ae 97        	add	a5, a5, a1
802004f8: ae 84        	mv	s1, a1
802004fa: 39 cf        	beqz	a4, 0x80200558 <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0xae>
802004fc: 63 84 c4 0c  	beq	s1, a2, 0x802005c4 <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x11a>
80200500: 83 85 04 00  	lb	a1, 0x0(s1)
80200504: e3 d5 05 fe  	bgez	a1, 0x802004ee <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x44>
80200508: 93 f5 f5 0f  	andi	a1, a1, 0xff
8020050c: 63 ef 55 02  	bltu	a1, t0, 0x8020054a <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0xa0>
80200510: 63 e0 15 05  	bltu	a1, a7, 0x80200550 <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0xa6>
80200514: 83 c3 14 00  	lbu	t2, 0x1(s1)
80200518: 83 c6 24 00  	lbu	a3, 0x2(s1)
8020051c: 93 f3 f3 03  	andi	t2, t2, 0x3f
80200520: 93 f6 f6 03  	andi	a3, a3, 0x3f
80200524: 03 ce 34 00  	lbu	t3, 0x3(s1)
80200528: f6 15        	slli	a1, a1, 0x3d
8020052a: 93 de b5 02  	srli	t4, a1, 0x2b
8020052e: b2 03        	slli	t2, t2, 0xc
80200530: 9a 06        	slli	a3, a3, 0x6
80200532: b3 e6 76 00  	or	a3, a3, t2
80200536: 93 75 fe 03  	andi	a1, t3, 0x3f
8020053a: d5 8d        	or	a1, a1, a3
8020053c: b3 e5 d5 01  	or	a1, a1, t4
80200540: 63 82 05 09  	beq	a1, a6, 0x802005c4 <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x11a>
80200544: 93 85 44 00  	addi	a1, s1, 0x4
80200548: 6d b7        	j	0x802004f2 <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x48>
8020054a: 93 85 24 00  	addi	a1, s1, 0x2
8020054e: 55 b7        	j	0x802004f2 <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x48>
80200550: 93 85 34 00  	addi	a1, s1, 0x3
80200554: 79 bf        	j	0x802004f2 <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x48>
80200556: ca 85        	mv	a1, s2
80200558: 63 86 c5 06  	beq	a1, a2, 0x802005c4 <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x11a>
8020055c: 03 86 05 00  	lb	a2, 0x0(a1)
80200560: 63 53 06 04  	bgez	a2, 0x802005a6 <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0xfc>
80200564: 13 76 f6 0f  	andi	a2, a2, 0xff
80200568: 93 06 00 0e  	li	a3, 0xe0
8020056c: 63 6d d6 02  	bltu	a2, a3, 0x802005a6 <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0xfc>
80200570: 93 06 00 0f  	li	a3, 0xf0
80200574: 63 69 d6 02  	bltu	a2, a3, 0x802005a6 <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0xfc>
80200578: 83 c6 15 00  	lbu	a3, 0x1(a1)
8020057c: 03 c7 25 00  	lbu	a4, 0x2(a1)
80200580: 93 f6 f6 03  	andi	a3, a3, 0x3f
80200584: 13 77 f7 03  	andi	a4, a4, 0x3f
80200588: 83 c5 35 00  	lbu	a1, 0x3(a1)
8020058c: 76 16        	slli	a2, a2, 0x3d
8020058e: 2d 92        	srli	a2, a2, 0x2b
80200590: b2 06        	slli	a3, a3, 0xc
80200592: 1a 07        	slli	a4, a4, 0x6
80200594: d9 8e        	or	a3, a3, a4
80200596: 93 f5 f5 03  	andi	a1, a1, 0x3f
8020059a: d5 8d        	or	a1, a1, a3
8020059c: d1 8d        	or	a1, a1, a2
8020059e: 37 06 11 00  	lui	a2, 0x110
802005a2: 63 81 c5 02  	beq	a1, a2, 0x802005c4 <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x11a>
802005a6: 91 cf        	beqz	a5, 0x802005c2 <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x118>
802005a8: 63 fb 37 01  	bgeu	a5, s3, 0x802005be <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x114>
802005ac: b3 05 f9 00  	add	a1, s2, a5
802005b0: 83 85 05 00  	lb	a1, 0x0(a1)
802005b4: 13 06 00 fc  	li	a2, -0x40
802005b8: 63 d5 c5 00  	bge	a1, a2, 0x802005c2 <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x118>
802005bc: 21 a0        	j	0x802005c4 <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x11a>
802005be: 63 93 37 01  	bne	a5, s3, 0x802005c4 <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x11a>
802005c2: be 89        	mv	s3, a5
802005c4: 63 00 03 06  	beqz	t1, 0x80200624 <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x17a>
802005c8: 04 65        	ld	s1, 0x8(a0)
802005ca: 93 05 00 02  	li	a1, 0x20
802005ce: 63 f0 b9 04  	bgeu	s3, a1, 0x8020060e <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x164>
802005d2: 81 45        	li	a1, 0x0
802005d4: 63 8f 09 00  	beqz	s3, 0x802005f2 <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x148>
802005d8: 33 06 39 01  	add	a2, s2, s3
802005dc: ca 86        	mv	a3, s2
802005de: 03 87 06 00  	lb	a4, 0x0(a3)
802005e2: 13 27 07 fc  	slti	a4, a4, -0x40
802005e6: 13 47 17 00  	xori	a4, a4, 0x1
802005ea: 85 06        	addi	a3, a3, 0x1
802005ec: ba 95        	add	a1, a1, a4
802005ee: e3 98 c6 fe  	bne	a3, a2, 0x802005de <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x134>
802005f2: 63 f9 95 02  	bgeu	a1, s1, 0x80200624 <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x17a>
802005f6: 83 46 85 03  	lbu	a3, 0x38(a0)
802005fa: 01 46        	li	a2, 0x0
802005fc: 05 47        	li	a4, 0x1
802005fe: b3 8a b4 40  	sub	s5, s1, a1
80200602: 63 41 d7 04  	blt	a4, a3, 0x80200644 <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x19a>
80200606: b9 c6        	beqz	a3, 0x80200654 <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x1aa>
80200608: 56 86        	mv	a2, s5
8020060a: 81 4a        	li	s5, 0x0
8020060c: a1 a0        	j	0x80200654 <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x1aa>
8020060e: 2a 8a        	mv	s4, a0
80200610: 4a 85        	mv	a0, s2
80200612: ce 85        	mv	a1, s3
80200614: 97 00 00 00  	auipc	ra, 0x0
80200618: e7 80 80 0c  	jalr	0xc8(ra) <_ZN4core3str5count14do_count_chars17h213f5a534475f6fcE>
8020061c: aa 85        	mv	a1, a0
8020061e: 52 85        	mv	a0, s4
80200620: e3 eb 95 fc  	bltu	a1, s1, 0x802005f6 <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x14c>
80200624: 0c 75        	ld	a1, 0x28(a0)
80200626: 08 71        	ld	a0, 0x20(a0)
80200628: 9c 6d        	ld	a5, 0x18(a1)
8020062a: ca 85        	mv	a1, s2
8020062c: 4e 86        	mv	a2, s3
8020062e: a6 60        	ld	ra, 0x48(sp)
80200630: 06 64        	ld	s0, 0x40(sp)
80200632: e2 74        	ld	s1, 0x38(sp)
80200634: 42 79        	ld	s2, 0x30(sp)
80200636: a2 79        	ld	s3, 0x28(sp)
80200638: 02 7a        	ld	s4, 0x20(sp)
8020063a: e2 6a        	ld	s5, 0x18(sp)
8020063c: 42 6b        	ld	s6, 0x10(sp)
8020063e: a2 6b        	ld	s7, 0x8(sp)
80200640: 61 61        	addi	sp, sp, 0x50
80200642: 82 87        	jr	a5
80200644: 89 45        	li	a1, 0x2
80200646: 63 97 b6 00  	bne	a3, a1, 0x80200654 <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x1aa>
8020064a: 13 d6 1a 00  	srli	a2, s5, 0x1
8020064e: 85 0a        	addi	s5, s5, 0x1
80200650: 93 da 1a 00  	srli	s5, s5, 0x1
80200654: 03 3a 05 02  	ld	s4, 0x20(a0)
80200658: 83 3b 85 02  	ld	s7, 0x28(a0)
8020065c: 03 2b 05 03  	lw	s6, 0x30(a0)
80200660: 93 04 16 00  	addi	s1, a2, 0x1
80200664: fd 14        	addi	s1, s1, -0x1
80200666: 89 c8        	beqz	s1, 0x80200678 <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x1ce>
80200668: 03 b6 0b 02  	ld	a2, 0x20(s7)
8020066c: 52 85        	mv	a0, s4
8020066e: da 85        	mv	a1, s6
80200670: 02 96        	jalr	a2
80200672: 6d d9        	beqz	a0, 0x80200664 <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x1ba>
80200674: 05 45        	li	a0, 0x1
80200676: 2d a8        	j	0x802006b0 <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x206>
80200678: 83 b6 8b 01  	ld	a3, 0x18(s7)
8020067c: 52 85        	mv	a0, s4
8020067e: ca 85        	mv	a1, s2
80200680: 4e 86        	mv	a2, s3
80200682: 82 96        	jalr	a3
80200684: aa 85        	mv	a1, a0
80200686: 05 45        	li	a0, 0x1
80200688: 85 e5        	bnez	a1, 0x802006b0 <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x206>
8020068a: 33 09 50 41  	neg	s2, s5
8020068e: fd 59        	li	s3, -0x1
80200690: fd 54        	li	s1, -0x1
80200692: 33 05 99 00  	add	a0, s2, s1
80200696: 63 0a 35 01  	beq	a0, s3, 0x802006aa <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x200>
8020069a: 03 b6 0b 02  	ld	a2, 0x20(s7)
8020069e: 52 85        	mv	a0, s4
802006a0: da 85        	mv	a1, s6
802006a2: 02 96        	jalr	a2
802006a4: 85 04        	addi	s1, s1, 0x1
802006a6: 75 d5        	beqz	a0, 0x80200692 <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x1e8>
802006a8: 11 a0        	j	0x802006ac <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E+0x202>
802006aa: d6 84        	mv	s1, s5
802006ac: 33 b5 54 01  	sltu	a0, s1, s5
802006b0: a6 60        	ld	ra, 0x48(sp)
802006b2: 06 64        	ld	s0, 0x40(sp)
802006b4: e2 74        	ld	s1, 0x38(sp)
802006b6: 42 79        	ld	s2, 0x30(sp)
802006b8: a2 79        	ld	s3, 0x28(sp)
802006ba: 02 7a        	ld	s4, 0x20(sp)
802006bc: e2 6a        	ld	s5, 0x18(sp)
802006be: 42 6b        	ld	s6, 0x10(sp)
802006c0: a2 6b        	ld	s7, 0x8(sp)
802006c2: 61 61        	addi	sp, sp, 0x50
802006c4: 82 80        	ret

00000000802006c6 <_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h5573f2111dd68248E>:
802006c6: 41 11        	addi	sp, sp, -0x10
802006c8: 06 e4        	sd	ra, 0x8(sp)
802006ca: 22 e0        	sd	s0, 0x0(sp)
802006cc: 00 08        	addi	s0, sp, 0x10
802006ce: 14 75        	ld	a3, 0x28(a0)
802006d0: 08 71        	ld	a0, 0x20(a0)
802006d2: 9c 6e        	ld	a5, 0x18(a3)
802006d4: a2 60        	ld	ra, 0x8(sp)
802006d6: 02 64        	ld	s0, 0x0(sp)
802006d8: 41 01        	addi	sp, sp, 0x10
802006da: 82 87        	jr	a5

00000000802006dc <_ZN4core3str5count14do_count_chars17h213f5a534475f6fcE>:
802006dc: 41 11        	addi	sp, sp, -0x10
802006de: 06 e4        	sd	ra, 0x8(sp)
802006e0: 22 e0        	sd	s0, 0x0(sp)
802006e2: 00 08        	addi	s0, sp, 0x10
802006e4: 2a 86        	mv	a2, a0
802006e6: 93 07 75 00  	addi	a5, a0, 0x7
802006ea: e1 9b        	andi	a5, a5, -0x8
802006ec: b3 86 a7 40  	sub	a3, a5, a0
802006f0: 63 e0 d5 12  	bltu	a1, a3, 0x80200810 <_ZN4core3str5count14do_count_chars17h213f5a534475f6fcE+0x134>
802006f4: 33 87 d5 40  	sub	a4, a1, a3
802006f8: 13 53 37 00  	srli	t1, a4, 0x3
802006fc: 63 0a 03 10  	beqz	t1, 0x80200810 <_ZN4core3str5count14do_count_chars17h213f5a534475f6fcE+0x134>
80200700: b2 96        	add	a3, a3, a2
80200702: 13 78 77 00  	andi	a6, a4, 0x7
80200706: 01 45        	li	a0, 0x0
80200708: 63 8c c7 00  	beq	a5, a2, 0x80200720 <_ZN4core3str5count14do_count_chars17h213f5a534475f6fcE+0x44>
8020070c: 83 05 06 00  	lb	a1, 0x0(a2)
80200710: 93 a5 05 fc  	slti	a1, a1, -0x40
80200714: 93 c5 15 00  	xori	a1, a1, 0x1
80200718: 05 06        	addi	a2, a2, 0x1
8020071a: 2e 95        	add	a0, a0, a1
8020071c: e3 18 d6 fe  	bne	a2, a3, 0x8020070c <_ZN4core3str5count14do_count_chars17h213f5a534475f6fcE+0x30>
80200720: 01 46        	li	a2, 0x0
80200722: 63 01 08 02  	beqz	a6, 0x80200744 <_ZN4core3str5count14do_count_chars17h213f5a534475f6fcE+0x68>
80200726: 61 9b        	andi	a4, a4, -0x8
80200728: b3 05 f7 00  	add	a1, a4, a5
8020072c: 36 97        	add	a4, a4, a3
8020072e: c2 95        	add	a1, a1, a6
80200730: 83 07 07 00  	lb	a5, 0x0(a4)
80200734: 93 a7 07 fc  	slti	a5, a5, -0x40
80200738: 93 c7 17 00  	xori	a5, a5, 0x1
8020073c: 05 07        	addi	a4, a4, 0x1
8020073e: 3e 96        	add	a2, a2, a5
80200740: e3 18 b7 fe  	bne	a4, a1, 0x80200730 <_ZN4core3str5count14do_count_chars17h213f5a534475f6fcE+0x54>
80200744: b7 05 01 01  	lui	a1, 0x1010
80200748: 9b 85 15 10  	addiw	a1, a1, 0x101
8020074c: 13 97 05 02  	slli	a4, a1, 0x20
80200750: b3 8f e5 00  	add	t6, a1, a4
80200754: 37 07 ff 00  	lui	a4, 0xff0
80200758: 9b 08 f7 0f  	addiw	a7, a4, 0xff
8020075c: 13 97 08 02  	slli	a4, a7, 0x20
80200760: ba 98        	add	a7, a7, a4
80200762: 41 67        	lui	a4, 0x10
80200764: 05 27        	addiw	a4, a4, 0x1
80200766: 13 18 07 02  	slli	a6, a4, 0x20
8020076a: 3a 98        	add	a6, a6, a4
8020076c: 32 95        	add	a0, a0, a2
8020076e: 91 42        	li	t0, 0x4
80200770: 15 a0        	j	0x80200794 <_ZN4core3str5count14do_count_chars17h213f5a534475f6fcE+0xb8>
80200772: b3 06 6e 00  	add	a3, t3, t1
80200776: 33 83 7e 40  	sub	t1, t4, t2
8020077a: 93 f5 33 00  	andi	a1, t2, 0x3
8020077e: 33 f6 17 01  	and	a2, a5, a7
80200782: a1 83        	srli	a5, a5, 0x8
80200784: 33 f7 17 01  	and	a4, a5, a7
80200788: 3a 96        	add	a2, a2, a4
8020078a: 33 06 06 03  	mul	a2, a2, a6
8020078e: 41 92        	srli	a2, a2, 0x30
80200790: 32 95        	add	a0, a0, a2
80200792: c5 e1        	bnez	a1, 0x80200832 <_ZN4core3str5count14do_count_chars17h213f5a534475f6fcE+0x156>
80200794: 63 0b 03 08  	beqz	t1, 0x8020082a <_ZN4core3str5count14do_count_chars17h213f5a534475f6fcE+0x14e>
80200798: 9a 8e        	mv	t4, t1
8020079a: 36 8e        	mv	t3, a3
8020079c: 13 06 00 0c  	li	a2, 0xc0
802007a0: 9a 83        	mv	t2, t1
802007a2: 63 64 c3 00  	bltu	t1, a2, 0x802007aa <_ZN4core3str5count14do_count_chars17h213f5a534475f6fcE+0xce>
802007a6: 93 03 00 0c  	li	t2, 0xc0
802007aa: 13 93 33 00  	slli	t1, t2, 0x3
802007ae: 81 47        	li	a5, 0x0
802007b0: e3 e1 5e fc  	bltu	t4, t0, 0x80200772 <_ZN4core3str5count14do_count_chars17h213f5a534475f6fcE+0x96>
802007b4: 13 76 03 7e  	andi	a2, t1, 0x7e0
802007b8: 33 0f ce 00  	add	t5, t3, a2
802007bc: f2 86        	mv	a3, t3
802007be: 98 62        	ld	a4, 0x0(a3)
802007c0: 13 46 f7 ff  	not	a2, a4
802007c4: 1d 82        	srli	a2, a2, 0x7
802007c6: 19 83        	srli	a4, a4, 0x6
802007c8: 8c 66        	ld	a1, 0x8(a3)
802007ca: 59 8e        	or	a2, a2, a4
802007cc: 33 76 f6 01  	and	a2, a2, t6
802007d0: 3e 96        	add	a2, a2, a5
802007d2: 13 c7 f5 ff  	not	a4, a1
802007d6: 1d 83        	srli	a4, a4, 0x7
802007d8: 9c 6a        	ld	a5, 0x10(a3)
802007da: 99 81        	srli	a1, a1, 0x6
802007dc: d9 8d        	or	a1, a1, a4
802007de: b3 f5 f5 01  	and	a1, a1, t6
802007e2: 13 c7 f7 ff  	not	a4, a5
802007e6: 1d 83        	srli	a4, a4, 0x7
802007e8: 99 83        	srli	a5, a5, 0x6
802007ea: 5d 8f        	or	a4, a4, a5
802007ec: 9c 6e        	ld	a5, 0x18(a3)
802007ee: 33 77 f7 01  	and	a4, a4, t6
802007f2: ba 95        	add	a1, a1, a4
802007f4: b2 95        	add	a1, a1, a2
802007f6: 13 c6 f7 ff  	not	a2, a5
802007fa: 1d 82        	srli	a2, a2, 0x7
802007fc: 99 83        	srli	a5, a5, 0x6
802007fe: 5d 8e        	or	a2, a2, a5
80200800: b3 77 f6 01  	and	a5, a2, t6
80200804: 93 86 06 02  	addi	a3, a3, 0x20
80200808: ae 97        	add	a5, a5, a1
8020080a: e3 9a e6 fb  	bne	a3, t5, 0x802007be <_ZN4core3str5count14do_count_chars17h213f5a534475f6fcE+0xe2>
8020080e: 95 b7        	j	0x80200772 <_ZN4core3str5count14do_count_chars17h213f5a534475f6fcE+0x96>
80200810: 01 45        	li	a0, 0x0
80200812: 81 cd        	beqz	a1, 0x8020082a <_ZN4core3str5count14do_count_chars17h213f5a534475f6fcE+0x14e>
80200814: b2 95        	add	a1, a1, a2
80200816: 83 06 06 00  	lb	a3, 0x0(a2)
8020081a: 93 a6 06 fc  	slti	a3, a3, -0x40
8020081e: 93 c6 16 00  	xori	a3, a3, 0x1
80200822: 05 06        	addi	a2, a2, 0x1
80200824: 36 95        	add	a0, a0, a3
80200826: e3 18 b6 fe  	bne	a2, a1, 0x80200816 <_ZN4core3str5count14do_count_chars17h213f5a534475f6fcE+0x13a>
8020082a: a2 60        	ld	ra, 0x8(sp)
8020082c: 02 64        	ld	s0, 0x0(sp)
8020082e: 41 01        	addi	sp, sp, 0x10
80200830: 82 80        	ret
80200832: 01 46        	li	a2, 0x0
80200834: 93 f5 c3 0f  	andi	a1, t2, 0xfc
80200838: 8e 05        	slli	a1, a1, 0x3
8020083a: 2e 9e        	add	t3, t3, a1
8020083c: 93 b5 0e 0c  	sltiu	a1, t4, 0xc0
80200840: bb 05 b0 40  	negw	a1, a1
80200844: b3 f5 be 00  	and	a1, t4, a1
80200848: 8d 89        	andi	a1, a1, 0x3
8020084a: 93 96 35 00  	slli	a3, a1, 0x3
8020084e: 83 35 0e 00  	ld	a1, 0x0(t3)
80200852: 21 0e        	addi	t3, t3, 0x8
80200854: 13 c7 f5 ff  	not	a4, a1
80200858: 1d 83        	srli	a4, a4, 0x7
8020085a: 99 81        	srli	a1, a1, 0x6
8020085c: d9 8d        	or	a1, a1, a4
8020085e: b3 f5 f5 01  	and	a1, a1, t6
80200862: e1 16        	addi	a3, a3, -0x8
80200864: 2e 96        	add	a2, a2, a1
80200866: e5 f6        	bnez	a3, 0x8020084e <_ZN4core3str5count14do_count_chars17h213f5a534475f6fcE+0x172>
80200868: b3 75 16 01  	and	a1, a2, a7
8020086c: 21 82        	srli	a2, a2, 0x8
8020086e: 33 76 16 01  	and	a2, a2, a7
80200872: b2 95        	add	a1, a1, a2
80200874: b3 85 05 03  	mul	a1, a1, a6
80200878: c1 91        	srli	a1, a1, 0x30
8020087a: 2e 95        	add	a0, a0, a1
8020087c: a2 60        	ld	ra, 0x8(sp)
8020087e: 02 64        	ld	s0, 0x0(sp)
80200880: 41 01        	addi	sp, sp, 0x10
80200882: 82 80        	ret

0000000080200884 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h9537dceab56d2f80E>:
80200884: 41 11        	addi	sp, sp, -0x10
80200886: 06 e4        	sd	ra, 0x8(sp)
80200888: 22 e0        	sd	s0, 0x0(sp)
8020088a: 00 08        	addi	s0, sp, 0x10
8020088c: 10 65        	ld	a2, 0x8(a0)
8020088e: 08 61        	ld	a0, 0x0(a0)
80200890: 1c 6e        	ld	a5, 0x18(a2)
80200892: a2 60        	ld	ra, 0x8(sp)
80200894: 02 64        	ld	s0, 0x0(sp)
80200896: 41 01        	addi	sp, sp, 0x10
80200898: 82 87        	jr	a5

000000008020089a <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hefe420aa2149ea35E>:
8020089a: 41 11        	addi	sp, sp, -0x10
8020089c: 06 e4        	sd	ra, 0x8(sp)
8020089e: 22 e0        	sd	s0, 0x0(sp)
802008a0: 00 08        	addi	s0, sp, 0x10
802008a2: 14 61        	ld	a3, 0x0(a0)
802008a4: 10 65        	ld	a2, 0x8(a0)
802008a6: 2e 85        	mv	a0, a1
802008a8: b6 85        	mv	a1, a3
802008aa: a2 60        	ld	ra, 0x8(sp)
802008ac: 02 64        	ld	s0, 0x0(sp)
802008ae: 41 01        	addi	sp, sp, 0x10
802008b0: 17 03 00 00  	auipc	t1, 0x0
802008b4: 67 00 a3 bf  	jr	-0x406(t1) <_ZN4core3fmt9Formatter3pad17heef45ae07d2799a9E>
