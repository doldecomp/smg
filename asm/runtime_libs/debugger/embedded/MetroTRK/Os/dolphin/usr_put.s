.text

.include "macros.inc"

.global usr_put_initialize
usr_put_initialize:
/* 80527F34 00523474  4E 80 00 20 */	blr 

.global usr_puts_serial
usr_puts_serial:
/* 80527F38 00523478  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80527F3C 0052347C  7C 08 02 A6 */	mflr r0
/* 80527F40 00523480  90 01 00 24 */	stw r0, 0x24(r1)
/* 80527F44 00523484  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80527F48 00523488  3B E0 00 00 */	li r31, 0
/* 80527F4C 0052348C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80527F50 00523490  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80527F54 00523494  7C 7D 1B 78 */	mr r29, r3
/* 80527F58 00523498  38 60 00 00 */	li r3, 0
/* 80527F5C 0052349C  48 00 00 30 */	b lbl_80527F8C
lbl_80527F60:
/* 80527F60 005234A0  48 00 12 75 */	bl GetTRKConnected
/* 80527F64 005234A4  9B C1 00 08 */	stb r30, 8(r1)
/* 80527F68 005234A8  7C 7E 1B 78 */	mr r30, r3
/* 80527F6C 005234AC  38 60 00 00 */	li r3, 0
/* 80527F70 005234B0  9B E1 00 09 */	stb r31, 9(r1)
/* 80527F74 005234B4  48 00 12 55 */	bl SetTRKConnected
/* 80527F78 005234B8  38 61 00 08 */	addi r3, r1, 8
/* 80527F7C 005234BC  4B F7 BF 19 */	bl OSReport
/* 80527F80 005234C0  7F C3 F3 78 */	mr r3, r30
/* 80527F84 005234C4  48 00 12 45 */	bl SetTRKConnected
/* 80527F88 005234C8  38 60 00 00 */	li r3, 0
lbl_80527F8C:
/* 80527F8C 005234CC  2C 03 00 00 */	cmpwi r3, 0
/* 80527F90 005234D0  40 82 00 14 */	bne lbl_80527FA4
/* 80527F94 005234D4  88 1D 00 00 */	lbz r0, 0(r29)
/* 80527F98 005234D8  3B BD 00 01 */	addi r29, r29, 1
/* 80527F9C 005234DC  7C 1E 07 75 */	extsb. r30, r0
/* 80527FA0 005234E0  40 82 FF C0 */	bne lbl_80527F60
lbl_80527FA4:
/* 80527FA4 005234E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80527FA8 005234E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80527FAC 005234EC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80527FB0 005234F0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80527FB4 005234F4  7C 08 03 A6 */	mtlr r0
/* 80527FB8 005234F8  38 21 00 20 */	addi r1, r1, 0x20
/* 80527FBC 005234FC  4E 80 00 20 */	blr 
