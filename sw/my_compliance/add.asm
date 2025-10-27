
add.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	80000137          	lui	x2,0x80000
   4:	00000293          	addi	x5,x0,0
   8:	00000313          	addi	x6,x0,0
   c:	006283b3          	add	x7,x5,x6
  10:	00712023          	sw	x7,0(x2) # 80000000 <results>
  14:	00410113          	addi	x2,x2,4
  18:	00100293          	addi	x5,x0,1
  1c:	00000313          	addi	x6,x0,0
  20:	006283b3          	add	x7,x5,x6
  24:	00712023          	sw	x7,0(x2)
  28:	00410113          	addi	x2,x2,4
  2c:	00000293          	addi	x5,x0,0
  30:	00100313          	addi	x6,x0,1
  34:	006283b3          	add	x7,x5,x6
  38:	00712023          	sw	x7,0(x2)
  3c:	00410113          	addi	x2,x2,4
  40:	00100293          	addi	x5,x0,1
  44:	00100313          	addi	x6,x0,1
  48:	006283b3          	add	x7,x5,x6
  4c:	00712023          	sw	x7,0(x2)
  50:	00410113          	addi	x2,x2,4
  54:	06400293          	addi	x5,x0,100
  58:	0c800313          	addi	x6,x0,200
  5c:	006283b3          	add	x7,x5,x6
  60:	00712023          	sw	x7,0(x2)
  64:	00410113          	addi	x2,x2,4
  68:	4d200293          	addi	x5,x0,1234
  6c:	00001337          	lui	x6,0x1
  70:	62e30313          	addi	x6,x6,1582 # 162e <halt+0xa6e>
  74:	006283b3          	add	x7,x5,x6
  78:	00712023          	sw	x7,0(x2)
  7c:	00410113          	addi	x2,x2,4
  80:	0012d2b7          	lui	x5,0x12d
  84:	68728293          	addi	x5,x5,1671 # 12d687 <halt+0x12cac7>
  88:	000f4337          	lui	x6,0xf4
  8c:	24030313          	addi	x6,x6,576 # f4240 <halt+0xf3680>
  90:	006283b3          	add	x7,x5,x6
  94:	00712023          	sw	x7,0(x2)
  98:	00410113          	addi	x2,x2,4
  9c:	fff00293          	addi	x5,x0,-1
  a0:	00000313          	addi	x6,x0,0
  a4:	006283b3          	add	x7,x5,x6
  a8:	00712023          	sw	x7,0(x2)
  ac:	00410113          	addi	x2,x2,4
  b0:	00000293          	addi	x5,x0,0
  b4:	fff00313          	addi	x6,x0,-1
  b8:	006283b3          	add	x7,x5,x6
  bc:	00712023          	sw	x7,0(x2)
  c0:	00410113          	addi	x2,x2,4
  c4:	fff00293          	addi	x5,x0,-1
  c8:	fff00313          	addi	x6,x0,-1
  cc:	006283b3          	add	x7,x5,x6
  d0:	00712023          	sw	x7,0(x2)
  d4:	00410113          	addi	x2,x2,4
  d8:	00a00293          	addi	x5,x0,10
  dc:	ffb00313          	addi	x6,x0,-5
  e0:	006283b3          	add	x7,x5,x6
  e4:	00712023          	sw	x7,0(x2)
  e8:	00410113          	addi	x2,x2,4
  ec:	ff600293          	addi	x5,x0,-10
  f0:	00500313          	addi	x6,x0,5
  f4:	006283b3          	add	x7,x5,x6
  f8:	00712023          	sw	x7,0(x2)
  fc:	00410113          	addi	x2,x2,4
 100:	ffffd2b7          	lui	x5,0xffffd
 104:	fc728293          	addi	x5,x5,-57 # ffffcfc7 <results+0x7fffcfc7>
 108:	00003337          	lui	x6,0x3
 10c:	03930313          	addi	x6,x6,57 # 3039 <halt+0x2479>
 110:	006283b3          	add	x7,x5,x6
 114:	00712023          	sw	x7,0(x2)
 118:	00410113          	addi	x2,x2,4
 11c:	fff0c2b7          	lui	x5,0xfff0c
 120:	dc028293          	addi	x5,x5,-576 # fff0bdc0 <results+0x7ff0bdc0>
 124:	00100313          	addi	x6,x0,1
 128:	006283b3          	add	x7,x5,x6
 12c:	00712023          	sw	x7,0(x2)
 130:	00410113          	addi	x2,x2,4
 134:	800002b7          	lui	x5,0x80000
 138:	fff28293          	addi	x5,x5,-1 # 7fffffff <halt+0x7ffff43f>
 13c:	00100313          	addi	x6,x0,1
 140:	006283b3          	add	x7,x5,x6
 144:	00712023          	sw	x7,0(x2)
 148:	00410113          	addi	x2,x2,4
 14c:	800002b7          	lui	x5,0x80000
 150:	fff00313          	addi	x6,x0,-1
 154:	006283b3          	add	x7,x5,x6
 158:	00712023          	sw	x7,0(x2)
 15c:	00410113          	addi	x2,x2,4
 160:	800002b7          	lui	x5,0x80000
 164:	80000337          	lui	x6,0x80000
 168:	006283b3          	add	x7,x5,x6
 16c:	00712023          	sw	x7,0(x2)
 170:	00410113          	addi	x2,x2,4
 174:	800002b7          	lui	x5,0x80000
 178:	fff28293          	addi	x5,x5,-1 # 7fffffff <halt+0x7ffff43f>
 17c:	80000337          	lui	x6,0x80000
 180:	fff30313          	addi	x6,x6,-1 # 7fffffff <halt+0x7ffff43f>
 184:	006283b3          	add	x7,x5,x6
 188:	00712023          	sw	x7,0(x2)
 18c:	00410113          	addi	x2,x2,4
 190:	fff00293          	addi	x5,x0,-1
 194:	00100313          	addi	x6,x0,1
 198:	006283b3          	add	x7,x5,x6
 19c:	00712023          	sw	x7,0(x2)
 1a0:	00410113          	addi	x2,x2,4
 1a4:	00100293          	addi	x5,x0,1
 1a8:	fff00313          	addi	x6,x0,-1
 1ac:	006283b3          	add	x7,x5,x6
 1b0:	00712023          	sw	x7,0(x2)
 1b4:	00410113          	addi	x2,x2,4
 1b8:	00000293          	addi	x5,x0,0
 1bc:	80000337          	lui	x6,0x80000
 1c0:	006283b3          	add	x7,x5,x6
 1c4:	00712023          	sw	x7,0(x2)
 1c8:	00410113          	addi	x2,x2,4
 1cc:	555552b7          	lui	x5,0x55555
 1d0:	55528293          	addi	x5,x5,1365 # 55555555 <halt+0x55554995>
 1d4:	aaaab337          	lui	x6,0xaaaab
 1d8:	aaa30313          	addi	x6,x6,-1366 # aaaaaaaa <results+0x2aaaaaaa>
 1dc:	006283b3          	add	x7,x5,x6
 1e0:	00712023          	sw	x7,0(x2)
 1e4:	00410113          	addi	x2,x2,4
 1e8:	111112b7          	lui	x5,0x11111
 1ec:	11128293          	addi	x5,x5,273 # 11111111 <halt+0x11110551>
 1f0:	22222337          	lui	x6,0x22222
 1f4:	22230313          	addi	x6,x6,546 # 22222222 <halt+0x22221662>
 1f8:	006283b3          	add	x7,x5,x6
 1fc:	00712023          	sw	x7,0(x2)
 200:	00410113          	addi	x2,x2,4
 204:	123452b7          	lui	x5,0x12345
 208:	67828293          	addi	x5,x5,1656 # 12345678 <halt+0x12344ab8>
 20c:	87654337          	lui	x6,0x87654
 210:	32130313          	addi	x6,x6,801 # 87654321 <results+0x7654321>
 214:	006283b3          	add	x7,x5,x6
 218:	00712023          	sw	x7,0(x2)
 21c:	00410113          	addi	x2,x2,4
 220:	0f0f12b7          	lui	x5,0xf0f1
 224:	f0f28293          	addi	x5,x5,-241 # f0f0f0f <halt+0xf0f034f>
 228:	f0f0f337          	lui	x6,0xf0f0f
 22c:	0f030313          	addi	x6,x6,240 # f0f0f0f0 <results+0x70f0f0f0>
 230:	006283b3          	add	x7,x5,x6
 234:	00712023          	sw	x7,0(x2)
 238:	00410113          	addi	x2,x2,4
 23c:	123452b7          	lui	x5,0x12345
 240:	67828293          	addi	x5,x5,1656 # 12345678 <halt+0x12344ab8>
 244:	00010337          	lui	x6,0x10
 248:	fff30313          	addi	x6,x6,-1 # ffff <halt+0xf43f>
 24c:	006283b3          	add	x7,x5,x6
 250:	00712023          	sw	x7,0(x2)
 254:	00410113          	addi	x2,x2,4
 258:	ffff02b7          	lui	x5,0xffff0
 25c:	00010337          	lui	x6,0x10
 260:	fff30313          	addi	x6,x6,-1 # ffff <halt+0xf43f>
 264:	006283b3          	add	x7,x5,x6
 268:	00712023          	sw	x7,0(x2)
 26c:	00410113          	addi	x2,x2,4
 270:	aaaa02b7          	lui	x5,0xaaaa0
 274:	0000b337          	lui	x6,0xb
 278:	aaa30313          	addi	x6,x6,-1366 # aaaa <halt+0x9eea>
 27c:	006283b3          	add	x7,x5,x6
 280:	00712023          	sw	x7,0(x2)
 284:	00410113          	addi	x2,x2,4
 288:	cdcdd2b7          	lui	x5,0xcdcdd
 28c:	dcd28293          	addi	x5,x5,-563 # cdcdcdcd <results+0x4dcdcdcd>
 290:	32323337          	lui	x6,0x32323
 294:	23230313          	addi	x6,x6,562 # 32323232 <halt+0x32322672>
 298:	006283b3          	add	x7,x5,x6
 29c:	00712023          	sw	x7,0(x2)
 2a0:	00410113          	addi	x2,x2,4
 2a4:	010102b7          	lui	x5,0x1010
 2a8:	10128293          	addi	x5,x5,257 # 1010101 <halt+0x100f541>
 2ac:	feff0337          	lui	x6,0xfeff0
 2b0:	efe30313          	addi	x6,x6,-258 # fefefefe <results+0x7efefefe>
 2b4:	006283b3          	add	x7,x5,x6
 2b8:	00712023          	sw	x7,0(x2)
 2bc:	00410113          	addi	x2,x2,4
 2c0:	123452b7          	lui	x5,0x12345
 2c4:	67828293          	addi	x5,x5,1656 # 12345678 <halt+0x12344ab8>
 2c8:	9abce337          	lui	x6,0x9abce
 2cc:	ef030313          	addi	x6,x6,-272 # 9abcdef0 <results+0x1abcdef0>
 2d0:	006283b3          	add	x7,x5,x6
 2d4:	00712023          	sw	x7,0(x2)
 2d8:	00410113          	addi	x2,x2,4
 2dc:	fedcc2b7          	lui	x5,0xfedcc
 2e0:	a9828293          	addi	x5,x5,-1384 # fedcba98 <results+0x7edcba98>
 2e4:	01234337          	lui	x6,0x1234
 2e8:	56730313          	addi	x6,x6,1383 # 1234567 <halt+0x12339a7>
 2ec:	006283b3          	add	x7,x5,x6
 2f0:	00712023          	sw	x7,0(x2)
 2f4:	00410113          	addi	x2,x2,4
 2f8:	f0000293          	addi	x5,x0,-256
 2fc:	0ff00313          	addi	x6,x0,255
 300:	006283b3          	add	x7,x5,x6
 304:	00712023          	sw	x7,0(x2)
 308:	00410113          	addi	x2,x2,4
 30c:	102032b7          	lui	x5,0x10203
 310:	04028293          	addi	x5,x5,64 # 10203040 <halt+0x10202480>
 314:	50607337          	lui	x6,0x50607
 318:	08030313          	addi	x6,x6,128 # 50607080 <halt+0x506064c0>
 31c:	006283b3          	add	x7,x5,x6
 320:	00712023          	sw	x7,0(x2)
 324:	00410113          	addi	x2,x2,4
 328:	9a9aa2b7          	lui	x5,0x9a9aa
 32c:	a9a28293          	addi	x5,x5,-1382 # 9a9a9a9a <results+0x1a9a9a9a>
 330:	65656337          	lui	x6,0x65656
 334:	56530313          	addi	x6,x6,1381 # 65656565 <halt+0x656559a5>
 338:	006283b3          	add	x7,x5,x6
 33c:	00712023          	sw	x7,0(x2)
 340:	00410113          	addi	x2,x2,4
 344:	1a2b42b7          	lui	x5,0x1a2b4
 348:	c4d28293          	addi	x5,x5,-947 # 1a2b3c4d <halt+0x1a2b308d>
 34c:	e5d4c337          	lui	x6,0xe5d4c
 350:	3b230313          	addi	x6,x6,946 # e5d4c3b2 <results+0x65d4c3b2>
 354:	006283b3          	add	x7,x5,x6
 358:	00712023          	sw	x7,0(x2)
 35c:	00410113          	addi	x2,x2,4
 360:	00000293          	addi	x5,x0,0
 364:	fff00313          	addi	x6,x0,-1
 368:	006283b3          	add	x7,x5,x6
 36c:	00712023          	sw	x7,0(x2)
 370:	00410113          	addi	x2,x2,4
 374:	c0fff2b7          	lui	x5,0xc0fff
 378:	e0028293          	addi	x5,x5,-512 # c0ffee00 <results+0x40ffee00>
 37c:	badf0337          	lui	x6,0xbadf0
 380:	0d130313          	addi	x6,x6,209 # badf00d1 <results+0x3adf00d1>
 384:	006283b3          	add	x7,x5,x6
 388:	00712023          	sw	x7,0(x2)
 38c:	00410113          	addi	x2,x2,4
 390:	deadc2b7          	lui	x5,0xdeadc
 394:	0de28293          	addi	x5,x5,222 # deadc0de <results+0x5eadc0de>
 398:	12345337          	lui	x6,0x12345
 39c:	67830313          	addi	x6,x6,1656 # 12345678 <halt+0x12344ab8>
 3a0:	006283b3          	add	x7,x5,x6
 3a4:	00712023          	sw	x7,0(x2)
 3a8:	00410113          	addi	x2,x2,4
 3ac:	aaaab2b7          	lui	x5,0xaaaab
 3b0:	aaa28293          	addi	x5,x5,-1366 # aaaaaaaa <results+0x2aaaaaaa>
 3b4:	55555337          	lui	x6,0x55555
 3b8:	55630313          	addi	x6,x6,1366 # 55555556 <halt+0x55554996>
 3bc:	006283b3          	add	x7,x5,x6
 3c0:	00712023          	sw	x7,0(x2)
 3c4:	00410113          	addi	x2,x2,4
 3c8:	800002b7          	lui	x5,0x80000
 3cc:	00128293          	addi	x5,x5,1 # 80000001 <results+0x1>
 3d0:	80000337          	lui	x6,0x80000
 3d4:	ffe30313          	addi	x6,x6,-2 # 7ffffffe <halt+0x7ffff43e>
 3d8:	006283b3          	add	x7,x5,x6
 3dc:	00712023          	sw	x7,0(x2)
 3e0:	00410113          	addi	x2,x2,4
 3e4:	123452b7          	lui	x5,0x12345
 3e8:	67828293          	addi	x5,x5,1656 # 12345678 <halt+0x12344ab8>
 3ec:	80000337          	lui	x6,0x80000
 3f0:	006283b3          	add	x7,x5,x6
 3f4:	00712023          	sw	x7,0(x2)
 3f8:	00410113          	addi	x2,x2,4
 3fc:	707072b7          	lui	x5,0x70707
 400:	07028293          	addi	x5,x5,112 # 70707070 <halt+0x707064b0>
 404:	80808337          	lui	x6,0x80808
 408:	08030313          	addi	x6,x6,128 # 80808080 <results+0x808080>
 40c:	006283b3          	add	x7,x5,x6
 410:	00712023          	sw	x7,0(x2)
 414:	00410113          	addi	x2,x2,4
 418:	100002b7          	lui	x5,0x10000
 41c:	f0000337          	lui	x6,0xf0000
 420:	006283b3          	add	x7,x5,x6
 424:	00712023          	sw	x7,0(x2)
 428:	00410113          	addi	x2,x2,4
 42c:	00a00293          	addi	x5,x0,10
 430:	ff600313          	addi	x6,x0,-10
 434:	006283b3          	add	x7,x5,x6
 438:	00712023          	sw	x7,0(x2)
 43c:	00410113          	addi	x2,x2,4
 440:	0000b2b7          	lui	x5,0xb
 444:	aaa28293          	addi	x5,x5,-1366 # aaaa <halt+0x9eea>
 448:	00005337          	lui	x6,0x5
 44c:	55530313          	addi	x6,x6,1365 # 5555 <halt+0x4995>
 450:	006283b3          	add	x7,x5,x6
 454:	00712023          	sw	x7,0(x2)
 458:	00410113          	addi	x2,x2,4
 45c:	9999a2b7          	lui	x5,0x9999a
 460:	99928293          	addi	x5,x5,-1639 # 99999999 <results+0x19999999>
 464:	66666337          	lui	x6,0x66666
 468:	66730313          	addi	x6,x6,1639 # 66666667 <halt+0x66665aa7>
 46c:	006283b3          	add	x7,x5,x6
 470:	00712023          	sw	x7,0(x2)
 474:	00410113          	addi	x2,x2,4
 478:	333332b7          	lui	x5,0x33333
 47c:	33328293          	addi	x5,x5,819 # 33333333 <halt+0x33332773>
 480:	ccccd337          	lui	x6,0xccccd
 484:	ccc30313          	addi	x6,x6,-820 # cccccccc <results+0x4ccccccc>
 488:	006283b3          	add	x7,x5,x6
 48c:	00712023          	sw	x7,0(x2)
 490:	00410113          	addi	x2,x2,4
 494:	aaaab2b7          	lui	x5,0xaaaab
 498:	aab28293          	addi	x5,x5,-1365 # aaaaaaab <results+0x2aaaaaab>
 49c:	aaaab337          	lui	x6,0xaaaab
 4a0:	aab30313          	addi	x6,x6,-1365 # aaaaaaab <results+0x2aaaaaab>
 4a4:	006283b3          	add	x7,x5,x6
 4a8:	00712023          	sw	x7,0(x2)
 4ac:	00410113          	addi	x2,x2,4
 4b0:	2468b2b7          	lui	x5,0x2468b
 4b4:	cf028293          	addi	x5,x5,-784 # 2468acf0 <halt+0x2468a130>
 4b8:	1357a337          	lui	x6,0x1357a
 4bc:	bdf30313          	addi	x6,x6,-1057 # 13579bdf <halt+0x1357901f>
 4c0:	006283b3          	add	x7,x5,x6
 4c4:	00712023          	sw	x7,0(x2)
 4c8:	00410113          	addi	x2,x2,4
 4cc:	112232b7          	lui	x5,0x11223
 4d0:	34428293          	addi	x5,x5,836 # 11223344 <halt+0x11222784>
 4d4:	ee77d337          	lui	x6,0xee77d
 4d8:	cbb30313          	addi	x6,x6,-837 # ee77ccbb <results+0x6e77ccbb>
 4dc:	006283b3          	add	x7,x5,x6
 4e0:	00712023          	sw	x7,0(x2)
 4e4:	00410113          	addi	x2,x2,4
 4e8:	000102b7          	lui	x5,0x10
 4ec:	fff28293          	addi	x5,x5,-1 # ffff <halt+0xf43f>
 4f0:	00100313          	addi	x6,x0,1
 4f4:	006283b3          	add	x7,x5,x6
 4f8:	00712023          	sw	x7,0(x2)
 4fc:	00410113          	addi	x2,x2,4
 500:	eeeef2b7          	lui	x5,0xeeeef
 504:	eee28293          	addi	x5,x5,-274 # eeeeeeee <results+0x6eeeeeee>
 508:	11111337          	lui	x6,0x11111
 50c:	11230313          	addi	x6,x6,274 # 11111112 <halt+0x11110552>
 510:	006283b3          	add	x7,x5,x6
 514:	00712023          	sw	x7,0(x2)
 518:	00410113          	addi	x2,x2,4
 51c:	ababb2b7          	lui	x5,0xababb
 520:	bab28293          	addi	x5,x5,-1109 # abababab <results+0x2bababab>
 524:	54545337          	lui	x6,0x54545
 528:	45430313          	addi	x6,x6,1108 # 54545454 <halt+0x54544894>
 52c:	006283b3          	add	x7,x5,x6
 530:	00712023          	sw	x7,0(x2)
 534:	00410113          	addi	x2,x2,4
 538:	7fff02b7          	lui	x5,0x7fff0
 53c:	00100313          	addi	x6,x0,1
 540:	006283b3          	add	x7,x5,x6
 544:	00712023          	sw	x7,0(x2)
 548:	00410113          	addi	x2,x2,4
 54c:	800102b7          	lui	x5,0x80010
 550:	fff00313          	addi	x6,x0,-1
 554:	006283b3          	add	x7,x5,x6
 558:	00712023          	sw	x7,0(x2)
 55c:	00410113          	addi	x2,x2,4
 560:	100002b7          	lui	x5,0x10000
 564:	10000337          	lui	x6,0x10000
 568:	006283b3          	add	x7,x5,x6
 56c:	00712023          	sw	x7,0(x2)
 570:	00410113          	addi	x2,x2,4
 574:	00100293          	addi	x5,x0,1
 578:	80000337          	lui	x6,0x80000
 57c:	006283b3          	add	x7,x5,x6
 580:	00712023          	sw	x7,0(x2)
 584:	00410113          	addi	x2,x2,4
 588:	700002b7          	lui	x5,0x70000
 58c:	70000337          	lui	x6,0x70000
 590:	006283b3          	add	x7,x5,x6
 594:	00712023          	sw	x7,0(x2)
 598:	00410113          	addi	x2,x2,4
 59c:	2f2f32b7          	lui	x5,0x2f2f3
 5a0:	f2f28293          	addi	x5,x5,-209 # 2f2f2f2f <halt+0x2f2f236f>
 5a4:	1f1f2337          	lui	x6,0x1f1f2
 5a8:	f1f30313          	addi	x6,x6,-225 # 1f1f1f1f <halt+0x1f1f135f>
 5ac:	006283b3          	add	x7,x5,x6
 5b0:	00712023          	sw	x7,0(x2)
 5b4:	00410113          	addi	x2,x2,4
 5b8:	000102b7          	lui	x5,0x10
 5bc:	00100313          	addi	x6,x0,1
 5c0:	006283b3          	add	x7,x5,x6
 5c4:	00712023          	sw	x7,0(x2)
 5c8:	00410113          	addi	x2,x2,4
 5cc:	ffe00293          	addi	x5,x0,-2
 5d0:	00200313          	addi	x6,x0,2
 5d4:	006283b3          	add	x7,x5,x6
 5d8:	00712023          	sw	x7,0(x2)
 5dc:	00410113          	addi	x2,x2,4
 5e0:	012342b7          	lui	x5,0x1234
 5e4:	56728293          	addi	x5,x5,1383 # 1234567 <halt+0x12339a7>
 5e8:	89abd337          	lui	x6,0x89abd
 5ec:	def30313          	addi	x6,x6,-529 # 89abcdef <results+0x9abcdef>
 5f0:	006283b3          	add	x7,x5,x6
 5f4:	00712023          	sw	x7,0(x2)
 5f8:	00410113          	addi	x2,x2,4
 5fc:	cafec2b7          	lui	x5,0xcafec
 600:	abe28293          	addi	x5,x5,-1346 # cafebabe <results+0x4afebabe>
 604:	deadc337          	lui	x6,0xdeadc
 608:	0de30313          	addi	x6,x6,222 # deadc0de <results+0x5eadc0de>
 60c:	006283b3          	add	x7,x5,x6
 610:	00712023          	sw	x7,0(x2)
 614:	00410113          	addi	x2,x2,4
 618:	00a00293          	addi	x5,x0,10
 61c:	00a00313          	addi	x6,x0,10
 620:	006283b3          	add	x7,x5,x6
 624:	00712023          	sw	x7,0(x2)
 628:	00410113          	addi	x2,x2,4
 62c:	700002b7          	lui	x5,0x70000
 630:	90000337          	lui	x6,0x90000
 634:	006283b3          	add	x7,x5,x6
 638:	00712023          	sw	x7,0(x2)
 63c:	00410113          	addi	x2,x2,4
 640:	111112b7          	lui	x5,0x11111
 644:	11128293          	addi	x5,x5,273 # 11111111 <halt+0x11110551>
 648:	fff00313          	addi	x6,x0,-1
 64c:	006283b3          	add	x7,x5,x6
 650:	00712023          	sw	x7,0(x2)
 654:	00410113          	addi	x2,x2,4
 658:	aaaab2b7          	lui	x5,0xaaaab
 65c:	aaa28293          	addi	x5,x5,-1366 # aaaaaaaa <results+0x2aaaaaaa>
 660:	00100313          	addi	x6,x0,1
 664:	006283b3          	add	x7,x5,x6
 668:	00712023          	sw	x7,0(x2)
 66c:	00410113          	addi	x2,x2,4
 670:	10000293          	addi	x5,x0,256
 674:	f0000313          	addi	x6,x0,-256
 678:	006283b3          	add	x7,x5,x6
 67c:	00712023          	sw	x7,0(x2)
 680:	00410113          	addi	x2,x2,4
 684:	3c3c42b7          	lui	x5,0x3c3c4
 688:	c3c28293          	addi	x5,x5,-964 # 3c3c3c3c <halt+0x3c3c307c>
 68c:	9999a337          	lui	x6,0x9999a
 690:	99930313          	addi	x6,x6,-1639 # 99999999 <results+0x19999999>
 694:	006283b3          	add	x7,x5,x6
 698:	00712023          	sw	x7,0(x2)
 69c:	00410113          	addi	x2,x2,4
 6a0:	eeeef2b7          	lui	x5,0xeeeef
 6a4:	eee28293          	addi	x5,x5,-274 # eeeeeeee <results+0x6eeeeeee>
 6a8:	fff00313          	addi	x6,x0,-1
 6ac:	006283b3          	add	x7,x5,x6
 6b0:	00712023          	sw	x7,0(x2)
 6b4:	00410113          	addi	x2,x2,4
 6b8:	444442b7          	lui	x5,0x44444
 6bc:	44428293          	addi	x5,x5,1092 # 44444444 <halt+0x44443884>
 6c0:	bbbbc337          	lui	x6,0xbbbbc
 6c4:	bbb30313          	addi	x6,x6,-1093 # bbbbbbbb <results+0x3bbbbbbb>
 6c8:	006283b3          	add	x7,x5,x6
 6cc:	00712023          	sw	x7,0(x2)
 6d0:	00410113          	addi	x2,x2,4
 6d4:	123402b7          	lui	x5,0x12340
 6d8:	0000b337          	lui	x6,0xb
 6dc:	bcd30313          	addi	x6,x6,-1075 # abcd <halt+0xa00d>
 6e0:	006283b3          	add	x7,x5,x6
 6e4:	00712023          	sw	x7,0(x2)
 6e8:	00410113          	addi	x2,x2,4
 6ec:	200002b7          	lui	x5,0x20000
 6f0:	20000337          	lui	x6,0x20000
 6f4:	006283b3          	add	x7,x5,x6
 6f8:	00712023          	sw	x7,0(x2)
 6fc:	00410113          	addi	x2,x2,4
 700:	400002b7          	lui	x5,0x40000
 704:	40000337          	lui	x6,0x40000
 708:	006283b3          	add	x7,x5,x6
 70c:	00712023          	sw	x7,0(x2)
 710:	00410113          	addi	x2,x2,4
 714:	400002b7          	lui	x5,0x40000
 718:	fff28293          	addi	x5,x5,-1 # 3fffffff <halt+0x3ffff43f>
 71c:	40000337          	lui	x6,0x40000
 720:	fff30313          	addi	x6,x6,-1 # 3fffffff <halt+0x3ffff43f>
 724:	006283b3          	add	x7,x5,x6
 728:	00712023          	sw	x7,0(x2)
 72c:	00410113          	addi	x2,x2,4
 730:	ffd00293          	addi	x5,x0,-3
 734:	00300313          	addi	x6,x0,3
 738:	006283b3          	add	x7,x5,x6
 73c:	00712023          	sw	x7,0(x2)
 740:	00410113          	addi	x2,x2,4
 744:	123452b7          	lui	x5,0x12345
 748:	67828293          	addi	x5,x5,1656 # 12345678 <halt+0x12344ab8>
 74c:	12345337          	lui	x6,0x12345
 750:	67830313          	addi	x6,x6,1656 # 12345678 <halt+0x12344ab8>
 754:	006283b3          	add	x7,x5,x6
 758:	00712023          	sw	x7,0(x2)
 75c:	00410113          	addi	x2,x2,4
 760:	deadc2b7          	lui	x5,0xdeadc
 764:	eef28293          	addi	x5,x5,-273 # deadbeef <results+0x5eadbeef>
 768:	12345337          	lui	x6,0x12345
 76c:	67830313          	addi	x6,x6,1656 # 12345678 <halt+0x12344ab8>
 770:	006283b3          	add	x7,x5,x6
 774:	00712023          	sw	x7,0(x2)
 778:	00410113          	addi	x2,x2,4
 77c:	000102b7          	lui	x5,0x10
 780:	fff28293          	addi	x5,x5,-1 # ffff <halt+0xf43f>
 784:	00010337          	lui	x6,0x10
 788:	fff30313          	addi	x6,x6,-1 # ffff <halt+0xf43f>
 78c:	006283b3          	add	x7,x5,x6
 790:	00712023          	sw	x7,0(x2)
 794:	00410113          	addi	x2,x2,4
 798:	800002b7          	lui	x5,0x80000
 79c:	00100313          	addi	x6,x0,1
 7a0:	006283b3          	add	x7,x5,x6
 7a4:	00712023          	sw	x7,0(x2)
 7a8:	00410113          	addi	x2,x2,4
 7ac:	800002b7          	lui	x5,0x80000
 7b0:	fff28293          	addi	x5,x5,-1 # 7fffffff <halt+0x7ffff43f>
 7b4:	fff00313          	addi	x6,x0,-1
 7b8:	006283b3          	add	x7,x5,x6
 7bc:	00712023          	sw	x7,0(x2)
 7c0:	00410113          	addi	x2,x2,4
 7c4:	5a5a62b7          	lui	x5,0x5a5a6
 7c8:	a5a28293          	addi	x5,x5,-1446 # 5a5a5a5a <halt+0x5a5a4e9a>
 7cc:	a5a5a337          	lui	x6,0xa5a5a
 7d0:	5a630313          	addi	x6,x6,1446 # a5a5a5a6 <results+0x25a5a5a6>
 7d4:	006283b3          	add	x7,x5,x6
 7d8:	00712023          	sw	x7,0(x2)
 7dc:	00410113          	addi	x2,x2,4
 7e0:	00200293          	addi	x5,x0,2
 7e4:	ffe00313          	addi	x6,x0,-2
 7e8:	006283b3          	add	x7,x5,x6
 7ec:	00712023          	sw	x7,0(x2)
 7f0:	00410113          	addi	x2,x2,4
 7f4:	555552b7          	lui	x5,0x55555
 7f8:	55528293          	addi	x5,x5,1365 # 55555555 <halt+0x55554995>
 7fc:	aaaab337          	lui	x6,0xaaaab
 800:	aab30313          	addi	x6,x6,-1365 # aaaaaaab <results+0x2aaaaaab>
 804:	006283b3          	add	x7,x5,x6
 808:	00712023          	sw	x7,0(x2)
 80c:	00410113          	addi	x2,x2,4
 810:	ffb00293          	addi	x5,x0,-5
 814:	00500313          	addi	x6,x0,5
 818:	006283b3          	add	x7,x5,x6
 81c:	00712023          	sw	x7,0(x2)
 820:	00410113          	addi	x2,x2,4
 824:	0f0f12b7          	lui	x5,0xf0f1
 828:	f0f28293          	addi	x5,x5,-241 # f0f0f0f <halt+0xf0f034f>
 82c:	10101337          	lui	x6,0x10101
 830:	01030313          	addi	x6,x6,16 # 10101010 <halt+0x10100450>
 834:	006283b3          	add	x7,x5,x6
 838:	00712023          	sw	x7,0(x2)
 83c:	00410113          	addi	x2,x2,4
 840:	222222b7          	lui	x5,0x22222
 844:	22228293          	addi	x5,x5,546 # 22222222 <halt+0x22221662>
 848:	33333337          	lui	x6,0x33333
 84c:	33330313          	addi	x6,x6,819 # 33333333 <halt+0x33332773>
 850:	006283b3          	add	x7,x5,x6
 854:	00712023          	sw	x7,0(x2)
 858:	00410113          	addi	x2,x2,4
 85c:	123452b7          	lui	x5,0x12345
 860:	67828293          	addi	x5,x5,1656 # 12345678 <halt+0x12344ab8>
 864:	00100313          	addi	x6,x0,1
 868:	006283b3          	add	x7,x5,x6
 86c:	00712023          	sw	x7,0(x2)
 870:	00410113          	addi	x2,x2,4
 874:	ff000293          	addi	x5,x0,-16
 878:	00100313          	addi	x6,x0,1
 87c:	006283b3          	add	x7,x5,x6
 880:	00712023          	sw	x7,0(x2)
 884:	00410113          	addi	x2,x2,4
 888:	ff000293          	addi	x5,x0,-16
 88c:	01000313          	addi	x6,x0,16
 890:	006283b3          	add	x7,x5,x6
 894:	00712023          	sw	x7,0(x2)
 898:	00410113          	addi	x2,x2,4
 89c:	400002b7          	lui	x5,0x40000
 8a0:	c0000337          	lui	x6,0xc0000
 8a4:	006283b3          	add	x7,x5,x6
 8a8:	00712023          	sw	x7,0(x2)
 8ac:	00410113          	addi	x2,x2,4
 8b0:	300002b7          	lui	x5,0x30000
 8b4:	d0000337          	lui	x6,0xd0000
 8b8:	006283b3          	add	x7,x5,x6
 8bc:	00712023          	sw	x7,0(x2)
 8c0:	00410113          	addi	x2,x2,4
 8c4:	00100293          	addi	x5,x0,1
 8c8:	80000337          	lui	x6,0x80000
 8cc:	00130313          	addi	x6,x6,1 # 80000001 <results+0x1>
 8d0:	006283b3          	add	x7,x5,x6
 8d4:	00712023          	sw	x7,0(x2)
 8d8:	00410113          	addi	x2,x2,4
 8dc:	00100293          	addi	x5,x0,1
 8e0:	80000337          	lui	x6,0x80000
 8e4:	ffe30313          	addi	x6,x6,-2 # 7ffffffe <halt+0x7ffff43e>
 8e8:	006283b3          	add	x7,x5,x6
 8ec:	00712023          	sw	x7,0(x2)
 8f0:	00410113          	addi	x2,x2,4
 8f4:	100002b7          	lui	x5,0x10000
 8f8:	10000337          	lui	x6,0x10000
 8fc:	00130313          	addi	x6,x6,1 # 10000001 <halt+0xffff441>
 900:	006283b3          	add	x7,x5,x6
 904:	00712023          	sw	x7,0(x2)
 908:	00410113          	addi	x2,x2,4
 90c:	200002b7          	lui	x5,0x20000
 910:	40000337          	lui	x6,0x40000
 914:	006283b3          	add	x7,x5,x6
 918:	00712023          	sw	x7,0(x2)
 91c:	00410113          	addi	x2,x2,4
 920:	800002b7          	lui	x5,0x80000
 924:	fff28293          	addi	x5,x5,-1 # 7fffffff <halt+0x7ffff43f>
 928:	ffe00313          	addi	x6,x0,-2
 92c:	006283b3          	add	x7,x5,x6
 930:	00712023          	sw	x7,0(x2)
 934:	00410113          	addi	x2,x2,4
 938:	eeeef2b7          	lui	x5,0xeeeef
 93c:	eee28293          	addi	x5,x5,-274 # eeeeeeee <results+0x6eeeeeee>
 940:	eeeef337          	lui	x6,0xeeeef
 944:	eee30313          	addi	x6,x6,-274 # eeeeeeee <results+0x6eeeeeee>
 948:	006283b3          	add	x7,x5,x6
 94c:	00712023          	sw	x7,0(x2)
 950:	00410113          	addi	x2,x2,4
 954:	111112b7          	lui	x5,0x11111
 958:	11128293          	addi	x5,x5,273 # 11111111 <halt+0x11110551>
 95c:	11111337          	lui	x6,0x11111
 960:	11130313          	addi	x6,x6,273 # 11111111 <halt+0x11110551>
 964:	006283b3          	add	x7,x5,x6
 968:	00712023          	sw	x7,0(x2)
 96c:	00410113          	addi	x2,x2,4
 970:	0ff00293          	addi	x5,x0,255
 974:	f0000313          	addi	x6,x0,-256
 978:	006283b3          	add	x7,x5,x6
 97c:	00712023          	sw	x7,0(x2)
 980:	00410113          	addi	x2,x2,4
 984:	07f00293          	addi	x5,x0,127
 988:	f8100313          	addi	x6,x0,-127
 98c:	006283b3          	add	x7,x5,x6
 990:	00712023          	sw	x7,0(x2)
 994:	00410113          	addi	x2,x2,4
 998:	123452b7          	lui	x5,0x12345
 99c:	67828293          	addi	x5,x5,1656 # 12345678 <halt+0x12344ab8>
 9a0:	22222337          	lui	x6,0x22222
 9a4:	22230313          	addi	x6,x6,546 # 22222222 <halt+0x22221662>
 9a8:	006283b3          	add	x7,x5,x6
 9ac:	00712023          	sw	x7,0(x2)
 9b0:	00410113          	addi	x2,x2,4
 9b4:	ff0102b7          	lui	x5,0xff010
 9b8:	f0028293          	addi	x5,x5,-256 # ff00ff00 <results+0x7f00ff00>
 9bc:	00ff0337          	lui	x6,0xff0
 9c0:	0ff30313          	addi	x6,x6,255 # ff00ff <halt+0xfef53f>
 9c4:	006283b3          	add	x7,x5,x6
 9c8:	00712023          	sw	x7,0(x2)
 9cc:	00410113          	addi	x2,x2,4
 9d0:	00100293          	addi	x5,x0,1
 9d4:	ffe00313          	addi	x6,x0,-2
 9d8:	006283b3          	add	x7,x5,x6
 9dc:	00712023          	sw	x7,0(x2)
 9e0:	00410113          	addi	x2,x2,4
 9e4:	10000293          	addi	x5,x0,256
 9e8:	f0000313          	addi	x6,x0,-256
 9ec:	006283b3          	add	x7,x5,x6
 9f0:	00712023          	sw	x7,0(x2)
 9f4:	00410113          	addi	x2,x2,4
 9f8:	800002b7          	lui	x5,0x80000
 9fc:	10000337          	lui	x6,0x10000
 a00:	006283b3          	add	x7,x5,x6
 a04:	00712023          	sw	x7,0(x2)
 a08:	00410113          	addi	x2,x2,4
 a0c:	900002b7          	lui	x5,0x90000
 a10:	90000337          	lui	x6,0x90000
 a14:	006283b3          	add	x7,x5,x6
 a18:	00712023          	sw	x7,0(x2)
 a1c:	00410113          	addi	x2,x2,4
 a20:	200002b7          	lui	x5,0x20000
 a24:	fff28293          	addi	x5,x5,-1 # 1fffffff <halt+0x1ffff43f>
 a28:	00100313          	addi	x6,x0,1
 a2c:	006283b3          	add	x7,x5,x6
 a30:	00712023          	sw	x7,0(x2)
 a34:	00410113          	addi	x2,x2,4
 a38:	200002b7          	lui	x5,0x20000
 a3c:	fff28293          	addi	x5,x5,-1 # 1fffffff <halt+0x1ffff43f>
 a40:	20000337          	lui	x6,0x20000
 a44:	00130313          	addi	x6,x6,1 # 20000001 <halt+0x1ffff441>
 a48:	006283b3          	add	x7,x5,x6
 a4c:	00712023          	sw	x7,0(x2)
 a50:	00410113          	addi	x2,x2,4
 a54:	600002b7          	lui	x5,0x60000
 a58:	20000337          	lui	x6,0x20000
 a5c:	006283b3          	add	x7,x5,x6
 a60:	00712023          	sw	x7,0(x2)
 a64:	00410113          	addi	x2,x2,4
 a68:	fff00293          	addi	x5,x0,-1
 a6c:	fff00313          	addi	x6,x0,-1
 a70:	006283b3          	add	x7,x5,x6
 a74:	00712023          	sw	x7,0(x2)
 a78:	00410113          	addi	x2,x2,4
 a7c:	100002b7          	lui	x5,0x10000
 a80:	00100313          	addi	x6,x0,1
 a84:	006283b3          	add	x7,x5,x6
 a88:	00712023          	sw	x7,0(x2)
 a8c:	00410113          	addi	x2,x2,4
 a90:	100002b7          	lui	x5,0x10000
 a94:	80000337          	lui	x6,0x80000
 a98:	006283b3          	add	x7,x5,x6
 a9c:	00712023          	sw	x7,0(x2)
 aa0:	00410113          	addi	x2,x2,4
 aa4:	400002b7          	lui	x5,0x40000
 aa8:	20000337          	lui	x6,0x20000
 aac:	006283b3          	add	x7,x5,x6
 ab0:	00712023          	sw	x7,0(x2)
 ab4:	00410113          	addi	x2,x2,4
 ab8:	200002b7          	lui	x5,0x20000
 abc:	40000337          	lui	x6,0x40000
 ac0:	006283b3          	add	x7,x5,x6
 ac4:	00712023          	sw	x7,0(x2)
 ac8:	00410113          	addi	x2,x2,4
 acc:	111112b7          	lui	x5,0x11111
 ad0:	11128293          	addi	x5,x5,273 # 11111111 <halt+0x11110551>
 ad4:	22222337          	lui	x6,0x22222
 ad8:	22230313          	addi	x6,x6,546 # 22222222 <halt+0x22221662>
 adc:	006283b3          	add	x7,x5,x6
 ae0:	00712023          	sw	x7,0(x2)
 ae4:	00410113          	addi	x2,x2,4
 ae8:	333332b7          	lui	x5,0x33333
 aec:	33328293          	addi	x5,x5,819 # 33333333 <halt+0x33332773>
 af0:	44444337          	lui	x6,0x44444
 af4:	44430313          	addi	x6,x6,1092 # 44444444 <halt+0x44443884>
 af8:	006283b3          	add	x7,x5,x6
 afc:	00712023          	sw	x7,0(x2)
 b00:	00410113          	addi	x2,x2,4
 b04:	555552b7          	lui	x5,0x55555
 b08:	55528293          	addi	x5,x5,1365 # 55555555 <halt+0x55554995>
 b0c:	66666337          	lui	x6,0x66666
 b10:	66630313          	addi	x6,x6,1638 # 66666666 <halt+0x66665aa6>
 b14:	006283b3          	add	x7,x5,x6
 b18:	00712023          	sw	x7,0(x2)
 b1c:	00410113          	addi	x2,x2,4
 b20:	777772b7          	lui	x5,0x77777
 b24:	77728293          	addi	x5,x5,1911 # 77777777 <halt+0x77776bb7>
 b28:	88889337          	lui	x6,0x88889
 b2c:	88830313          	addi	x6,x6,-1912 # 88888888 <results+0x8888888>
 b30:	006283b3          	add	x7,x5,x6
 b34:	00712023          	sw	x7,0(x2)
 b38:	00410113          	addi	x2,x2,4
 b3c:	01100293          	addi	x5,x0,17
 b40:	fee00313          	addi	x6,x0,-18
 b44:	006283b3          	add	x7,x5,x6
 b48:	00712023          	sw	x7,0(x2)
 b4c:	00410113          	addi	x2,x2,4
 b50:	00100293          	addi	x5,x0,1
 b54:	00300313          	addi	x6,x0,3
 b58:	006283b3          	add	x7,x5,x6
 b5c:	00712023          	sw	x7,0(x2)
 b60:	00410113          	addi	x2,x2,4
 b64:	00f00293          	addi	x5,x0,15
 b68:	01100313          	addi	x6,x0,17
 b6c:	006283b3          	add	x7,x5,x6
 b70:	00712023          	sw	x7,0(x2)
 b74:	00410113          	addi	x2,x2,4
 b78:	111102b7          	lui	x5,0x11110
 b7c:	eeef0337          	lui	x6,0xeeef0
 b80:	fff30313          	addi	x6,x6,-1 # eeeeffff <results+0x6eeeffff>
 b84:	006283b3          	add	x7,x5,x6
 b88:	00712023          	sw	x7,0(x2)
 b8c:	00410113          	addi	x2,x2,4
 b90:	00100293          	addi	x5,x0,1
 b94:	80000337          	lui	x6,0x80000
 b98:	fff30313          	addi	x6,x6,-1 # 7fffffff <halt+0x7ffff43f>
 b9c:	006283b3          	add	x7,x5,x6
 ba0:	00712023          	sw	x7,0(x2)
 ba4:	00410113          	addi	x2,x2,4
 ba8:	800002b7          	lui	x5,0x80000
 bac:	fff28293          	addi	x5,x5,-1 # 7fffffff <halt+0x7ffff43f>
 bb0:	80000337          	lui	x6,0x80000
 bb4:	006283b3          	add	x7,x5,x6
 bb8:	00712023          	sw	x7,0(x2)
 bbc:	00410113          	addi	x2,x2,4

00000bc0 <halt>:
 bc0:	0000006f          	jal	x0,bc0 <halt>

Disassembly of section .data:

80000000 <results>:
	...

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	1941                	.insn	2, 0x1941
   2:	0000                	.insn	2, 0x0000
   4:	7200                	.insn	2, 0x7200
   6:	7369                	.insn	2, 0x7369
   8:	01007663          	bgeu	x0,x16,14 <_start+0x14>
   c:	0000000f          	fence	unknown,unknown
  10:	7205                	.insn	2, 0x7205
  12:	3376                	.insn	2, 0x3376
  14:	6932                	.insn	2, 0x6932
  16:	7032                	.insn	2, 0x7032
  18:	0031                	.insn	2, 0x0031
