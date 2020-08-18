.text

.include "macros.inc"

.global __DBMtrHandler
__DBMtrHandler:
/* 8052C7B0 00527CF0  81 8D E5 B8 */	lwz r12, lbl_806A3258-_SDA_BASE_(r13)
/* 8052C7B4 00527CF4  38 00 00 01 */	li r0, 1
/* 8052C7B8 00527CF8  98 0D E5 C0 */	stb r0, lbl_806A3260-_SDA_BASE_(r13)
/* 8052C7BC 00527CFC  2C 0C 00 00 */	cmpwi r12, 0
/* 8052C7C0 00527D00  4D 82 00 20 */	beqlr 
/* 8052C7C4 00527D04  38 60 00 00 */	li r3, 0
/* 8052C7C8 00527D08  7D 89 03 A6 */	mtctr r12
/* 8052C7CC 00527D0C  4E 80 04 20 */	bctr 
/* 8052C7D0 00527D10  4E 80 00 20 */	blr

.global __DBIntrHandler
__DBIntrHandler:
/* 8052C7D4 00527D14  38 00 10 00 */	li r0, 0x1000
/* 8052C7D8 00527D18  3C A0 CC 00 */	lis r5, 0xCC003000@ha
/* 8052C7DC 00527D1C  90 05 30 00 */	stw r0, 0xCC003000@l(r5)
/* 8052C7E0 00527D20  81 8D E5 BC */	lwz r12, lbl_806A325C-_SDA_BASE_(r13)
/* 8052C7E4 00527D24  2C 0C 00 00 */	cmpwi r12, 0
/* 8052C7E8 00527D28  4D 82 00 20 */	beqlr 
/* 8052C7EC 00527D2C  7D 89 03 A6 */	mtctr r12
/* 8052C7F0 00527D30  4E 80 04 20 */	bctr 
/* 8052C7F4 00527D34  4E 80 00 20 */	blr 

.global DBInitComm
DBInitComm:
/* 8052C7F8 00527D38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052C7FC 00527D3C  7C 08 02 A6 */	mflr r0
/* 8052C800 00527D40  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052C804 00527D44  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8052C808 00527D48  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8052C80C 00527D4C  7C 9E 23 78 */	mr r30, r4
/* 8052C810 00527D50  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8052C814 00527D54  7C 7D 1B 78 */	mr r29, r3
/* 8052C818 00527D58  4B F7 B8 D1 */	bl OSDisableInterrupts
/* 8052C81C 00527D5C  38 0D E5 C0 */	addi r0, r13, lbl_806A3260-_SDA_BASE_
/* 8052C820 00527D60  7C 7F 1B 78 */	mr r31, r3
/* 8052C824 00527D64  90 1D 00 00 */	stw r0, 0(r29)
/* 8052C828 00527D68  93 CD E5 B8 */	stw r30, lbl_806A3258-_SDA_BASE_(r13)
/* 8052C82C 00527D6C  48 00 05 A1 */	bl __DBEXIInit
/* 8052C830 00527D70  7F E3 FB 78 */	mr r3, r31
/* 8052C834 00527D74  4B F7 B8 DD */	bl OSRestoreInterrupts
/* 8052C838 00527D78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052C83C 00527D7C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8052C840 00527D80  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8052C844 00527D84  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8052C848 00527D88  7C 08 03 A6 */	mtlr r0
/* 8052C84C 00527D8C  38 21 00 20 */	addi r1, r1, 0x20
/* 8052C850 00527D90  4E 80 00 20 */	blr 

.global DBInitInterrupts
DBInitInterrupts:
/* 8052C854 00527D94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052C858 00527D98  7C 08 02 A6 */	mflr r0
/* 8052C85C 00527D9C  3C 60 00 02 */	lis r3, 0x00018000@ha
/* 8052C860 00527DA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052C864 00527DA4  38 63 80 00 */	addi r3, r3, 0x00018000@l
/* 8052C868 00527DA8  4B F7 BC 11 */	bl __OSMaskInterrupts
/* 8052C86C 00527DAC  38 60 00 40 */	li r3, 0x40
/* 8052C870 00527DB0  4B F7 BC 09 */	bl __OSMaskInterrupts
/* 8052C874 00527DB4  3C 60 80 53 */	lis r3, __DBMtrHandler@ha
/* 8052C878 00527DB8  3C 80 80 53 */	lis r4, __DBIntrHandler@ha
/* 8052C87C 00527DBC  38 63 C7 B0 */	addi r3, r3, __DBMtrHandler@l
/* 8052C880 00527DC0  90 6D E5 BC */	stw r3, lbl_806A325C-_SDA_BASE_(r13)
/* 8052C884 00527DC4  38 84 C7 D4 */	addi r4, r4, __DBIntrHandler@l
/* 8052C888 00527DC8  38 60 00 19 */	li r3, 0x19
/* 8052C88C 00527DCC  4B F7 B8 A9 */	bl func_804A8134
/* 8052C890 00527DD0  38 60 00 40 */	li r3, 0x40
/* 8052C894 00527DD4  4B F7 BC 65 */	bl func_804A84F8
/* 8052C898 00527DD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052C89C 00527DDC  7C 08 03 A6 */	mtlr r0
/* 8052C8A0 00527DE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8052C8A4 00527DE4  4E 80 00 20 */	blr 

.global DBQueryData
DBQueryData:
/* 8052C8A8 00527DE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052C8AC 00527DEC  7C 08 02 A6 */	mflr r0
/* 8052C8B0 00527DF0  38 60 00 00 */	li r3, 0
/* 8052C8B4 00527DF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052C8B8 00527DF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8052C8BC 00527DFC  80 0D E5 C8 */	lwz r0, lbl_806A3268-_SDA_BASE_(r13)
/* 8052C8C0 00527E00  98 6D E5 C0 */	stb r3, lbl_806A3260-_SDA_BASE_(r13)
/* 8052C8C4 00527E04  2C 00 00 00 */	cmpwi r0, 0
/* 8052C8C8 00527E08  40 82 00 6C */	bne lbl_8052C934
/* 8052C8CC 00527E0C  4B F7 B8 1D */	bl OSDisableInterrupts
/* 8052C8D0 00527E10  7C 7F 1B 78 */	mr r31, r3
/* 8052C8D4 00527E14  38 81 00 08 */	addi r4, r1, 8
/* 8052C8D8 00527E18  3C 60 34 00 */	lis r3, 0x3400
/* 8052C8DC 00527E1C  38 A0 00 01 */	li r5, 1
/* 8052C8E0 00527E20  48 00 05 A9 */	bl __DBEXIReadReg
/* 8052C8E4 00527E24  88 01 00 08 */	lbz r0, 8(r1)
/* 8052C8E8 00527E28  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8052C8EC 00527E2C  40 82 00 40 */	bne lbl_8052C92C
/* 8052C8F0 00527E30  3C 60 34 00 */	lis r3, 0x34000200@ha
/* 8052C8F4 00527E34  38 81 00 0C */	addi r4, r1, 0xc
/* 8052C8F8 00527E38  38 63 02 00 */	addi r3, r3, 0x34000200@l
/* 8052C8FC 00527E3C  38 A0 00 04 */	li r5, 4
/* 8052C900 00527E40  48 00 05 89 */	bl __DBEXIReadReg
/* 8052C904 00527E44  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8052C908 00527E48  54 83 00 CE */	rlwinm r3, r4, 0, 3, 7
/* 8052C90C 00527E4C  3C 03 E1 00 */	addis r0, r3, 0xe100
/* 8052C910 00527E50  28 00 00 00 */	cmplwi r0, 0
/* 8052C914 00527E54  40 82 00 18 */	bne lbl_8052C92C
/* 8052C918 00527E58  54 83 04 FE */	clrlwi r3, r4, 0x13
/* 8052C91C 00527E5C  38 00 00 01 */	li r0, 1
/* 8052C920 00527E60  90 8D E5 C4 */	stw r4, lbl_806A3264-_SDA_BASE_(r13)
/* 8052C924 00527E64  90 6D E5 C8 */	stw r3, lbl_806A3268-_SDA_BASE_(r13)
/* 8052C928 00527E68  98 0D E5 C0 */	stb r0, lbl_806A3260-_SDA_BASE_(r13)
lbl_8052C92C:
/* 8052C92C 00527E6C  7F E3 FB 78 */	mr r3, r31
/* 8052C930 00527E70  4B F7 B7 E1 */	bl OSRestoreInterrupts
lbl_8052C934:
/* 8052C934 00527E74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8052C938 00527E78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052C93C 00527E7C  80 6D E5 C8 */	lwz r3, lbl_806A3268-_SDA_BASE_(r13)
/* 8052C940 00527E80  7C 08 03 A6 */	mtlr r0
/* 8052C944 00527E84  38 21 00 20 */	addi r1, r1, 0x20
/* 8052C948 00527E88  4E 80 00 20 */	blr 

.global DBRead
DBRead:
/* 8052C94C 00527E8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052C950 00527E90  7C 08 02 A6 */	mflr r0
/* 8052C954 00527E94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052C958 00527E98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052C95C 00527E9C  7C 9F 23 78 */	mr r31, r4
/* 8052C960 00527EA0  93 C1 00 08 */	stw r30, 8(r1)
/* 8052C964 00527EA4  7C 7E 1B 78 */	mr r30, r3
/* 8052C968 00527EA8  4B F7 B7 81 */	bl OSDisableInterrupts
/* 8052C96C 00527EAC  80 AD E5 C4 */	lwz r5, lbl_806A3264-_SDA_BASE_(r13)
/* 8052C970 00527EB0  38 1F 00 03 */	addi r0, r31, 3
/* 8052C974 00527EB4  7C 7F 1B 78 */	mr r31, r3
/* 8052C978 00527EB8  7F C4 F3 78 */	mr r4, r30
/* 8052C97C 00527EBC  54 A3 87 FE */	rlwinm r3, r5, 0x10, 0x1f, 0x1f
/* 8052C980 00527EC0  54 05 00 3A */	rlwinm r5, r0, 0, 0, 0x1d
/* 8052C984 00527EC4  7C 03 00 D0 */	neg r0, r3
/* 8052C988 00527EC8  54 03 05 28 */	rlwinm r3, r0, 0, 0x14, 0x14
/* 8052C98C 00527ECC  3C 63 00 D1 */	addis r3, r3, 0xd1
/* 8052C990 00527ED0  38 03 10 00 */	addi r0, r3, 0x1000
/* 8052C994 00527ED4  54 03 30 AE */	rlwinm r3, r0, 6, 2, 0x17
/* 8052C998 00527ED8  48 00 07 19 */	bl __DBEXIReadRam
/* 8052C99C 00527EDC  38 00 00 00 */	li r0, 0
/* 8052C9A0 00527EE0  7F E3 FB 78 */	mr r3, r31
/* 8052C9A4 00527EE4  90 0D E5 C8 */	stw r0, lbl_806A3268-_SDA_BASE_(r13)
/* 8052C9A8 00527EE8  98 0D E5 C0 */	stb r0, lbl_806A3260-_SDA_BASE_(r13)
/* 8052C9AC 00527EEC  4B F7 B7 65 */	bl OSRestoreInterrupts
/* 8052C9B0 00527EF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052C9B4 00527EF4  38 60 00 00 */	li r3, 0
/* 8052C9B8 00527EF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8052C9BC 00527EFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052C9C0 00527F00  7C 08 03 A6 */	mtlr r0
/* 8052C9C4 00527F04  38 21 00 10 */	addi r1, r1, 0x10
/* 8052C9C8 00527F08  4E 80 00 20 */	blr 

.global DBWrite
DBWrite:
/* 8052C9CC 00527F0C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8052C9D0 00527F10  7C 08 02 A6 */	mflr r0
/* 8052C9D4 00527F14  90 01 00 34 */	stw r0, 0x34(r1)
/* 8052C9D8 00527F18  39 61 00 30 */	addi r11, r1, 0x30
/* 8052C9DC 00527F1C  4B FE AB 55 */	bl func_80517530
/* 8052C9E0 00527F20  7C 7B 1B 78 */	mr r27, r3
/* 8052C9E4 00527F24  7C 9C 23 78 */	mr r28, r4
/* 8052C9E8 00527F28  4B F7 B7 01 */	bl OSDisableInterrupts
/* 8052C9EC 00527F2C  7C 7F 1B 78 */	mr r31, r3
lbl_8052C9F0:
/* 8052C9F0 00527F30  38 81 00 0A */	addi r4, r1, 0xa
/* 8052C9F4 00527F34  3C 60 34 00 */	lis r3, 0x3400
/* 8052C9F8 00527F38  38 A0 00 01 */	li r5, 1
/* 8052C9FC 00527F3C  48 00 04 8D */	bl __DBEXIReadReg
/* 8052CA00 00527F40  88 01 00 0A */	lbz r0, 0xa(r1)
/* 8052CA04 00527F44  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8052CA08 00527F48  40 82 FF E8 */	bne lbl_8052C9F0
/* 8052CA0C 00527F4C  88 6D 97 F8 */	lbz r3, lbl_8069E498-_SDA_BASE_(r13)
/* 8052CA10 00527F50  38 1C 00 03 */	addi r0, r28, 3
/* 8052CA14 00527F54  54 1D 00 3A */	rlwinm r29, r0, 0, 0, 0x1d
/* 8052CA18 00527F58  38 63 00 01 */	addi r3, r3, 1
/* 8052CA1C 00527F5C  54 60 07 FE */	clrlwi r0, r3, 0x1f
/* 8052CA20 00527F60  98 6D 97 F8 */	stb r3, lbl_8069E498-_SDA_BASE_(r13)
/* 8052CA24 00527F64  7C 00 00 D0 */	neg r0, r0
/* 8052CA28 00527F68  54 03 05 28 */	rlwinm r3, r0, 0, 0x14, 0x14
/* 8052CA2C 00527F6C  3C 03 00 D1 */	addis r0, r3, 0xd1
/* 8052CA30 00527F70  54 00 30 AE */	rlwinm r0, r0, 6, 2, 0x17
/* 8052CA34 00527F74  64 1E 80 00 */	oris r30, r0, 0x8000
lbl_8052CA38:
/* 8052CA38 00527F78  7F C3 F3 78 */	mr r3, r30
/* 8052CA3C 00527F7C  7F 64 DB 78 */	mr r4, r27
/* 8052CA40 00527F80  7F A5 EB 78 */	mr r5, r29
/* 8052CA44 00527F84  48 00 07 4D */	bl __DBEXIWriteRam
/* 8052CA48 00527F88  2C 03 00 00 */	cmpwi r3, 0
/* 8052CA4C 00527F8C  41 82 FF EC */	beq lbl_8052CA38
lbl_8052CA50:
/* 8052CA50 00527F90  38 81 00 09 */	addi r4, r1, 9
/* 8052CA54 00527F94  3C 60 34 00 */	lis r3, 0x3400
/* 8052CA58 00527F98  38 A0 00 01 */	li r5, 1
/* 8052CA5C 00527F9C  48 00 04 2D */	bl __DBEXIReadReg
/* 8052CA60 00527FA0  88 01 00 09 */	lbz r0, 9(r1)
/* 8052CA64 00527FA4  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8052CA68 00527FA8  40 82 FF E8 */	bne lbl_8052CA50
/* 8052CA6C 00527FAC  88 6D 97 F8 */	lbz r3, lbl_8069E498-_SDA_BASE_(r13)
/* 8052CA70 00527FB0  57 80 04 FE */	clrlwi r0, r28, 0x13
/* 8052CA74 00527FB4  64 1D 1F 00 */	oris r29, r0, 0x1f00
/* 8052CA78 00527FB8  3F C0 B4 00 */	lis r30, 0xB4000100@ha
/* 8052CA7C 00527FBC  50 7D 82 1E */	rlwimi r29, r3, 0x10, 8, 0xf
lbl_8052CA80:
/* 8052CA80 00527FC0  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8052CA84 00527FC4  38 7E 01 00 */	addi r3, r30, 0xB4000100@l
/* 8052CA88 00527FC8  38 81 00 0C */	addi r4, r1, 0xc
/* 8052CA8C 00527FCC  38 A0 00 04 */	li r5, 4
/* 8052CA90 00527FD0  48 00 05 1D */	bl __DBEXIWriteReg
/* 8052CA94 00527FD4  2C 03 00 00 */	cmpwi r3, 0
/* 8052CA98 00527FD8  41 82 FF E8 */	beq lbl_8052CA80
lbl_8052CA9C:
/* 8052CA9C 00527FDC  38 81 00 08 */	addi r4, r1, 8
/* 8052CAA0 00527FE0  3C 60 34 00 */	lis r3, 0x3400
/* 8052CAA4 00527FE4  38 A0 00 01 */	li r5, 1
/* 8052CAA8 00527FE8  48 00 03 E1 */	bl __DBEXIReadReg
/* 8052CAAC 00527FEC  88 01 00 08 */	lbz r0, 8(r1)
/* 8052CAB0 00527FF0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8052CAB4 00527FF4  40 82 FF E8 */	bne lbl_8052CA9C
/* 8052CAB8 00527FF8  7F E3 FB 78 */	mr r3, r31
/* 8052CABC 00527FFC  4B F7 B6 55 */	bl OSRestoreInterrupts
/* 8052CAC0 00528000  39 61 00 30 */	addi r11, r1, 0x30
/* 8052CAC4 00528004  38 60 00 00 */	li r3, 0
/* 8052CAC8 00528008  4B FE AA B5 */	bl func_8051757C
/* 8052CACC 0052800C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8052CAD0 00528010  7C 08 03 A6 */	mtlr r0
/* 8052CAD4 00528014  38 21 00 30 */	addi r1, r1, 0x30
/* 8052CAD8 00528018  4E 80 00 20 */	blr 

.global DBOpen
DBOpen:
/* 8052CADC 0052801C  4E 80 00 20 */	blr 

.global DBClose
DBClose:
/* 8052CAE0 00528020  4E 80 00 20 */	blr 
