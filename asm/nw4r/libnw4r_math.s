.text

.include "macros.inc"

.global func_8000BBA0
func_8000BBA0:
/* 8000BBA0 000070E0  FC 60 0A 10 */	fabs f3, f1
/* 8000BBA4 000070E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000BBA8 000070E8  C0 02 80 40 */	lfs f0, lbl_806A32C0-_SDA2_BASE_(r2)
/* 8000BBAC 000070EC  48 00 00 08 */	b lbl_8000BBB4
lbl_8000BBB0:
/* 8000BBB0 000070F0  EC 63 00 28 */	fsubs f3, f3, f0
lbl_8000BBB4:
/* 8000BBB4 000070F4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8000BBB8 000070F8  4C 41 13 82 */	cror 2, 1, 2
/* 8000BBBC 000070FC  41 82 FF F4 */	beq lbl_8000BBB0
/* 8000BBC0 00007100  F0 61 B0 0C */	psq_st f3, 12(r1), 1, 3
/* 8000BBC4 00007104  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 8000BBC8 00007108  B0 01 00 08 */	sth r0, 8(r1)
/* 8000BBCC 0000710C  E0 41 B0 08 */	psq_l f2, 8(r1), 1, 3
/* 8000BBD0 00007110  3C 80 80 55 */	lis r4, lbl_8054F020@ha
/* 8000BBD4 00007114  54 00 25 36 */	rlwinm r0, r0, 4, 0x14, 0x1b
/* 8000BBD8 00007118  C0 02 80 44 */	lfs f0, lbl_806A32C4-_SDA2_BASE_(r2)
/* 8000BBDC 0000711C  38 84 F0 20 */	addi r4, r4, lbl_8054F020@l
/* 8000BBE0 00007120  EC 83 10 28 */	fsubs f4, f3, f2
/* 8000BBE4 00007124  7C 64 02 14 */	add r3, r4, r0
/* 8000BBE8 00007128  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8000BBEC 0000712C  C0 63 00 08 */	lfs f3, 8(r3)
/* 8000BBF0 00007130  7C 44 04 2E */	lfsx f2, r4, r0
/* 8000BBF4 00007134  EC 04 00 F2 */	fmuls f0, f4, f3
/* 8000BBF8 00007138  EC 22 00 2A */	fadds f1, f2, f0
/* 8000BBFC 0000713C  40 80 00 08 */	bge lbl_8000BC04
/* 8000BC00 00007140  FC 20 08 50 */	fneg f1, f1
lbl_8000BC04:
/* 8000BC04 00007144  38 21 00 10 */	addi r1, r1, 0x10
/* 8000BC08 00007148  4E 80 00 20 */	blr 

.global func_8000BC0C
func_8000BC0C:
/* 8000BC0C 0000714C  FC 20 0A 10 */	fabs f1, f1
/* 8000BC10 00007150  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000BC14 00007154  C0 02 80 40 */	lfs f0, lbl_806A32C0-_SDA2_BASE_(r2)
/* 8000BC18 00007158  48 00 00 08 */	b lbl_8000BC20
lbl_8000BC1C:
/* 8000BC1C 0000715C  EC 21 00 28 */	fsubs f1, f1, f0
lbl_8000BC20:
/* 8000BC20 00007160  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8000BC24 00007164  4C 41 13 82 */	cror 2, 1, 2
/* 8000BC28 00007168  41 82 FF F4 */	beq lbl_8000BC1C
/* 8000BC2C 0000716C  F0 21 B0 0C */	psq_st f1, 12(r1), 1, 3
/* 8000BC30 00007170  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 8000BC34 00007174  B0 01 00 08 */	sth r0, 8(r1)
/* 8000BC38 00007178  E0 01 B0 08 */	psq_l f0, 8(r1), 1, 3
/* 8000BC3C 0000717C  3C 60 80 55 */	lis r3, lbl_8054F020@ha
/* 8000BC40 00007180  54 00 25 36 */	rlwinm r0, r0, 4, 0x14, 0x1b
/* 8000BC44 00007184  38 63 F0 20 */	addi r3, r3, lbl_8054F020@l
/* 8000BC48 00007188  EC 41 00 28 */	fsubs f2, f1, f0
/* 8000BC4C 0000718C  7C 63 02 14 */	add r3, r3, r0
/* 8000BC50 00007190  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8000BC54 00007194  C0 03 00 04 */	lfs f0, 4(r3)
/* 8000BC58 00007198  EC 22 00 72 */	fmuls f1, f2, f1
/* 8000BC5C 0000719C  EC 20 08 2A */	fadds f1, f0, f1
/* 8000BC60 000071A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8000BC64 000071A4  4E 80 00 20 */	blr 

.global func_8000BC68
func_8000BC68:
/* 8000BC68 000071A8  C0 64 00 00 */	lfs f3, 0(r4)
/* 8000BC6C 000071AC  C0 45 00 00 */	lfs f2, 0(r5)
/* 8000BC70 000071B0  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 8000BC74 000071B4  EC E3 00 B2 */	fmuls f7, f3, f2
/* 8000BC78 000071B8  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 8000BC7C 000071BC  EC 81 00 B2 */	fmuls f4, f1, f2
/* 8000BC80 000071C0  C0 64 00 04 */	lfs f3, 4(r4)
/* 8000BC84 000071C4  EC 20 00 B2 */	fmuls f1, f0, f2
/* 8000BC88 000071C8  C0 A5 00 04 */	lfs f5, 4(r5)
/* 8000BC8C 000071CC  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 8000BC90 000071D0  EC C3 01 72 */	fmuls f6, f3, f5
/* 8000BC94 000071D4  C0 44 00 14 */	lfs f2, 0x14(r4)
/* 8000BC98 000071D8  EC 00 01 72 */	fmuls f0, f0, f5
/* 8000BC9C 000071DC  C1 04 00 08 */	lfs f8, 8(r4)
/* 8000BCA0 000071E0  EC 62 01 72 */	fmuls f3, f2, f5
/* 8000BCA4 000071E4  C1 25 00 08 */	lfs f9, 8(r5)
/* 8000BCA8 000071E8  C0 A4 00 18 */	lfs f5, 0x18(r4)
/* 8000BCAC 000071EC  EC C7 30 2A */	fadds f6, f7, f6
/* 8000BCB0 000071F0  C0 44 00 28 */	lfs f2, 0x28(r4)
/* 8000BCB4 000071F4  ED 08 02 72 */	fmuls f8, f8, f9
/* 8000BCB8 000071F8  EC 64 18 2A */	fadds f3, f4, f3
/* 8000BCBC 000071FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8000BCC0 00007200  EC A5 02 72 */	fmuls f5, f5, f9
/* 8000BCC4 00007204  EC 88 30 2A */	fadds f4, f8, f6
/* 8000BCC8 00007208  EC 42 02 72 */	fmuls f2, f2, f9
/* 8000BCCC 0000720C  EC 65 18 2A */	fadds f3, f5, f3
/* 8000BCD0 00007210  EC 01 00 2A */	fadds f0, f1, f0
/* 8000BCD4 00007214  D0 81 00 08 */	stfs f4, 8(r1)
/* 8000BCD8 00007218  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8000BCDC 0000721C  EC 02 00 2A */	fadds f0, f2, f0
/* 8000BCE0 00007220  D0 83 00 00 */	stfs f4, 0(r3)
/* 8000BCE4 00007224  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8000BCE8 00007228  D0 63 00 04 */	stfs f3, 4(r3)
/* 8000BCEC 0000722C  D0 03 00 08 */	stfs f0, 8(r3)
/* 8000BCF0 00007230  38 21 00 20 */	addi r1, r1, 0x20
/* 8000BCF4 00007234  4E 80 00 20 */	blr 
