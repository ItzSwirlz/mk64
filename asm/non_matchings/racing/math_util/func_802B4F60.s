glabel func_802B4F60
/* 11E570 802B4F60 27BDFF90 */  addiu $sp, $sp, -0x70
/* 11E574 802B4F64 AFBF0014 */  sw    $ra, 0x14($sp)
/* 11E578 802B4F68 AFA40070 */  sw    $a0, 0x70($sp)
/* 11E57C 802B4F6C AFA60078 */  sw    $a2, 0x78($sp)
/* 11E580 802B4F70 AFA7007C */  sw    $a3, 0x7c($sp)
/* 11E584 802B4F74 0C0AD4B6 */  jal   vec3f_copy_return
/* 11E588 802B4F78 27A4001C */   addiu $a0, $sp, 0x1c
/* 11E58C 802B4F7C C7AC001C */  lwc1  $f12, 0x1c($sp)
/* 11E590 802B4F80 C7A4003C */  lwc1  $f4, 0x3c($sp)
/* 11E594 802B4F84 C7AE0020 */  lwc1  $f14, 0x20($sp)
/* 11E598 802B4F88 C7A8004C */  lwc1  $f8, 0x4c($sp)
/* 11E59C 802B4F8C 460C2182 */  mul.s $f6, $f4, $f12
/* 11E5A0 802B4F90 C7A40024 */  lwc1  $f4, 0x24($sp)
/* 11E5A4 802B4F94 C7B2005C */  lwc1  $f18, 0x5c($sp)
/* 11E5A8 802B4F98 460E4282 */  mul.s $f10, $f8, $f14
/* 11E5AC 802B4F9C 27A4001C */  addiu $a0, $sp, 0x1c
/* 11E5B0 802B4FA0 27A50030 */  addiu $a1, $sp, 0x30
/* 11E5B4 802B4FA4 46049202 */  mul.s $f8, $f18, $f4
/* 11E5B8 802B4FA8 460A3400 */  add.s $f16, $f6, $f10
/* 11E5BC 802B4FAC C7AA006C */  lwc1  $f10, 0x6c($sp)
/* 11E5C0 802B4FB0 46088180 */  add.s $f6, $f16, $f8
/* 11E5C4 802B4FB4 46065080 */  add.s $f2, $f10, $f6
/* 11E5C8 802B4FB8 0C0AD90D */  jal   mtxf_translate_vec3f_mat4
/* 11E5CC 802B4FBC E7A2002C */   swc1  $f2, 0x2c($sp)
/* 11E5D0 802B4FC0 C7A2002C */  lwc1  $f2, 0x2c($sp)
/* 11E5D4 802B4FC4 44809000 */  mtc1  $zero, $f18
/* 11E5D8 802B4FC8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 11E5DC 802B4FCC 24020001 */  li    $v0, 1
/* 11E5E0 802B4FD0 4612103E */  c.le.s $f2, $f18
/* 11E5E4 802B4FD4 00000000 */  nop   
/* 11E5E8 802B4FD8 45000003 */  bc1f  .L802B4FE8
/* 11E5EC 802B4FDC 00000000 */   nop   
/* 11E5F0 802B4FE0 10000001 */  b     .L802B4FE8
/* 11E5F4 802B4FE4 00001025 */   move  $v0, $zero
.L802B4FE8:
/* 11E5F8 802B4FE8 03E00008 */  jr    $ra
/* 11E5FC 802B4FEC 27BD0070 */   addiu $sp, $sp, 0x70

