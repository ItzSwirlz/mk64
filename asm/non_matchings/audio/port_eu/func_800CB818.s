glabel func_800CB818
/* 0CC418 800CB818 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0CC41C 800CB81C AFBF002C */  sw    $ra, 0x2c($sp)
/* 0CC420 800CB820 AFBE0028 */  sw    $fp, 0x28($sp)
/* 0CC424 800CB824 90820000 */  lbu   $v0, ($a0)
/* 0CC428 800CB828 24010081 */  li    $at, 129
/* 0CC42C 800CB82C 03A0F025 */  move  $fp, $sp
/* 0CC430 800CB830 10410014 */  beq   $v0, $at, .L800CB884
/* 0CC434 800CB834 00803825 */   move  $a3, $a0
/* 0CC438 800CB838 24010082 */  li    $at, 130
/* 0CC43C 800CB83C 10410016 */  beq   $v0, $at, .L800CB898
/* 0CC440 800CB840 24010083 */   li    $at, 131
/* 0CC444 800CB844 1041001F */  beq   $v0, $at, .L800CB8C4
/* 0CC448 800CB848 24010088 */   li    $at, 136
/* 0CC44C 800CB84C 10410012 */  beq   $v0, $at, .L800CB898
/* 0CC450 800CB850 240100F0 */   li    $at, 240
/* 0CC454 800CB854 10410033 */  beq   $v0, $at, .L800CB924
/* 0CC458 800CB858 240100F1 */   li    $at, 241
/* 0CC45C 800CB85C 10410035 */  beq   $v0, $at, .L800CB934
/* 0CC460 800CB860 3C03803B */   lui   $v1, %hi(gSequencePlayers+0x148) # 0x803b
/* 0CC464 800CB864 240100F2 */  li    $at, 242
/* 0CC468 800CB868 10410046 */  beq   $v0, $at, .L800CB984
/* 0CC46C 800CB86C 3C03803B */   lui   $v1, %hi(gSequencePlayers+0x148) # $v1, 0x803b
/* 0CC470 800CB870 240100F3 */  li    $at, 243
/* 0CC474 800CB874 5041005C */  beql  $v0, $at, .L800CB9E8
/* 0CC478 800CB878 90E40001 */   lbu   $a0, 1($a3)
/* 0CC47C 800CB87C 1000005E */  b     .L800CB9F8
/* 0CC480 800CB880 8FDF002C */   lw    $ra, 0x2c($fp)
.L800CB884:
/* 0CC484 800CB884 90E40002 */  lbu   $a0, 2($a3)
/* 0CC488 800CB888 0C02EF77 */  jal   func_800BBDDC
/* 0CC48C 800CB88C 24050003 */   li    $a1, 3
/* 0CC490 800CB890 10000059 */  b     .L800CB9F8
/* 0CC494 800CB894 8FDF002C */   lw    $ra, 0x2c($fp)
.L800CB898:
/* 0CC498 800CB898 90E40001 */  lbu   $a0, 1($a3)
/* 0CC49C 800CB89C 90E50002 */  lbu   $a1, 2($a3)
/* 0CC4A0 800CB8A0 90E60003 */  lbu   $a2, 3($a3)
/* 0CC4A4 800CB8A4 0C02EFBC */  jal   func_800BBEF0
/* 0CC4A8 800CB8A8 AFC70030 */   sw    $a3, 0x30($fp)
/* 0CC4AC 800CB8AC 8FC70030 */  lw    $a3, 0x30($fp)
/* 0CC4B0 800CB8B0 90E40001 */  lbu   $a0, 1($a3)
/* 0CC4B4 800CB8B4 0C032E99 */  jal   func_800CBA64
/* 0CC4B8 800CB8B8 8CE50004 */   lw    $a1, 4($a3)
/* 0CC4BC 800CB8BC 1000004E */  b     .L800CB9F8
/* 0CC4C0 800CB8C0 8FDF002C */   lw    $ra, 0x2c($fp)
.L800CB8C4:
/* 0CC4C4 800CB8C4 90E20001 */  lbu   $v0, 1($a3)
/* 0CC4C8 800CB8C8 3C0F803B */  lui   $t7, %hi(gSequencePlayers) # $t7, 0x803b
/* 0CC4CC 800CB8CC 25EF1510 */  addiu $t7, %lo(gSequencePlayers) # addiu $t7, $t7, 0x1510
/* 0CC4D0 800CB8D0 00027080 */  sll   $t6, $v0, 2
/* 0CC4D4 800CB8D4 01C27021 */  addu  $t6, $t6, $v0
/* 0CC4D8 800CB8D8 000E70C0 */  sll   $t6, $t6, 3
/* 0CC4DC 800CB8DC 01C27021 */  addu  $t6, $t6, $v0
/* 0CC4E0 800CB8E0 000E70C0 */  sll   $t6, $t6, 3
/* 0CC4E4 800CB8E4 01CF2021 */  addu  $a0, $t6, $t7
/* 0CC4E8 800CB8E8 8C980000 */  lw    $t8, ($a0)
/* 0CC4EC 800CB8EC 0018CFC2 */  srl   $t9, $t8, 0x1f
/* 0CC4F0 800CB8F0 53200041 */  beql  $t9, $zero, .L800CB9F8
/* 0CC4F4 800CB8F4 8FDF002C */   lw    $ra, 0x2c($fp)
/* 0CC4F8 800CB8F8 8CE50004 */  lw    $a1, 4($a3)
/* 0CC4FC 800CB8FC 14A00005 */  bnez  $a1, .L800CB914
/* 0CC500 800CB900 00000000 */   nop   
/* 0CC504 800CB904 0C02FBCB */  jal   sequence_player_disable
/* 0CC508 800CB908 00000000 */   nop   
/* 0CC50C 800CB90C 1000003A */  b     .L800CB9F8
/* 0CC510 800CB910 8FDF002C */   lw    $ra, 0x2c($fp)
.L800CB914:
/* 0CC514 800CB914 0C032E82 */  jal   seq_player_fade_to_zero_volume
/* 0CC518 800CB918 00402025 */   move  $a0, $v0
/* 0CC51C 800CB91C 10000036 */  b     .L800CB9F8
/* 0CC520 800CB920 8FDF002C */   lw    $ra, 0x2c($fp)
.L800CB924:
/* 0CC524 800CB924 8CE80004 */  lw    $t0, 4($a3)
/* 0CC528 800CB928 3C01803B */  lui   $at, %hi(gAudioLibSoundMode) # $at, 0x803b
/* 0CC52C 800CB92C 10000031 */  b     .L800CB9F4
/* 0CC530 800CB930 A02870B6 */   sb    $t0, %lo(gAudioLibSoundMode)($at)
.L800CB934:
/* 0CC534 800CB934 3C02803B */  lui   $v0, %hi(gSequencePlayers) # $v0, 0x803b
/* 0CC538 800CB938 904B1510 */  lbu   $t3, %lo(gSequencePlayers)($v0)
/* 0CC53C 800CB93C 90681658 */  lbu   $t0, %lo(gSequencePlayers+0x148)($v1)
/* 0CC540 800CB940 3C04803B */  lui   $a0, %hi(gSequencePlayers+0x290) # $a0, 0x803b
/* 0CC544 800CB944 3C05803B */  lui   $a1, %hi(gSequencePlayers+0x3D8) # $a1, 0x803b
/* 0CC548 800CB948 90AA18E8 */  lbu   $t2, %lo(gSequencePlayers+0x3D8)($a1)
/* 0CC54C 800CB94C 908E17A0 */  lbu   $t6, %lo(gSequencePlayers+0x290)($a0)
/* 0CC550 800CB950 3C01803B */  lui   $at, %hi(gSequencePlayers) # $at, 0x803b
/* 0CC554 800CB954 35620024 */  ori   $v0, $t3, 0x24
/* 0CC558 800CB958 A0221510 */  sb    $v0, %lo(gSequencePlayers)($at)
/* 0CC55C 800CB95C 3C01803B */  lui   $at, %hi(gSequencePlayers+0x148) # $at, 0x803b
/* 0CC560 800CB960 35030024 */  ori   $v1, $t0, 0x24
/* 0CC564 800CB964 A0231658 */  sb    $v1, %lo(gSequencePlayers+0x148)($at)
/* 0CC568 800CB968 3C01803B */  lui   $at, %hi(gSequencePlayers+0x290) # $at, 0x803b
/* 0CC56C 800CB96C 35D80024 */  ori   $t8, $t6, 0x24
/* 0CC570 800CB970 A03817A0 */  sb    $t8, %lo(gSequencePlayers+0x290)($at)
/* 0CC574 800CB974 3C01803B */  lui   $at, %hi(gSequencePlayers+0x3D8) # $at, 0x803b
/* 0CC578 800CB978 354C0024 */  ori   $t4, $t2, 0x24
/* 0CC57C 800CB97C 1000001D */  b     .L800CB9F4
/* 0CC580 800CB980 A02C18E8 */   sb    $t4, %lo(gSequencePlayers+0x3D8)($at)
.L800CB984:
/* 0CC584 800CB984 3C02803B */  lui   $v0, %hi(gSequencePlayers) # $v0, 0x803b
/* 0CC588 800CB988 90421510 */  lbu   $v0, %lo(gSequencePlayers)($v0)
/* 0CC58C 800CB98C 90631658 */  lbu   $v1, %lo(gSequencePlayers+0x148)($v1)
/* 0CC590 800CB990 3C04803B */  lui   $a0, %hi(gSequencePlayers+0x290) # $a0, 0x803b
/* 0CC594 800CB994 908417A0 */  lbu   $a0, %lo(gSequencePlayers+0x290)($a0)
/* 0CC598 800CB998 3C05803B */  lui   $a1, %hi(gSequencePlayers+0x3D8) # $a1, 0x803b
/* 0CC59C 800CB99C 304FFFDF */  andi  $t7, $v0, 0xffdf
/* 0CC5A0 800CB9A0 90A518E8 */  lbu   $a1, %lo(gSequencePlayers+0x3D8)($a1)
/* 0CC5A4 800CB9A4 3C01803B */  lui   $at, %hi(gSequencePlayers) # $at, 0x803b
/* 0CC5A8 800CB9A8 35E20004 */  ori   $v0, $t7, 4
/* 0CC5AC 800CB9AC A0221510 */  sb    $v0, %lo(gSequencePlayers)($at)
/* 0CC5B0 800CB9B0 306AFFDF */  andi  $t2, $v1, 0xffdf
/* 0CC5B4 800CB9B4 35430004 */  ori   $v1, $t2, 4
/* 0CC5B8 800CB9B8 3C01803B */  lui   $at, %hi(gSequencePlayers+0x148) # $at, 0x803b
/* 0CC5BC 800CB9BC A0231658 */  sb    $v1, %lo(gSequencePlayers+0x148)($at)
/* 0CC5C0 800CB9C0 308FFFDF */  andi  $t7, $a0, 0xffdf
/* 0CC5C4 800CB9C4 35F90004 */  ori   $t9, $t7, 4
/* 0CC5C8 800CB9C8 3C01803B */  lui   $at, %hi(gSequencePlayers+0x290) # $at, 0x803b
/* 0CC5CC 800CB9CC A03917A0 */  sb    $t9, %lo(gSequencePlayers+0x290)($at)
/* 0CC5D0 800CB9D0 30AAFFDF */  andi  $t2, $a1, 0xffdf
/* 0CC5D4 800CB9D4 354C0004 */  ori   $t4, $t2, 4
/* 0CC5D8 800CB9D8 3C01803B */  lui   $at, %hi(gSequencePlayers+0x3D8) # $at, 0x803b
/* 0CC5DC 800CB9DC 10000005 */  b     .L800CB9F4
/* 0CC5E0 800CB9E0 A02C18E8 */   sb    $t4, %lo(gSequencePlayers+0x3D8)($at)
/* 0CC5E4 800CB9E4 90E40001 */  lbu   $a0, 1($a3)
.L800CB9E8:
/* 0CC5E8 800CB9E8 90E50002 */  lbu   $a1, 2($a3)
/* 0CC5EC 800CB9EC 0C02ECE2 */  jal   func_800BB388
/* 0CC5F0 800CB9F0 90E60003 */   lbu   $a2, 3($a3)
.L800CB9F4:
/* 0CC5F4 800CB9F4 8FDF002C */  lw    $ra, 0x2c($fp)
.L800CB9F8:
/* 0CC5F8 800CB9F8 03C0E825 */  move  $sp, $fp
/* 0CC5FC 800CB9FC 8FDE0028 */  lw    $fp, 0x28($fp)
/* 0CC600 800CBA00 03E00008 */  jr    $ra
/* 0CC604 800CBA04 27BD0030 */   addiu $sp, $sp, 0x30
