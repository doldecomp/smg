.text

.include "macros.inc"

.global __copy_longs_aligned
__copy_longs_aligned:
/* 8051A87C 00515DBC  7C 03 00 D0 */	neg r0, r3
/* 8051A880 00515DC0  38 84 FF FF */	addi r4, r4, -1
/* 8051A884 00515DC4  54 06 07 BF */	clrlwi. r6, r0, 0x1e
/* 8051A888 00515DC8  38 63 FF FF */	addi r3, r3, -1
/* 8051A88C 00515DCC  41 82 00 18 */	beq lbl_8051A8A4
/* 8051A890 00515DD0  7C A6 28 50 */	subf r5, r6, r5
lbl_8051A894:
/* 8051A894 00515DD4  8C 04 00 01 */	lbzu r0, 1(r4)
/* 8051A898 00515DD8  34 C6 FF FF */	addic. r6, r6, -1
/* 8051A89C 00515DDC  9C 03 00 01 */	stbu r0, 1(r3)
/* 8051A8A0 00515DE0  40 82 FF F4 */	bne lbl_8051A894
lbl_8051A8A4:
/* 8051A8A4 00515DE4  54 A6 D9 7F */	rlwinm. r6, r5, 0x1b, 5, 0x1f
/* 8051A8A8 00515DE8  38 E4 FF FD */	addi r7, r4, -3
/* 8051A8AC 00515DEC  38 83 FF FD */	addi r4, r3, -3
/* 8051A8B0 00515DF0  41 82 00 4C */	beq lbl_8051A8FC
lbl_8051A8B4:
/* 8051A8B4 00515DF4  80 67 00 04 */	lwz r3, 4(r7)
/* 8051A8B8 00515DF8  34 C6 FF FF */	addic. r6, r6, -1
/* 8051A8BC 00515DFC  80 07 00 08 */	lwz r0, 8(r7)
/* 8051A8C0 00515E00  90 64 00 04 */	stw r3, 4(r4)
/* 8051A8C4 00515E04  80 67 00 0C */	lwz r3, 0xc(r7)
/* 8051A8C8 00515E08  90 04 00 08 */	stw r0, 8(r4)
/* 8051A8CC 00515E0C  80 07 00 10 */	lwz r0, 0x10(r7)
/* 8051A8D0 00515E10  90 64 00 0C */	stw r3, 0xc(r4)
/* 8051A8D4 00515E14  80 67 00 14 */	lwz r3, 0x14(r7)
/* 8051A8D8 00515E18  90 04 00 10 */	stw r0, 0x10(r4)
/* 8051A8DC 00515E1C  80 07 00 18 */	lwz r0, 0x18(r7)
/* 8051A8E0 00515E20  90 64 00 14 */	stw r3, 0x14(r4)
/* 8051A8E4 00515E24  80 67 00 1C */	lwz r3, 0x1c(r7)
/* 8051A8E8 00515E28  90 04 00 18 */	stw r0, 0x18(r4)
/* 8051A8EC 00515E2C  84 07 00 20 */	lwzu r0, 0x20(r7)
/* 8051A8F0 00515E30  90 64 00 1C */	stw r3, 0x1c(r4)
/* 8051A8F4 00515E34  94 04 00 20 */	stwu r0, 0x20(r4)
/* 8051A8F8 00515E38  40 82 FF BC */	bne lbl_8051A8B4
lbl_8051A8FC:
/* 8051A8FC 00515E3C  54 A3 F7 7F */	rlwinm. r3, r5, 0x1e, 0x1d, 0x1f
/* 8051A900 00515E40  41 82 00 14 */	beq lbl_8051A914
lbl_8051A904:
/* 8051A904 00515E44  84 07 00 04 */	lwzu r0, 4(r7)
/* 8051A908 00515E48  34 63 FF FF */	addic. r3, r3, -1
/* 8051A90C 00515E4C  94 04 00 04 */	stwu r0, 4(r4)
/* 8051A910 00515E50  40 82 FF F4 */	bne lbl_8051A904
lbl_8051A914:
/* 8051A914 00515E54  54 A5 07 BF */	clrlwi. r5, r5, 0x1e
/* 8051A918 00515E58  38 C7 00 03 */	addi r6, r7, 3
/* 8051A91C 00515E5C  38 64 00 03 */	addi r3, r4, 3
/* 8051A920 00515E60  4D 82 00 20 */	beqlr 
lbl_8051A924:
/* 8051A924 00515E64  8C 06 00 01 */	lbzu r0, 1(r6)
/* 8051A928 00515E68  34 A5 FF FF */	addic. r5, r5, -1
/* 8051A92C 00515E6C  9C 03 00 01 */	stbu r0, 1(r3)
/* 8051A930 00515E70  40 82 FF F4 */	bne lbl_8051A924
/* 8051A934 00515E74  4E 80 00 20 */	blr 

.global __copy_longs_rev_aligned
__copy_longs_rev_aligned:
/* 8051A938 00515E78  7C E3 2A 14 */	add r7, r3, r5
/* 8051A93C 00515E7C  7C C4 2A 14 */	add r6, r4, r5
/* 8051A940 00515E80  54 E3 07 BF */	clrlwi. r3, r7, 0x1e
/* 8051A944 00515E84  41 82 00 18 */	beq lbl_8051A95C
/* 8051A948 00515E88  7C A3 28 50 */	subf r5, r3, r5
lbl_8051A94C:
/* 8051A94C 00515E8C  8C 06 FF FF */	lbzu r0, -1(r6)
/* 8051A950 00515E90  34 63 FF FF */	addic. r3, r3, -1
/* 8051A954 00515E94  9C 07 FF FF */	stbu r0, -1(r7)
/* 8051A958 00515E98  40 82 FF F4 */	bne lbl_8051A94C
lbl_8051A95C:
/* 8051A95C 00515E9C  54 A4 D9 7F */	rlwinm. r4, r5, 0x1b, 5, 0x1f
/* 8051A960 00515EA0  41 82 00 4C */	beq lbl_8051A9AC
lbl_8051A964:
/* 8051A964 00515EA4  80 66 FF FC */	lwz r3, -4(r6)
/* 8051A968 00515EA8  34 84 FF FF */	addic. r4, r4, -1
/* 8051A96C 00515EAC  80 06 FF F8 */	lwz r0, -8(r6)
/* 8051A970 00515EB0  90 67 FF FC */	stw r3, -4(r7)
/* 8051A974 00515EB4  80 66 FF F4 */	lwz r3, -0xc(r6)
/* 8051A978 00515EB8  90 07 FF F8 */	stw r0, -8(r7)
/* 8051A97C 00515EBC  80 06 FF F0 */	lwz r0, -0x10(r6)
/* 8051A980 00515EC0  90 67 FF F4 */	stw r3, -0xc(r7)
/* 8051A984 00515EC4  80 66 FF EC */	lwz r3, -0x14(r6)
/* 8051A988 00515EC8  90 07 FF F0 */	stw r0, -0x10(r7)
/* 8051A98C 00515ECC  80 06 FF E8 */	lwz r0, -0x18(r6)
/* 8051A990 00515ED0  90 67 FF EC */	stw r3, -0x14(r7)
/* 8051A994 00515ED4  80 66 FF E4 */	lwz r3, -0x1c(r6)
/* 8051A998 00515ED8  90 07 FF E8 */	stw r0, -0x18(r7)
/* 8051A99C 00515EDC  84 06 FF E0 */	lwzu r0, -0x20(r6)
/* 8051A9A0 00515EE0  90 67 FF E4 */	stw r3, -0x1c(r7)
/* 8051A9A4 00515EE4  94 07 FF E0 */	stwu r0, -0x20(r7)
/* 8051A9A8 00515EE8  40 82 FF BC */	bne lbl_8051A964
lbl_8051A9AC:
/* 8051A9AC 00515EEC  54 A3 F7 7F */	rlwinm. r3, r5, 0x1e, 0x1d, 0x1f
/* 8051A9B0 00515EF0  41 82 00 14 */	beq lbl_8051A9C4
lbl_8051A9B4:
/* 8051A9B4 00515EF4  84 06 FF FC */	lwzu r0, -4(r6)
/* 8051A9B8 00515EF8  34 63 FF FF */	addic. r3, r3, -1
/* 8051A9BC 00515EFC  94 07 FF FC */	stwu r0, -4(r7)
/* 8051A9C0 00515F00  40 82 FF F4 */	bne lbl_8051A9B4
lbl_8051A9C4:
/* 8051A9C4 00515F04  54 A5 07 BF */	clrlwi. r5, r5, 0x1e
/* 8051A9C8 00515F08  4D 82 00 20 */	beqlr 
lbl_8051A9CC:
/* 8051A9CC 00515F0C  8C 06 FF FF */	lbzu r0, -1(r6)
/* 8051A9D0 00515F10  34 A5 FF FF */	addic. r5, r5, -1
/* 8051A9D4 00515F14  9C 07 FF FF */	stbu r0, -1(r7)
/* 8051A9D8 00515F18  40 82 FF F4 */	bne lbl_8051A9CC
/* 8051A9DC 00515F1C  4E 80 00 20 */	blr 

.global __copy_longs_unaligned
__copy_longs_unaligned:
/* 8051A9E0 00515F20  7C 03 00 D0 */	neg r0, r3
/* 8051A9E4 00515F24  39 04 FF FF */	addi r8, r4, -1
/* 8051A9E8 00515F28  54 06 07 BF */	clrlwi. r6, r0, 0x1e
/* 8051A9EC 00515F2C  38 63 FF FF */	addi r3, r3, -1
/* 8051A9F0 00515F30  41 82 00 18 */	beq lbl_8051AA08
/* 8051A9F4 00515F34  7C A6 28 50 */	subf r5, r6, r5
lbl_8051A9F8:
/* 8051A9F8 00515F38  8C 08 00 01 */	lbzu r0, 1(r8)
/* 8051A9FC 00515F3C  34 C6 FF FF */	addic. r6, r6, -1
/* 8051AA00 00515F40  9C 03 00 01 */	stbu r0, 1(r3)
/* 8051AA04 00515F44  40 82 FF F4 */	bne lbl_8051A9F8
lbl_8051AA08:
/* 8051AA08 00515F48  38 08 00 01 */	addi r0, r8, 1
/* 8051AA0C 00515F4C  38 C3 FF FD */	addi r6, r3, -3
/* 8051AA10 00515F50  54 09 07 BE */	clrlwi r9, r0, 0x1e
/* 8051AA14 00515F54  54 A7 E8 FE */	srwi r7, r5, 3
/* 8051AA18 00515F58  7D 09 40 50 */	subf r8, r9, r8
/* 8051AA1C 00515F5C  54 0A 1E F8 */	rlwinm r10, r0, 3, 0x1b, 0x1c
/* 8051AA20 00515F60  84 88 00 01 */	lwzu r4, 1(r8)
/* 8051AA24 00515F64  21 6A 00 20 */	subfic r11, r10, 0x20
lbl_8051AA28:
/* 8051AA28 00515F68  80 68 00 04 */	lwz r3, 4(r8)
/* 8051AA2C 00515F6C  7C 84 50 30 */	slw r4, r4, r10
/* 8051AA30 00515F70  34 E7 FF FF */	addic. r7, r7, -1
/* 8051AA34 00515F74  7C 60 5C 30 */	srw r0, r3, r11
/* 8051AA38 00515F78  7C 63 50 30 */	slw r3, r3, r10
/* 8051AA3C 00515F7C  7C 80 03 78 */	or r0, r4, r0
/* 8051AA40 00515F80  90 06 00 04 */	stw r0, 4(r6)
/* 8051AA44 00515F84  84 88 00 08 */	lwzu r4, 8(r8)
/* 8051AA48 00515F88  7C 80 5C 30 */	srw r0, r4, r11
/* 8051AA4C 00515F8C  7C 60 03 78 */	or r0, r3, r0
/* 8051AA50 00515F90  94 06 00 08 */	stwu r0, 8(r6)
/* 8051AA54 00515F94  40 82 FF D4 */	bne lbl_8051AA28
/* 8051AA58 00515F98  54 A0 07 7B */	rlwinm. r0, r5, 0, 0x1d, 0x1d
/* 8051AA5C 00515F9C  41 82 00 18 */	beq lbl_8051AA74
/* 8051AA60 00515FA0  84 08 00 04 */	lwzu r0, 4(r8)
/* 8051AA64 00515FA4  7C 83 50 30 */	slw r3, r4, r10
/* 8051AA68 00515FA8  7C 00 5C 30 */	srw r0, r0, r11
/* 8051AA6C 00515FAC  7C 60 03 78 */	or r0, r3, r0
/* 8051AA70 00515FB0  94 06 00 04 */	stwu r0, 4(r6)
lbl_8051AA74:
/* 8051AA74 00515FB4  54 A5 07 BF */	clrlwi. r5, r5, 0x1e
/* 8051AA78 00515FB8  38 88 00 03 */	addi r4, r8, 3
/* 8051AA7C 00515FBC  38 66 00 03 */	addi r3, r6, 3
/* 8051AA80 00515FC0  4D 82 00 20 */	beqlr 
/* 8051AA84 00515FC4  20 09 00 04 */	subfic r0, r9, 4
/* 8051AA88 00515FC8  7C 80 20 50 */	subf r4, r0, r4
lbl_8051AA8C:
/* 8051AA8C 00515FCC  8C 04 00 01 */	lbzu r0, 1(r4)
/* 8051AA90 00515FD0  34 A5 FF FF */	addic. r5, r5, -1
/* 8051AA94 00515FD4  9C 03 00 01 */	stbu r0, 1(r3)
/* 8051AA98 00515FD8  40 82 FF F4 */	bne lbl_8051AA8C
/* 8051AA9C 00515FDC  4E 80 00 20 */	blr 

.global __copy_longs_rev_unaligned
__copy_longs_rev_unaligned:
/* 8051AAA0 00515FE0  7D 63 2A 14 */	add r11, r3, r5
/* 8051AAA4 00515FE4  7D 44 2A 14 */	add r10, r4, r5
/* 8051AAA8 00515FE8  55 63 07 BF */	clrlwi. r3, r11, 0x1e
/* 8051AAAC 00515FEC  41 82 00 18 */	beq lbl_8051AAC4
/* 8051AAB0 00515FF0  7C A3 28 50 */	subf r5, r3, r5
lbl_8051AAB4:
/* 8051AAB4 00515FF4  8C 0A FF FF */	lbzu r0, -1(r10)
/* 8051AAB8 00515FF8  34 63 FF FF */	addic. r3, r3, -1
/* 8051AABC 00515FFC  9C 0B FF FF */	stbu r0, -1(r11)
/* 8051AAC0 00516000  40 82 FF F4 */	bne lbl_8051AAB4
lbl_8051AAC4:
/* 8051AAC4 00516004  55 48 1E F8 */	rlwinm r8, r10, 3, 0x1b, 0x1c
/* 8051AAC8 00516008  55 47 07 BE */	clrlwi r7, r10, 0x1e
/* 8051AACC 0051600C  21 28 00 20 */	subfic r9, r8, 0x20
/* 8051AAD0 00516010  54 A6 E8 FE */	srwi r6, r5, 3
/* 8051AAD4 00516014  20 07 00 04 */	subfic r0, r7, 4
/* 8051AAD8 00516018  7D 4A 02 14 */	add r10, r10, r0
/* 8051AADC 0051601C  84 8A FF FC */	lwzu r4, -4(r10)
lbl_8051AAE0:
/* 8051AAE0 00516020  80 0A FF FC */	lwz r0, -4(r10)
/* 8051AAE4 00516024  7C 83 4C 30 */	srw r3, r4, r9
/* 8051AAE8 00516028  34 C6 FF FF */	addic. r6, r6, -1
/* 8051AAEC 0051602C  7C 04 40 30 */	slw r4, r0, r8
/* 8051AAF0 00516030  7C 00 4C 30 */	srw r0, r0, r9
/* 8051AAF4 00516034  7C 83 1B 78 */	or r3, r4, r3
/* 8051AAF8 00516038  90 6B FF FC */	stw r3, -4(r11)
/* 8051AAFC 0051603C  84 8A FF F8 */	lwzu r4, -8(r10)
/* 8051AB00 00516040  7C 83 40 30 */	slw r3, r4, r8
/* 8051AB04 00516044  7C 60 03 78 */	or r0, r3, r0
/* 8051AB08 00516048  94 0B FF F8 */	stwu r0, -8(r11)
/* 8051AB0C 0051604C  40 82 FF D4 */	bne lbl_8051AAE0
/* 8051AB10 00516050  54 A0 07 7B */	rlwinm. r0, r5, 0, 0x1d, 0x1d
/* 8051AB14 00516054  41 82 00 18 */	beq lbl_8051AB2C
/* 8051AB18 00516058  84 6A FF FC */	lwzu r3, -4(r10)
/* 8051AB1C 0051605C  7C 80 4C 30 */	srw r0, r4, r9
/* 8051AB20 00516060  7C 63 40 30 */	slw r3, r3, r8
/* 8051AB24 00516064  7C 60 03 78 */	or r0, r3, r0
/* 8051AB28 00516068  94 0B FF FC */	stwu r0, -4(r11)
lbl_8051AB2C:
/* 8051AB2C 0051606C  54 A5 07 BF */	clrlwi. r5, r5, 0x1e
/* 8051AB30 00516070  4D 82 00 20 */	beqlr 
/* 8051AB34 00516074  7D 4A 3A 14 */	add r10, r10, r7
lbl_8051AB38:
/* 8051AB38 00516078  8C 0A FF FF */	lbzu r0, -1(r10)
/* 8051AB3C 0051607C  34 A5 FF FF */	addic. r5, r5, -1
/* 8051AB40 00516080  9C 0B FF FF */	stbu r0, -1(r11)
/* 8051AB44 00516084  40 82 FF F4 */	bne lbl_8051AB38
/* 8051AB48 00516088  4E 80 00 20 */	blr 