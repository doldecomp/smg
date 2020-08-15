.text

.include "macros.inc"

.global HandlePositionFileSupportRequest
HandlePositionFileSupportRequest:
/* 805291E4 00524724  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805291E8 00524728  7C 08 02 A6 */	mflr r0
/* 805291EC 0052472C  90 01 00 74 */	stw r0, 0x74(r1)
/* 805291F0 00524730  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 805291F4 00524734  7C BF 2B 78 */	mr r31, r5
/* 805291F8 00524738  38 A0 00 40 */	li r5, 0x40
/* 805291FC 0052473C  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80529200 00524740  7C DE 33 78 */	mr r30, r6
/* 80529204 00524744  93 A1 00 64 */	stw r29, 0x64(r1)
/* 80529208 00524748  7C 9D 23 78 */	mr r29, r4
/* 8052920C 0052474C  38 80 00 00 */	li r4, 0
/* 80529210 00524750  93 81 00 60 */	stw r28, 0x60(r1)
/* 80529214 00524754  7C 7C 1B 78 */	mr r28, r3
/* 80529218 00524758  38 61 00 14 */	addi r3, r1, 0x14
/* 8052921C 0052475C  4B AD B2 51 */	bl TRK_memset
/* 80529220 00524760  38 60 00 D4 */	li r3, 0xd4
/* 80529224 00524764  38 00 00 40 */	li r0, 0x40
/* 80529228 00524768  98 61 00 18 */	stb r3, 0x18(r1)
/* 8052922C 0052476C  38 61 00 0C */	addi r3, r1, 0xc
/* 80529230 00524770  38 81 00 08 */	addi r4, r1, 8
/* 80529234 00524774  90 01 00 14 */	stw r0, 0x14(r1)
/* 80529238 00524778  93 81 00 1C */	stw r28, 0x1c(r1)
/* 8052923C 0052477C  80 1D 00 00 */	lwz r0, 0(r29)
/* 80529240 00524780  90 01 00 20 */	stw r0, 0x20(r1)
/* 80529244 00524784  9B E1 00 24 */	stb r31, 0x24(r1)
/* 80529248 00524788  4B FF EA 05 */	bl TRKGetFreeBuffer
/* 8052924C 0052478C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80529250 00524790  40 82 00 18 */	bne lbl_80529268
/* 80529254 00524794  80 61 00 08 */	lwz r3, 8(r1)
/* 80529258 00524798  38 81 00 14 */	addi r4, r1, 0x14
/* 8052925C 0052479C  38 A0 00 40 */	li r5, 0x40
/* 80529260 005247A0  4B FF E6 59 */	bl TRKAppendBuffer_ui8
/* 80529264 005247A4  7C 7F 1B 78 */	mr r31, r3
lbl_80529268:
/* 80529268 005247A8  2C 1F 00 00 */	cmpwi r31, 0
/* 8052926C 005247AC  40 82 00 5C */	bne lbl_805292C8
/* 80529270 005247B0  38 60 00 00 */	li r3, 0
/* 80529274 005247B4  38 00 FF FF */	li r0, -1
/* 80529278 005247B8  90 7E 00 00 */	stw r3, 0(r30)
/* 8052927C 005247BC  38 81 00 10 */	addi r4, r1, 0x10
/* 80529280 005247C0  38 A0 00 03 */	li r5, 3
/* 80529284 005247C4  38 C0 00 03 */	li r6, 3
/* 80529288 005247C8  90 1D 00 00 */	stw r0, 0(r29)
/* 8052928C 005247CC  38 E0 00 00 */	li r7, 0
/* 80529290 005247D0  80 61 00 08 */	lwz r3, 8(r1)
/* 80529294 005247D4  48 00 02 65 */	bl TRKRequestSend
/* 80529298 005247D8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8052929C 005247DC  40 82 00 24 */	bne lbl_805292C0
/* 805292A0 005247E0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 805292A4 005247E4  4B FF E9 7D */	bl TRKGetBuffer
/* 805292A8 005247E8  28 03 00 00 */	cmplwi r3, 0
/* 805292AC 005247EC  41 82 00 14 */	beq lbl_805292C0
/* 805292B0 005247F0  80 03 00 20 */	lwz r0, 0x20(r3)
/* 805292B4 005247F4  90 1E 00 00 */	stw r0, 0(r30)
/* 805292B8 005247F8  80 03 00 28 */	lwz r0, 0x28(r3)
/* 805292BC 005247FC  90 1D 00 00 */	stw r0, 0(r29)
lbl_805292C0:
/* 805292C0 00524800  80 61 00 10 */	lwz r3, 0x10(r1)
/* 805292C4 00524804  4B FF E8 F9 */	bl TRKReleaseBuffer
lbl_805292C8:
/* 805292C8 00524808  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805292CC 0052480C  4B FF E8 F1 */	bl TRKReleaseBuffer
/* 805292D0 00524810  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805292D4 00524814  7F E3 FB 78 */	mr r3, r31
/* 805292D8 00524818  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 805292DC 0052481C  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 805292E0 00524820  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 805292E4 00524824  83 81 00 60 */	lwz r28, 0x60(r1)
/* 805292E8 00524828  7C 08 03 A6 */	mtlr r0
/* 805292EC 0052482C  38 21 00 70 */	addi r1, r1, 0x70
/* 805292F0 00524830  4E 80 00 20 */	blr 

.global HandleCloseFileSupportRequest
HandleCloseFileSupportRequest:
/* 805292F4 00524834  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805292F8 00524838  7C 08 02 A6 */	mflr r0
/* 805292FC 0052483C  38 A0 00 40 */	li r5, 0x40
/* 80529300 00524840  90 01 00 74 */	stw r0, 0x74(r1)
/* 80529304 00524844  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80529308 00524848  7C 7F 1B 78 */	mr r31, r3
/* 8052930C 0052484C  38 61 00 14 */	addi r3, r1, 0x14
/* 80529310 00524850  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80529314 00524854  93 A1 00 64 */	stw r29, 0x64(r1)
/* 80529318 00524858  7C 9D 23 78 */	mr r29, r4
/* 8052931C 0052485C  38 80 00 00 */	li r4, 0
/* 80529320 00524860  4B AD B1 4D */	bl TRK_memset
/* 80529324 00524864  38 60 00 D3 */	li r3, 0xd3
/* 80529328 00524868  38 00 00 40 */	li r0, 0x40
/* 8052932C 0052486C  98 61 00 18 */	stb r3, 0x18(r1)
/* 80529330 00524870  38 61 00 0C */	addi r3, r1, 0xc
/* 80529334 00524874  38 81 00 08 */	addi r4, r1, 8
/* 80529338 00524878  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052933C 0052487C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80529340 00524880  4B FF E9 0D */	bl TRKGetFreeBuffer
/* 80529344 00524884  7C 7F 1B 79 */	or. r31, r3, r3
/* 80529348 00524888  40 82 00 18 */	bne lbl_80529360
/* 8052934C 0052488C  80 61 00 08 */	lwz r3, 8(r1)
/* 80529350 00524890  38 81 00 14 */	addi r4, r1, 0x14
/* 80529354 00524894  38 A0 00 40 */	li r5, 0x40
/* 80529358 00524898  4B FF E5 61 */	bl TRKAppendBuffer_ui8
/* 8052935C 0052489C  7C 7F 1B 78 */	mr r31, r3
lbl_80529360:
/* 80529360 005248A0  2C 1F 00 00 */	cmpwi r31, 0
/* 80529364 005248A4  40 82 00 50 */	bne lbl_805293B4
/* 80529368 005248A8  38 00 00 00 */	li r0, 0
/* 8052936C 005248AC  38 81 00 10 */	addi r4, r1, 0x10
/* 80529370 005248B0  90 1D 00 00 */	stw r0, 0(r29)
/* 80529374 005248B4  38 A0 00 03 */	li r5, 3
/* 80529378 005248B8  38 C0 00 03 */	li r6, 3
/* 8052937C 005248BC  38 E0 00 00 */	li r7, 0
/* 80529380 005248C0  80 61 00 08 */	lwz r3, 8(r1)
/* 80529384 005248C4  48 00 01 75 */	bl TRKRequestSend
/* 80529388 005248C8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8052938C 005248CC  40 82 00 10 */	bne lbl_8052939C
/* 80529390 005248D0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80529394 005248D4  4B FF E8 8D */	bl TRKGetBuffer
/* 80529398 005248D8  7C 7E 1B 78 */	mr r30, r3
lbl_8052939C:
/* 8052939C 005248DC  2C 1F 00 00 */	cmpwi r31, 0
/* 805293A0 005248E0  40 82 00 0C */	bne lbl_805293AC
/* 805293A4 005248E4  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 805293A8 005248E8  90 1D 00 00 */	stw r0, 0(r29)
lbl_805293AC:
/* 805293AC 005248EC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 805293B0 005248F0  4B FF E8 0D */	bl TRKReleaseBuffer
lbl_805293B4:
/* 805293B4 005248F4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805293B8 005248F8  4B FF E8 05 */	bl TRKReleaseBuffer
/* 805293BC 005248FC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805293C0 00524900  7F E3 FB 78 */	mr r3, r31
/* 805293C4 00524904  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 805293C8 00524908  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 805293CC 0052490C  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 805293D0 00524910  7C 08 03 A6 */	mtlr r0
/* 805293D4 00524914  38 21 00 70 */	addi r1, r1, 0x70
/* 805293D8 00524918  4E 80 00 20 */	blr 

.global HandleOpenFileSupportRequest
HandleOpenFileSupportRequest:
/* 805293DC 0052491C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805293E0 00524920  7C 08 02 A6 */	mflr r0
/* 805293E4 00524924  90 01 00 74 */	stw r0, 0x74(r1)
/* 805293E8 00524928  BF 61 00 5C */	stmw r27, 0x5c(r1)
/* 805293EC 0052492C  7C 7B 1B 78 */	mr r27, r3
/* 805293F0 00524930  7C 9F 23 78 */	mr r31, r4
/* 805293F4 00524934  7C BC 2B 78 */	mr r28, r5
/* 805293F8 00524938  7C DD 33 78 */	mr r29, r6
/* 805293FC 0052493C  38 61 00 14 */	addi r3, r1, 0x14
/* 80529400 00524940  38 80 00 00 */	li r4, 0
/* 80529404 00524944  38 A0 00 40 */	li r5, 0x40
/* 80529408 00524948  4B AD B0 65 */	bl TRK_memset
/* 8052940C 0052494C  38 60 00 00 */	li r3, 0
/* 80529410 00524950  38 00 00 D2 */	li r0, 0xd2
/* 80529414 00524954  90 7C 00 00 */	stw r3, 0(r28)
/* 80529418 00524958  7F 63 DB 78 */	mr r3, r27
/* 8052941C 0052495C  98 01 00 18 */	stb r0, 0x18(r1)
/* 80529420 00524960  48 00 06 19 */	bl TRK_strlen
/* 80529424 00524964  38 03 00 41 */	addi r0, r3, 0x41
/* 80529428 00524968  9B E1 00 1C */	stb r31, 0x1c(r1)
/* 8052942C 0052496C  7F 63 DB 78 */	mr r3, r27
/* 80529430 00524970  90 01 00 14 */	stw r0, 0x14(r1)
/* 80529434 00524974  48 00 06 05 */	bl TRK_strlen
/* 80529438 00524978  38 03 00 01 */	addi r0, r3, 1
/* 8052943C 0052497C  38 61 00 0C */	addi r3, r1, 0xc
/* 80529440 00524980  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80529444 00524984  38 81 00 08 */	addi r4, r1, 8
/* 80529448 00524988  4B FF E8 05 */	bl TRKGetFreeBuffer
/* 8052944C 0052498C  80 61 00 08 */	lwz r3, 8(r1)
/* 80529450 00524990  38 81 00 14 */	addi r4, r1, 0x14
/* 80529454 00524994  38 A0 00 40 */	li r5, 0x40
/* 80529458 00524998  4B FF E4 61 */	bl TRKAppendBuffer_ui8
/* 8052945C 0052499C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80529460 005249A0  40 82 00 24 */	bne lbl_80529484
/* 80529464 005249A4  7F 63 DB 78 */	mr r3, r27
/* 80529468 005249A8  48 00 05 D1 */	bl TRK_strlen
/* 8052946C 005249AC  7C 65 1B 78 */	mr r5, r3
/* 80529470 005249B0  80 61 00 08 */	lwz r3, 8(r1)
/* 80529474 005249B4  7F 64 DB 78 */	mr r4, r27
/* 80529478 005249B8  38 A5 00 01 */	addi r5, r5, 1
/* 8052947C 005249BC  4B FF E4 3D */	bl TRKAppendBuffer_ui8
/* 80529480 005249C0  7C 7F 1B 78 */	mr r31, r3
lbl_80529484:
/* 80529484 005249C4  2C 1F 00 00 */	cmpwi r31, 0
/* 80529488 005249C8  40 82 00 50 */	bne lbl_805294D8
/* 8052948C 005249CC  38 00 00 00 */	li r0, 0
/* 80529490 005249D0  38 81 00 10 */	addi r4, r1, 0x10
/* 80529494 005249D4  90 1D 00 00 */	stw r0, 0(r29)
/* 80529498 005249D8  38 A0 00 07 */	li r5, 7
/* 8052949C 005249DC  38 C0 00 03 */	li r6, 3
/* 805294A0 005249E0  38 E0 00 00 */	li r7, 0
/* 805294A4 005249E4  80 61 00 08 */	lwz r3, 8(r1)
/* 805294A8 005249E8  48 00 00 51 */	bl TRKRequestSend
/* 805294AC 005249EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 805294B0 005249F0  40 82 00 10 */	bne lbl_805294C0
/* 805294B4 005249F4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 805294B8 005249F8  4B FF E7 69 */	bl TRKGetBuffer
/* 805294BC 005249FC  7C 7E 1B 78 */	mr r30, r3
lbl_805294C0:
/* 805294C0 00524A00  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 805294C4 00524A04  90 1D 00 00 */	stw r0, 0(r29)
/* 805294C8 00524A08  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 805294CC 00524A0C  90 1C 00 00 */	stw r0, 0(r28)
/* 805294D0 00524A10  80 61 00 10 */	lwz r3, 0x10(r1)
/* 805294D4 00524A14  4B FF E6 E9 */	bl TRKReleaseBuffer
lbl_805294D8:
/* 805294D8 00524A18  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805294DC 00524A1C  4B FF E6 E1 */	bl TRKReleaseBuffer
/* 805294E0 00524A20  7F E3 FB 78 */	mr r3, r31
/* 805294E4 00524A24  BB 61 00 5C */	lmw r27, 0x5c(r1)
/* 805294E8 00524A28  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805294EC 00524A2C  7C 08 03 A6 */	mtlr r0
/* 805294F0 00524A30  38 21 00 70 */	addi r1, r1, 0x70
/* 805294F4 00524A34  4E 80 00 20 */	blr 

.global TRKRequestSend
TRKRequestSend:
/* 805294F8 00524A38  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805294FC 00524A3C  7C 08 02 A6 */	mflr r0
/* 80529500 00524A40  90 01 00 34 */	stw r0, 0x34(r1)
/* 80529504 00524A44  38 00 FF FF */	li r0, -1
/* 80529508 00524A48  BE C1 00 08 */	stmw r22, 8(r1)
/* 8052950C 00524A4C  7C 97 23 78 */	mr r23, r4
/* 80529510 00524A50  7C 76 1B 78 */	mr r22, r3
/* 80529514 00524A54  7C F8 3B 78 */	mr r24, r7
/* 80529518 00524A58  3B 86 00 01 */	addi r28, r6, 1
/* 8052951C 00524A5C  3B E0 00 00 */	li r31, 0
/* 80529520 00524A60  3B 20 00 01 */	li r25, 1
/* 80529524 00524A64  90 04 00 00 */	stw r0, 0(r4)
/* 80529528 00524A68  48 00 01 0C */	b lbl_80529634
lbl_8052952C:
/* 8052952C 00524A6C  7E C3 B3 78 */	mr r3, r22
/* 80529530 00524A70  4B FF DF F1 */	bl TRKMessageSend
/* 80529534 00524A74  7C 7F 1B 79 */	or. r31, r3, r3
/* 80529538 00524A78  40 82 00 F8 */	bne lbl_80529630
/* 8052953C 00524A7C  2C 18 00 00 */	cmpwi r24, 0
/* 80529540 00524A80  41 82 00 08 */	beq lbl_80529548
/* 80529544 00524A84  3B A0 00 00 */	li r29, 0
lbl_80529548:
/* 80529548 00524A88  4B FF E9 1D */	bl TRKTestForPacket
/* 8052954C 00524A8C  90 77 00 00 */	stw r3, 0(r23)
/* 80529550 00524A90  80 77 00 00 */	lwz r3, 0(r23)
/* 80529554 00524A94  2C 03 FF FF */	cmpwi r3, -1
/* 80529558 00524A98  40 82 00 20 */	bne lbl_80529578
/* 8052955C 00524A9C  2C 18 00 00 */	cmpwi r24, 0
/* 80529560 00524AA0  41 82 FF E8 */	beq lbl_80529548
/* 80529564 00524AA4  3C 80 04 C5 */	lis r4, 0x04C4B3EC@ha
/* 80529568 00524AA8  3B BD 00 01 */	addi r29, r29, 1
/* 8052956C 00524AAC  38 04 B3 EC */	addi r0, r4, 0x04C4B3EC@l
/* 80529570 00524AB0  7C 1D 00 40 */	cmplw r29, r0
/* 80529574 00524AB4  41 80 FF D4 */	blt lbl_80529548
lbl_80529578:
/* 80529578 00524AB8  2C 03 FF FF */	cmpwi r3, -1
/* 8052957C 00524ABC  41 82 00 44 */	beq lbl_805295C0
/* 80529580 00524AC0  3B 20 00 00 */	li r25, 0
/* 80529584 00524AC4  4B FF E6 9D */	bl TRKGetBuffer
/* 80529588 00524AC8  38 80 00 00 */	li r4, 0
/* 8052958C 00524ACC  7C 7E 1B 78 */	mr r30, r3
/* 80529590 00524AD0  4B FF E5 BD */	bl TRKSetBufferPosition
/* 80529594 00524AD4  80 9E 00 08 */	lwz r4, 8(r30)
/* 80529598 00524AD8  38 7E 00 10 */	addi r3, r30, 0x10
/* 8052959C 00524ADC  48 00 2F 09 */	bl OutputData
/* 805295A0 00524AE0  8B 7E 00 14 */	lbz r27, 0x14(r30)
/* 805295A4 00524AE4  28 1B 00 80 */	cmplwi r27, 0x80
/* 805295A8 00524AE8  40 80 00 18 */	bge lbl_805295C0
/* 805295AC 00524AEC  80 77 00 00 */	lwz r3, 0(r23)
/* 805295B0 00524AF0  4B FF E8 05 */	bl TRKProcessInput
/* 805295B4 00524AF4  38 00 FF FF */	li r0, -1
/* 805295B8 00524AF8  90 17 00 00 */	stw r0, 0(r23)
/* 805295BC 00524AFC  4B FF FF 8C */	b lbl_80529548
lbl_805295C0:
/* 805295C0 00524B00  80 77 00 00 */	lwz r3, 0(r23)
/* 805295C4 00524B04  2C 03 FF FF */	cmpwi r3, -1
/* 805295C8 00524B08  41 82 00 68 */	beq lbl_80529630
/* 805295CC 00524B0C  80 1E 00 08 */	lwz r0, 8(r30)
/* 805295D0 00524B10  28 00 00 40 */	cmplwi r0, 0x40
/* 805295D4 00524B14  40 80 00 08 */	bge lbl_805295DC
/* 805295D8 00524B18  3B 20 00 01 */	li r25, 1
lbl_805295DC:
/* 805295DC 00524B1C  2C 1F 00 00 */	cmpwi r31, 0
/* 805295E0 00524B20  40 82 00 10 */	bne lbl_805295F0
/* 805295E4 00524B24  2C 19 00 00 */	cmpwi r25, 0
/* 805295E8 00524B28  40 82 00 08 */	bne lbl_805295F0
/* 805295EC 00524B2C  8B 5E 00 18 */	lbz r26, 0x18(r30)
lbl_805295F0:
/* 805295F0 00524B30  2C 1F 00 00 */	cmpwi r31, 0
/* 805295F4 00524B34  40 82 00 20 */	bne lbl_80529614
/* 805295F8 00524B38  2C 19 00 00 */	cmpwi r25, 0
/* 805295FC 00524B3C  40 82 00 18 */	bne lbl_80529614
/* 80529600 00524B40  2C 1B 00 80 */	cmpwi r27, 0x80
/* 80529604 00524B44  40 82 00 0C */	bne lbl_80529610
/* 80529608 00524B48  2C 1A 00 00 */	cmpwi r26, 0
/* 8052960C 00524B4C  41 82 00 08 */	beq lbl_80529614
lbl_80529610:
/* 80529610 00524B50  3B 20 00 01 */	li r25, 1
lbl_80529614:
/* 80529614 00524B54  2C 1F 00 00 */	cmpwi r31, 0
/* 80529618 00524B58  40 82 00 0C */	bne lbl_80529624
/* 8052961C 00524B5C  2C 19 00 00 */	cmpwi r25, 0
/* 80529620 00524B60  41 82 00 10 */	beq lbl_80529630
lbl_80529624:
/* 80529624 00524B64  4B FF E5 99 */	bl TRKReleaseBuffer
/* 80529628 00524B68  38 00 FF FF */	li r0, -1
/* 8052962C 00524B6C  90 17 00 00 */	stw r0, 0(r23)
lbl_80529630:
/* 80529630 00524B70  3B 9C FF FF */	addi r28, r28, -1
lbl_80529634:
/* 80529634 00524B74  2C 1C 00 00 */	cmpwi r28, 0
/* 80529638 00524B78  41 82 00 18 */	beq lbl_80529650
/* 8052963C 00524B7C  80 17 00 00 */	lwz r0, 0(r23)
/* 80529640 00524B80  2C 00 FF FF */	cmpwi r0, -1
/* 80529644 00524B84  40 82 00 0C */	bne lbl_80529650
/* 80529648 00524B88  2C 1F 00 00 */	cmpwi r31, 0
/* 8052964C 00524B8C  41 82 FE E0 */	beq lbl_8052952C
lbl_80529650:
/* 80529650 00524B90  80 17 00 00 */	lwz r0, 0(r23)
/* 80529654 00524B94  2C 00 FF FF */	cmpwi r0, -1
/* 80529658 00524B98  40 82 00 08 */	bne lbl_80529660
/* 8052965C 00524B9C  3B E0 08 00 */	li r31, 0x800
lbl_80529660:
/* 80529660 00524BA0  7F E3 FB 78 */	mr r3, r31
/* 80529664 00524BA4  BA C1 00 08 */	lmw r22, 8(r1)
/* 80529668 00524BA8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8052966C 00524BAC  7C 08 03 A6 */	mtlr r0
/* 80529670 00524BB0  38 21 00 30 */	addi r1, r1, 0x30
/* 80529674 00524BB4  4E 80 00 20 */	blr 

.global TRKSuppAccessFile
TRKSuppAccessFile:
/* 80529678 00524BB8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8052967C 00524BBC  7C 08 02 A6 */	mflr r0
/* 80529680 00524BC0  90 01 00 94 */	stw r0, 0x94(r1)
/* 80529684 00524BC4  BE 61 00 5C */	stmw r19, 0x5c(r1)
/* 80529688 00524BC8  7C 98 23 79 */	or. r24, r4, r4
/* 8052968C 00524BCC  7C 77 1B 78 */	mr r23, r3
/* 80529690 00524BD0  7C B9 2B 78 */	mr r25, r5
/* 80529694 00524BD4  7C DA 33 78 */	mr r26, r6
/* 80529698 00524BD8  7C FB 3B 78 */	mr r27, r7
/* 8052969C 00524BDC  7D 1C 43 78 */	mr r28, r8
/* 805296A0 00524BE0  41 82 00 10 */	beq lbl_805296B0
/* 805296A4 00524BE4  80 19 00 00 */	lwz r0, 0(r25)
/* 805296A8 00524BE8  28 00 00 00 */	cmplwi r0, 0
/* 805296AC 00524BEC  40 82 00 0C */	bne lbl_805296B8
lbl_805296B0:
/* 805296B0 00524BF0  38 60 00 02 */	li r3, 2
/* 805296B4 00524BF4  48 00 01 D0 */	b lbl_80529884
lbl_805296B8:
/* 805296B8 00524BF8  38 00 00 00 */	li r0, 0
/* 805296BC 00524BFC  3B A0 00 00 */	li r29, 0
/* 805296C0 00524C00  90 1A 00 00 */	stw r0, 0(r26)
/* 805296C4 00524C04  3B C0 00 00 */	li r30, 0
/* 805296C8 00524C08  3A A0 00 00 */	li r21, 0
/* 805296CC 00524C0C  48 00 01 88 */	b lbl_80529854
lbl_805296D0:
/* 805296D0 00524C10  38 61 00 14 */	addi r3, r1, 0x14
/* 805296D4 00524C14  38 80 00 00 */	li r4, 0
/* 805296D8 00524C18  38 A0 00 40 */	li r5, 0x40
/* 805296DC 00524C1C  4B AD AD 91 */	bl TRK_memset
/* 805296E0 00524C20  80 19 00 00 */	lwz r0, 0(r25)
/* 805296E4 00524C24  38 60 08 00 */	li r3, 0x800
/* 805296E8 00524C28  7C 1E 00 50 */	subf r0, r30, r0
/* 805296EC 00524C2C  28 00 08 00 */	cmplwi r0, 0x800
/* 805296F0 00524C30  41 81 00 08 */	bgt lbl_805296F8
/* 805296F4 00524C34  7C 03 03 78 */	mr r3, r0
lbl_805296F8:
/* 805296F8 00524C38  2C 1C 00 00 */	cmpwi r28, 0
/* 805296FC 00524C3C  7C 7F 1B 78 */	mr r31, r3
/* 80529700 00524C40  38 00 00 D0 */	li r0, 0xd0
/* 80529704 00524C44  41 82 00 08 */	beq lbl_8052970C
/* 80529708 00524C48  38 00 00 D1 */	li r0, 0xd1
lbl_8052970C:
/* 8052970C 00524C4C  2C 1C 00 00 */	cmpwi r28, 0
/* 80529710 00524C50  98 01 00 18 */	stb r0, 0x18(r1)
/* 80529714 00524C54  38 00 00 40 */	li r0, 0x40
/* 80529718 00524C58  40 82 00 08 */	bne lbl_80529720
/* 8052971C 00524C5C  38 1F 00 40 */	addi r0, r31, 0x40
lbl_80529720:
/* 80529720 00524C60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80529724 00524C64  38 61 00 0C */	addi r3, r1, 0xc
/* 80529728 00524C68  38 81 00 08 */	addi r4, r1, 8
/* 8052972C 00524C6C  92 E1 00 1C */	stw r23, 0x1c(r1)
/* 80529730 00524C70  B3 E1 00 20 */	sth r31, 0x20(r1)
/* 80529734 00524C74  4B FF E5 19 */	bl TRKGetFreeBuffer
/* 80529738 00524C78  80 61 00 08 */	lwz r3, 8(r1)
/* 8052973C 00524C7C  38 81 00 14 */	addi r4, r1, 0x14
/* 80529740 00524C80  38 A0 00 40 */	li r5, 0x40
/* 80529744 00524C84  4B FF E1 75 */	bl TRKAppendBuffer_ui8
/* 80529748 00524C88  2C 1C 00 00 */	cmpwi r28, 0
/* 8052974C 00524C8C  7C 75 1B 78 */	mr r21, r3
/* 80529750 00524C90  40 82 00 20 */	bne lbl_80529770
/* 80529754 00524C94  2C 15 00 00 */	cmpwi r21, 0
/* 80529758 00524C98  40 82 00 18 */	bne lbl_80529770
/* 8052975C 00524C9C  80 61 00 08 */	lwz r3, 8(r1)
/* 80529760 00524CA0  7F E5 FB 78 */	mr r5, r31
/* 80529764 00524CA4  7C 98 F2 14 */	add r4, r24, r30
/* 80529768 00524CA8  4B FF E1 51 */	bl TRKAppendBuffer_ui8
/* 8052976C 00524CAC  7C 75 1B 78 */	mr r21, r3
lbl_80529770:
/* 80529770 00524CB0  2C 15 00 00 */	cmpwi r21, 0
/* 80529774 00524CB4  40 82 00 D4 */	bne lbl_80529848
/* 80529778 00524CB8  2C 1B 00 00 */	cmpwi r27, 0
/* 8052977C 00524CBC  41 82 00 C0 */	beq lbl_8052983C
/* 80529780 00524CC0  2C 1C 00 00 */	cmpwi r28, 0
/* 80529784 00524CC4  38 00 00 00 */	li r0, 0
/* 80529788 00524CC8  41 82 00 10 */	beq lbl_80529798
/* 8052978C 00524CCC  28 17 00 00 */	cmplwi r23, 0
/* 80529790 00524CD0  40 82 00 08 */	bne lbl_80529798
/* 80529794 00524CD4  38 00 00 01 */	li r0, 1
lbl_80529798:
/* 80529798 00524CD8  2C 1C 00 00 */	cmpwi r28, 0
/* 8052979C 00524CDC  80 61 00 08 */	lwz r3, 8(r1)
/* 805297A0 00524CE0  38 81 00 10 */	addi r4, r1, 0x10
/* 805297A4 00524CE4  38 A0 00 05 */	li r5, 5
/* 805297A8 00524CE8  7C 00 00 34 */	cntlzw r0, r0
/* 805297AC 00524CEC  38 C0 00 03 */	li r6, 3
/* 805297B0 00524CF0  54 07 D9 7E */	srwi r7, r0, 5
/* 805297B4 00524CF4  4B FF FD 45 */	bl TRKRequestSend
/* 805297B8 00524CF8  7C 75 1B 79 */	or. r21, r3, r3
/* 805297BC 00524CFC  40 82 00 10 */	bne lbl_805297CC
/* 805297C0 00524D00  80 61 00 10 */	lwz r3, 0x10(r1)
/* 805297C4 00524D04  4B FF E4 5D */	bl TRKGetBuffer
/* 805297C8 00524D08  7C 76 1B 78 */	mr r22, r3
lbl_805297CC:
/* 805297CC 00524D0C  80 16 00 20 */	lwz r0, 0x20(r22)
/* 805297D0 00524D10  2C 1C 00 00 */	cmpwi r28, 0
/* 805297D4 00524D14  A2 76 00 24 */	lhz r19, 0x24(r22)
/* 805297D8 00524D18  54 14 06 3E */	clrlwi r20, r0, 0x18
/* 805297DC 00524D1C  41 82 00 40 */	beq lbl_8052981C
/* 805297E0 00524D20  2C 15 00 00 */	cmpwi r21, 0
/* 805297E4 00524D24  40 82 00 38 */	bne lbl_8052981C
/* 805297E8 00524D28  7C 13 F8 40 */	cmplw r19, r31
/* 805297EC 00524D2C  41 81 00 30 */	bgt lbl_8052981C
/* 805297F0 00524D30  7E C3 B3 78 */	mr r3, r22
/* 805297F4 00524D34  38 80 00 40 */	li r4, 0x40
/* 805297F8 00524D38  4B FF E3 55 */	bl TRKSetBufferPosition
/* 805297FC 00524D3C  7E C3 B3 78 */	mr r3, r22
/* 80529800 00524D40  7E 65 9B 78 */	mr r5, r19
/* 80529804 00524D44  7C 98 F2 14 */	add r4, r24, r30
/* 80529808 00524D48  4B FF DE 35 */	bl TRKReadBuffer_ui8
/* 8052980C 00524D4C  7C 75 1B 78 */	mr r21, r3
/* 80529810 00524D50  2C 15 03 02 */	cmpwi r21, 0x302
/* 80529814 00524D54  40 82 00 08 */	bne lbl_8052981C
/* 80529818 00524D58  3A A0 00 00 */	li r21, 0
lbl_8052981C:
/* 8052981C 00524D5C  7C 13 F8 40 */	cmplw r19, r31
/* 80529820 00524D60  41 82 00 0C */	beq lbl_8052982C
/* 80529824 00524D64  7E 7F 9B 78 */	mr r31, r19
/* 80529828 00524D68  3B A0 00 01 */	li r29, 1
lbl_8052982C:
/* 8052982C 00524D6C  92 9A 00 00 */	stw r20, 0(r26)
/* 80529830 00524D70  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80529834 00524D74  4B FF E3 89 */	bl TRKReleaseBuffer
/* 80529838 00524D78  48 00 00 10 */	b lbl_80529848
lbl_8052983C:
/* 8052983C 00524D7C  80 61 00 08 */	lwz r3, 8(r1)
/* 80529840 00524D80  4B FF DC E1 */	bl TRKMessageSend
/* 80529844 00524D84  7C 75 1B 78 */	mr r21, r3
lbl_80529848:
/* 80529848 00524D88  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8052984C 00524D8C  4B FF E3 71 */	bl TRKReleaseBuffer
/* 80529850 00524D90  7F DE FA 14 */	add r30, r30, r31
lbl_80529854:
/* 80529854 00524D94  2C 1D 00 00 */	cmpwi r29, 0
/* 80529858 00524D98  40 82 00 24 */	bne lbl_8052987C
/* 8052985C 00524D9C  80 19 00 00 */	lwz r0, 0(r25)
/* 80529860 00524DA0  7C 1E 00 40 */	cmplw r30, r0
/* 80529864 00524DA4  40 80 00 18 */	bge lbl_8052987C
/* 80529868 00524DA8  2C 15 00 00 */	cmpwi r21, 0
/* 8052986C 00524DAC  40 82 00 10 */	bne lbl_8052987C
/* 80529870 00524DB0  80 1A 00 00 */	lwz r0, 0(r26)
/* 80529874 00524DB4  2C 00 00 00 */	cmpwi r0, 0
/* 80529878 00524DB8  41 82 FE 58 */	beq lbl_805296D0
lbl_8052987C:
/* 8052987C 00524DBC  93 D9 00 00 */	stw r30, 0(r25)
/* 80529880 00524DC0  7E A3 AB 78 */	mr r3, r21
lbl_80529884:
/* 80529884 00524DC4  BA 61 00 5C */	lmw r19, 0x5c(r1)
/* 80529888 00524DC8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8052988C 00524DCC  7C 08 03 A6 */	mtlr r0
/* 80529890 00524DD0  38 21 00 90 */	addi r1, r1, 0x90
/* 80529894 00524DD4  4E 80 00 20 */	blr
