.text

.include "macros.inc"

.global TRKDispatchMessage
TRKDispatchMessage:
/* 80527FC0 00523500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80527FC4 00523504  7C 08 02 A6 */	mflr r0
/* 80527FC8 00523508  38 80 00 00 */	li r4, 0
/* 80527FCC 0052350C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80527FD0 00523510  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80527FD4 00523514  3B E0 05 00 */	li r31, 0x500
/* 80527FD8 00523518  93 C1 00 08 */	stw r30, 8(r1)
/* 80527FDC 0052351C  7C 7E 1B 78 */	mr r30, r3
/* 80527FE0 00523520  4B FF FB 6D */	bl TRKSetBufferPosition
/* 80527FE4 00523524  88 1E 00 14 */	lbz r0, 0x14(r30)
/* 80527FE8 00523528  28 00 00 1A */	cmplwi r0, 0x1a
/* 80527FEC 0052352C  41 81 00 F8 */	bgt lbl_805280E4
/* 80527FF0 00523530  3C 60 80 5F */	lis r3, lbl_805F58E0@ha
/* 80527FF4 00523534  54 00 10 3A */	slwi r0, r0, 2
/* 80527FF8 00523538  38 63 58 E0 */	addi r3, r3, lbl_805F58E0@l
/* 80527FFC 0052353C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80528000 00523540  7C 09 03 A6 */	mtctr r0
/* 80528004 00523544  4E 80 04 20 */	bctr 
/* 80528008 00523548  7F C3 F3 78 */	mr r3, r30
/* 8052800C 0052354C  48 00 11 35 */	bl TRKDoConnect
/* 80528010 00523550  7C 7F 1B 78 */	mr r31, r3
/* 80528014 00523554  48 00 00 D0 */	b lbl_805280E4
/* 80528018 00523558  7F C3 F3 78 */	mr r3, r30
/* 8052801C 0052355C  48 00 10 89 */	bl TRKDoDisconnect
/* 80528020 00523560  7C 7F 1B 78 */	mr r31, r3
/* 80528024 00523564  48 00 00 C0 */	b lbl_805280E4
/* 80528028 00523568  7F C3 F3 78 */	mr r3, r30
/* 8052802C 0052356C  48 00 0F FD */	bl TRKDoReset
/* 80528030 00523570  7C 7F 1B 78 */	mr r31, r3
/* 80528034 00523574  48 00 00 B0 */	b lbl_805280E4
/* 80528038 00523578  7F C3 F3 78 */	mr r3, r30
/* 8052803C 0052357C  48 00 0F 71 */	bl TRKDoOverride
/* 80528040 00523580  7C 7F 1B 78 */	mr r31, r3
/* 80528044 00523584  48 00 00 A0 */	b lbl_805280E4
/* 80528048 00523588  7F C3 F3 78 */	mr r3, r30
/* 8052804C 0052358C  48 00 0F 59 */	bl TRKDoVersions
/* 80528050 00523590  7C 7F 1B 78 */	mr r31, r3
/* 80528054 00523594  48 00 00 90 */	b lbl_805280E4
/* 80528058 00523598  7F C3 F3 78 */	mr r3, r30
/* 8052805C 0052359C  48 00 0F 41 */	bl TRKDoSupportMask
/* 80528060 005235A0  7C 7F 1B 78 */	mr r31, r3
/* 80528064 005235A4  48 00 00 80 */	b lbl_805280E4
/* 80528068 005235A8  7F C3 F3 78 */	mr r3, r30
/* 8052806C 005235AC  48 00 0C E9 */	bl TRKDoReadMemory
/* 80528070 005235B0  7C 7F 1B 78 */	mr r31, r3
/* 80528074 005235B4  48 00 00 70 */	b lbl_805280E4
/* 80528078 005235B8  7F C3 F3 78 */	mr r3, r30
/* 8052807C 005235BC  48 00 0A BD */	bl TRKDoWriteMemory
/* 80528080 005235C0  7C 7F 1B 78 */	mr r31, r3
/* 80528084 005235C4  48 00 00 60 */	b lbl_805280E4
/* 80528088 005235C8  7F C3 F3 78 */	mr r3, r30
/* 8052808C 005235CC  48 00 08 89 */	bl TRKDoReadRegisters
/* 80528090 005235D0  7C 7F 1B 78 */	mr r31, r3
/* 80528094 005235D4  48 00 00 50 */	b lbl_805280E4
/* 80528098 005235D8  7F C3 F3 78 */	mr r3, r30
/* 8052809C 005235DC  48 00 05 BD */	bl TRKDoWriteRegisters
/* 805280A0 005235E0  7C 7F 1B 78 */	mr r31, r3
/* 805280A4 005235E4  48 00 00 40 */	b lbl_805280E4
/* 805280A8 005235E8  7F C3 F3 78 */	mr r3, r30
/* 805280AC 005235EC  48 00 04 C9 */	bl TRKDoContinue
/* 805280B0 005235F0  7C 7F 1B 78 */	mr r31, r3
/* 805280B4 005235F4  48 00 00 30 */	b lbl_805280E4
/* 805280B8 005235F8  7F C3 F3 78 */	mr r3, r30
/* 805280BC 005235FC  48 00 01 E5 */	bl TRKDoStep
/* 805280C0 00523600  7C 7F 1B 78 */	mr r31, r3
/* 805280C4 00523604  48 00 00 20 */	b lbl_805280E4
/* 805280C8 00523608  7F C3 F3 78 */	mr r3, r30
/* 805280CC 0052360C  48 00 01 09 */	bl TRKDoStop
/* 805280D0 00523610  7C 7F 1B 78 */	mr r31, r3
/* 805280D4 00523614  48 00 00 10 */	b lbl_805280E4
/* 805280D8 00523618  7F C3 F3 78 */	mr r3, r30
/* 805280DC 0052361C  48 00 00 2D */	bl TRKDoSetOption
/* 805280E0 00523620  7C 7F 1B 78 */	mr r31, r3
lbl_805280E4:
/* 805280E4 00523624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805280E8 00523628  7F E3 FB 78 */	mr r3, r31
/* 805280EC 0052362C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805280F0 00523630  83 C1 00 08 */	lwz r30, 8(r1)
/* 805280F4 00523634  7C 08 03 A6 */	mtlr r0
/* 805280F8 00523638  38 21 00 10 */	addi r1, r1, 0x10
/* 805280FC 0052363C  4E 80 00 20 */	blr 

.global TRKInitializeDispatcher
TRKInitializeDispatcher:
/* 80528100 00523640  38 60 00 00 */	li r3, 0
/* 80528104 00523644  4E 80 00 20 */	blr 