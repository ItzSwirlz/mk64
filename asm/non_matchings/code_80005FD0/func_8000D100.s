.section .late_rodata

glabel D_800ECFF8
.float 250000

.section .text

glabel func_8000D100
/* 00DD00 8000D100 00077400 */  sll   $t6, $a3, 0x10
/* 00DD04 8000D104 000E7C03 */  sra   $t7, $t6, 0x10
/* 00DD08 8000D108 25E4FFFE */  addiu $a0, $t7, -2
/* 00DD0C 8000D10C 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 00DD10 8000D110 3C01800F */  lui   $at, %hi(D_800ECFF8) # $at, 0x800f
/* 00DD14 8000D114 0004CC00 */  sll   $t9, $a0, 0x10
/* 00DD18 8000D118 F7B40008 */  sdc1  $f20, 8($sp)
/* 00DD1C 8000D11C C420CFF8 */  lwc1  $f0, %lo(D_800ECFF8)($at)
/* 00DD20 8000D120 00195403 */  sra   $t2, $t9, 0x10
/* 00DD24 8000D124 00041400 */  sll   $v0, $a0, 0x10
/* 00DD28 8000D128 25E50007 */  addiu $a1, $t7, 7
/* 00DD2C 8000D12C 4486A000 */  mtc1  $a2, $f20
/* 00DD30 8000D130 AFA7001C */  sw    $a3, 0x1c($sp)
/* 00DD34 8000D134 0145082A */  slt   $at, $t2, $a1
/* 00DD38 8000D138 0002C403 */  sra   $t8, $v0, 0x10
/* 00DD3C 8000D13C 01E03825 */  move  $a3, $t7
/* 00DD40 8000D140 E7AE0014 */  swc1  $f14, 0x14($sp)
/* 00DD44 8000D144 2403FFFF */  li    $v1, -1
/* 00DD48 8000D148 10200037 */  beqz  $at, .L8000D228
/* 00DD4C 8000D14C 03001025 */   move  $v0, $t8
/* 00DD50 8000D150 3C068016 */  lui   $a2, %hi(D_8016359C) # $a2, 0x8016
/* 00DD54 8000D154 3C098016 */  lui   $t1, %hi(D_80163598) # $t1, 0x8016
/* 00DD58 8000D158 8D293598 */  lw    $t1, %lo(D_80163598)($t1)
/* 00DD5C 8000D15C 8CC6359C */  lw    $a2, %lo(D_8016359C)($a2)
.L8000D160:
/* 00DD60 8000D160 00022400 */  sll   $a0, $v0, 0x10
/* 00DD64 8000D164 00045C03 */  sra   $t3, $a0, 0x10
/* 00DD68 8000D168 04410005 */  bgez  $v0, .L8000D180
/* 00DD6C 8000D16C 01602025 */   move  $a0, $t3
/* 00DD70 8000D170 00462021 */  addu  $a0, $v0, $a2
/* 00DD74 8000D174 00046400 */  sll   $t4, $a0, 0x10
/* 00DD78 8000D178 000C6C03 */  sra   $t5, $t4, 0x10
/* 00DD7C 8000D17C 01A02025 */  move  $a0, $t5
.L8000D180:
/* 00DD80 8000D180 0086001A */  div   $zero, $a0, $a2
/* 00DD84 8000D184 14C00002 */  bnez  $a2, .L8000D190
/* 00DD88 8000D188 00000000 */   nop   
/* 00DD8C 8000D18C 0007000D */  break 7
.L8000D190:
/* 00DD90 8000D190 2401FFFF */  li    $at, -1
/* 00DD94 8000D194 14C10004 */  bne   $a2, $at, .L8000D1A8
/* 00DD98 8000D198 3C018000 */   lui   $at, 0x8000
/* 00DD9C 8000D19C 14810002 */  bne   $a0, $at, .L8000D1A8
/* 00DDA0 8000D1A0 00000000 */   nop   
/* 00DDA4 8000D1A4 0006000D */  break 6
.L8000D1A8:
/* 00DDA8 8000D1A8 00002010 */  mfhi  $a0
/* 00DDAC 8000D1AC 00047400 */  sll   $t6, $a0, 0x10
/* 00DDB0 8000D1B0 000E7C03 */  sra   $t7, $t6, 0x10
/* 00DDB4 8000D1B4 000FC080 */  sll   $t8, $t7, 2
/* 00DDB8 8000D1B8 03094021 */  addu  $t0, $t8, $t1
/* 00DDBC 8000D1BC 85190000 */  lh    $t9, ($t0)
/* 00DDC0 8000D1C0 850A0002 */  lh    $t2, 2($t0)
/* 00DDC4 8000D1C4 24420001 */  addiu $v0, $v0, 1
/* 00DDC8 8000D1C8 44992000 */  mtc1  $t9, $f4
/* 00DDCC 8000D1CC 448A4000 */  mtc1  $t2, $f8
/* 00DDD0 8000D1D0 00026400 */  sll   $t4, $v0, 0x10
/* 00DDD4 8000D1D4 468021A0 */  cvt.s.w $f6, $f4
/* 00DDD8 8000D1D8 000C6C03 */  sra   $t5, $t4, 0x10
/* 00DDDC 8000D1DC 01A5082A */  slt   $at, $t5, $a1
/* 00DDE0 8000D1E0 01E02025 */  move  $a0, $t7
/* 00DDE4 8000D1E4 468042A0 */  cvt.s.w $f10, $f8
/* 00DDE8 8000D1E8 460C3081 */  sub.s $f2, $f6, $f12
/* 00DDEC 8000D1EC 46145381 */  sub.s $f14, $f10, $f20
/* 00DDF0 8000D1F0 46021482 */  mul.s $f18, $f2, $f2
/* 00DDF4 8000D1F4 00000000 */  nop   
/* 00DDF8 8000D1F8 460E7102 */  mul.s $f4, $f14, $f14
/* 00DDFC 8000D1FC 46049400 */  add.s $f16, $f18, $f4
/* 00DE00 8000D200 4600803C */  c.lt.s $f16, $f0
/* 00DE04 8000D204 00000000 */  nop   
/* 00DE08 8000D208 45000005 */  bc1f  .L8000D220
/* 00DE0C 8000D20C 00000000 */   nop   
/* 00DE10 8000D210 00041C00 */  sll   $v1, $a0, 0x10
/* 00DE14 8000D214 00035C03 */  sra   $t3, $v1, 0x10
/* 00DE18 8000D218 46008006 */  mov.s $f0, $f16
/* 00DE1C 8000D21C 01601825 */  move  $v1, $t3
.L8000D220:
/* 00DE20 8000D220 1420FFCF */  bnez  $at, .L8000D160
/* 00DE24 8000D224 01A01025 */   move  $v0, $t5
.L8000D228:
/* 00DE28 8000D228 2401FFFF */  li    $at, -1
/* 00DE2C 8000D22C 14610004 */  bne   $v1, $at, .L8000D240
/* 00DE30 8000D230 D7B40008 */   ldc1  $f20, 8($sp)
/* 00DE34 8000D234 00071C00 */  sll   $v1, $a3, 0x10
/* 00DE38 8000D238 00037403 */  sra   $t6, $v1, 0x10
/* 00DE3C 8000D23C 01C01825 */  move  $v1, $t6
.L8000D240:
/* 00DE40 8000D240 00601025 */  move  $v0, $v1
/* 00DE44 8000D244 03E00008 */  jr    $ra
/* 00DE48 8000D248 27BD0010 */   addiu $sp, $sp, 0x10
