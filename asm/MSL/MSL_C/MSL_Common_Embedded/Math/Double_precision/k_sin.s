.text

.include "macros.inc"

.global __kernel_sin
__kernel_sin:
/* 805261F4 00521734  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805261F8 00521738  3C 00 3E 40 */	lis r0, 0x3e40
/* 805261FC 0052173C  D8 21 00 08 */	stfd f1, 8(r1)
/* 80526200 00521740  80 81 00 08 */	lwz r4, 8(r1)
/* 80526204 00521744  54 84 00 7E */	clrlwi r4, r4, 1
/* 80526208 00521748  7C 04 00 00 */	cmpw r4, r0
/* 8052620C 0052174C  40 80 00 1C */	bge lbl_80526228
/* 80526210 00521750  FC 00 08 1E */	fctiwz f0, f1
/* 80526214 00521754  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80526218 00521758  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052621C 0052175C  2C 00 00 00 */	cmpwi r0, 0
/* 80526220 00521760  40 82 00 08 */	bne lbl_80526228
/* 80526224 00521764  48 00 00 88 */	b lbl_805262AC
lbl_80526228:
/* 80526228 00521768  FC E1 00 72 */	fmul f7, f1, f1
/* 8052622C 0052176C  C8 02 2B E0 */	lfd f0, lbl_806ADE60-_SDA2_BASE_(r2)
/* 80526230 00521770  C8 A2 2B D8 */	lfd f5, lbl_806ADE58-_SDA2_BASE_(r2)
/* 80526234 00521774  2C 03 00 00 */	cmpwi r3, 0
/* 80526238 00521778  C8 82 2B D0 */	lfd f4, lbl_806ADE50-_SDA2_BASE_(r2)
/* 8052623C 0052177C  C8 62 2B C8 */	lfd f3, lbl_806ADE48-_SDA2_BASE_(r2)
/* 80526240 00521780  FC C0 01 F2 */	fmul f6, f0, f7
/* 80526244 00521784  C8 02 2B C0 */	lfd f0, lbl_806ADE40-_SDA2_BASE_(r2)
/* 80526248 00521788  FD 07 00 72 */	fmul f8, f7, f1
/* 8052624C 0052178C  FC A5 30 2A */	fadd f5, f5, f6
/* 80526250 00521790  FC A7 01 72 */	fmul f5, f7, f5
/* 80526254 00521794  FC 84 28 2A */	fadd f4, f4, f5
/* 80526258 00521798  FC 87 01 32 */	fmul f4, f7, f4
/* 8052625C 0052179C  FC 63 20 2A */	fadd f3, f3, f4
/* 80526260 005217A0  FC 67 00 F2 */	fmul f3, f7, f3
/* 80526264 005217A4  FC 00 18 2A */	fadd f0, f0, f3
/* 80526268 005217A8  40 82 00 1C */	bne lbl_80526284
/* 8052626C 005217AC  FC 47 00 32 */	fmul f2, f7, f0
/* 80526270 005217B0  C8 02 2B E8 */	lfd f0, lbl_806ADE68-_SDA2_BASE_(r2)
/* 80526274 005217B4  FC 00 10 2A */	fadd f0, f0, f2
/* 80526278 005217B8  FC 08 00 32 */	fmul f0, f8, f0
/* 8052627C 005217BC  FC 21 00 2A */	fadd f1, f1, f0
/* 80526280 005217C0  48 00 00 2C */	b lbl_805262AC
lbl_80526284:
/* 80526284 005217C4  C8 82 2B F0 */	lfd f4, lbl_806ADE70-_SDA2_BASE_(r2)
/* 80526288 005217C8  FC 68 00 32 */	fmul f3, f8, f0
/* 8052628C 005217CC  C8 02 2B E8 */	lfd f0, lbl_806ADE68-_SDA2_BASE_(r2)
/* 80526290 005217D0  FC 84 00 B2 */	fmul f4, f4, f2
/* 80526294 005217D4  FC 00 02 32 */	fmul f0, f0, f8
/* 80526298 005217D8  FC 64 18 28 */	fsub f3, f4, f3
/* 8052629C 005217DC  FC 67 00 F2 */	fmul f3, f7, f3
/* 805262A0 005217E0  FC 43 10 28 */	fsub f2, f3, f2
/* 805262A4 005217E4  FC 02 00 28 */	fsub f0, f2, f0
/* 805262A8 005217E8  FC 21 00 28 */	fsub f1, f1, f0
lbl_805262AC:
/* 805262AC 005217EC  38 21 00 20 */	addi r1, r1, 0x20
/* 805262B0 005217F0  4E 80 00 20 */	blr 
