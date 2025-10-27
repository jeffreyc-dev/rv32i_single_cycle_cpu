
rv32i.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_reset>:
   0:	80004117          	auipc	x2,0x80004
   4:	00010113          	addi	x2,x2,0 # 80004000 <_stack_top>
   8:	00000293          	addi	x5,x0,0
   c:	00000313          	addi	x6,x0,0
  10:	00000393          	addi	x7,x0,0
  14:	00000e13          	addi	x28,x0,0
  18:	00000e93          	addi	x29,x0,0
  1c:	00000f13          	addi	x30,x0,0
  20:	00000f93          	addi	x31,x0,0
  24:	00000513          	addi	x10,x0,0
  28:	00000593          	addi	x11,x0,0
  2c:	00000613          	addi	x12,x0,0
  30:	00000693          	addi	x13,x0,0
  34:	00000713          	addi	x14,x0,0
  38:	00000793          	addi	x15,x0,0
  3c:	00000813          	addi	x16,x0,0
  40:	00000893          	addi	x17,x0,0
  44:	00000413          	addi	x8,x0,0
  48:	00000493          	addi	x9,x0,0
  4c:	00000913          	addi	x18,x0,0
  50:	00000993          	addi	x19,x0,0
  54:	00000a13          	addi	x20,x0,0
  58:	00000a93          	addi	x21,x0,0
  5c:	00000b13          	addi	x22,x0,0
  60:	00000b93          	addi	x23,x0,0
  64:	00000c13          	addi	x24,x0,0
  68:	00000c93          	addi	x25,x0,0
  6c:	00000d13          	addi	x26,x0,0
  70:	00000d93          	addi	x27,x0,0
  74:	00000193          	addi	x3,x0,0
  78:	00000213          	addi	x4,x0,0
  7c:	00000093          	addi	x1,x0,0
  80:	2e8000ef          	jal	x1,368 <_start>
  84:	0000006f          	jal	x0,84 <_reset+0x84>

00000088 <pop>:
  88:	fd010113          	addi	x2,x2,-48
  8c:	02112623          	sw	x1,44(x2)
  90:	02812423          	sw	x8,40(x2)
  94:	03010413          	addi	x8,x2,48
  98:	fca42e23          	sw	x10,-36(x8)
  9c:	800007b7          	lui	x15,0x80000
  a0:	00c78713          	addi	x14,x15,12 # 8000000c <heights>
  a4:	fdc42783          	lw	x15,-36(x8)
  a8:	00279793          	slli	x15,x15,0x2
  ac:	00f707b3          	add	x15,x14,x15
  b0:	0007a783          	lw	x15,0(x15)
  b4:	fff78793          	addi	x15,x15,-1
  b8:	fef42623          	sw	x15,-20(x8)
  bc:	800007b7          	lui	x15,0x80000
  c0:	00078713          	addi	x14,x15,0 # 80000000 <towers>
  c4:	fdc42783          	lw	x15,-36(x8)
  c8:	00279793          	slli	x15,x15,0x2
  cc:	00f707b3          	add	x15,x14,x15
  d0:	0007a703          	lw	x14,0(x15)
  d4:	fec42783          	lw	x15,-20(x8)
  d8:	00279793          	slli	x15,x15,0x2
  dc:	00f757b3          	srl	x15,x14,x15
  e0:	00f7f793          	andi	x15,x15,15
  e4:	fef42423          	sw	x15,-24(x8)
  e8:	800007b7          	lui	x15,0x80000
  ec:	00078713          	addi	x14,x15,0 # 80000000 <towers>
  f0:	fdc42783          	lw	x15,-36(x8)
  f4:	00279793          	slli	x15,x15,0x2
  f8:	00f707b3          	add	x15,x14,x15
  fc:	0007a783          	lw	x15,0(x15)
 100:	fec42703          	lw	x14,-20(x8)
 104:	00271713          	slli	x14,x14,0x2
 108:	00f00693          	addi	x13,x0,15
 10c:	00e69733          	sll	x14,x13,x14
 110:	fff74713          	xori	x14,x14,-1
 114:	00e7f733          	and	x14,x15,x14
 118:	800007b7          	lui	x15,0x80000
 11c:	00078693          	addi	x13,x15,0 # 80000000 <towers>
 120:	fdc42783          	lw	x15,-36(x8)
 124:	00279793          	slli	x15,x15,0x2
 128:	00f687b3          	add	x15,x13,x15
 12c:	00e7a023          	sw	x14,0(x15)
 130:	800007b7          	lui	x15,0x80000
 134:	00c78713          	addi	x14,x15,12 # 8000000c <heights>
 138:	fdc42783          	lw	x15,-36(x8)
 13c:	00279793          	slli	x15,x15,0x2
 140:	00f707b3          	add	x15,x14,x15
 144:	fec42703          	lw	x14,-20(x8)
 148:	00e7a023          	sw	x14,0(x15)
 14c:	fe842783          	lw	x15,-24(x8)
 150:	00078513          	addi	x10,x15,0
 154:	02c12083          	lw	x1,44(x2)
 158:	02812403          	lw	x8,40(x2)
 15c:	03010113          	addi	x2,x2,48
 160:	00008067          	jalr	x0,0(x1)

00000164 <push>:
 164:	fd010113          	addi	x2,x2,-48
 168:	02112623          	sw	x1,44(x2)
 16c:	02812423          	sw	x8,40(x2)
 170:	03010413          	addi	x8,x2,48
 174:	fca42e23          	sw	x10,-36(x8)
 178:	fcb42c23          	sw	x11,-40(x8)
 17c:	800007b7          	lui	x15,0x80000
 180:	00c78713          	addi	x14,x15,12 # 8000000c <heights>
 184:	fdc42783          	lw	x15,-36(x8)
 188:	00279793          	slli	x15,x15,0x2
 18c:	00f707b3          	add	x15,x14,x15
 190:	0007a783          	lw	x15,0(x15)
 194:	fef42623          	sw	x15,-20(x8)
 198:	800007b7          	lui	x15,0x80000
 19c:	00078713          	addi	x14,x15,0 # 80000000 <towers>
 1a0:	fdc42783          	lw	x15,-36(x8)
 1a4:	00279793          	slli	x15,x15,0x2
 1a8:	00f707b3          	add	x15,x14,x15
 1ac:	0007a703          	lw	x14,0(x15)
 1b0:	fd842783          	lw	x15,-40(x8)
 1b4:	00f7f693          	andi	x13,x15,15
 1b8:	fec42783          	lw	x15,-20(x8)
 1bc:	00279793          	slli	x15,x15,0x2
 1c0:	00f697b3          	sll	x15,x13,x15
 1c4:	00f76733          	or	x14,x14,x15
 1c8:	800007b7          	lui	x15,0x80000
 1cc:	00078693          	addi	x13,x15,0 # 80000000 <towers>
 1d0:	fdc42783          	lw	x15,-36(x8)
 1d4:	00279793          	slli	x15,x15,0x2
 1d8:	00f687b3          	add	x15,x13,x15
 1dc:	00e7a023          	sw	x14,0(x15)
 1e0:	fec42783          	lw	x15,-20(x8)
 1e4:	00178713          	addi	x14,x15,1
 1e8:	800007b7          	lui	x15,0x80000
 1ec:	00c78693          	addi	x13,x15,12 # 8000000c <heights>
 1f0:	fdc42783          	lw	x15,-36(x8)
 1f4:	00279793          	slli	x15,x15,0x2
 1f8:	00f687b3          	add	x15,x13,x15
 1fc:	00e7a023          	sw	x14,0(x15)
 200:	00000013          	addi	x0,x0,0
 204:	02c12083          	lw	x1,44(x2)
 208:	02812403          	lw	x8,40(x2)
 20c:	03010113          	addi	x2,x2,48
 210:	00008067          	jalr	x0,0(x1)

00000214 <hanoi>:
 214:	fd010113          	addi	x2,x2,-48
 218:	02112623          	sw	x1,44(x2)
 21c:	02812423          	sw	x8,40(x2)
 220:	03010413          	addi	x8,x2,48
 224:	fca42e23          	sw	x10,-36(x8)
 228:	fcb42c23          	sw	x11,-40(x8)
 22c:	fcc42a23          	sw	x12,-44(x8)
 230:	fcd42823          	sw	x13,-48(x8)
 234:	fdc42783          	lw	x15,-36(x8)
 238:	04078c63          	beq	x15,x0,290 <hanoi+0x7c>
 23c:	fdc42783          	lw	x15,-36(x8)
 240:	fff78793          	addi	x15,x15,-1
 244:	fd442683          	lw	x13,-44(x8)
 248:	fd042603          	lw	x12,-48(x8)
 24c:	fd842583          	lw	x11,-40(x8)
 250:	00078513          	addi	x10,x15,0
 254:	fc1ff0ef          	jal	x1,214 <hanoi>
 258:	fd842503          	lw	x10,-40(x8)
 25c:	e2dff0ef          	jal	x1,88 <pop>
 260:	fea42623          	sw	x10,-20(x8)
 264:	fec42583          	lw	x11,-20(x8)
 268:	fd042503          	lw	x10,-48(x8)
 26c:	ef9ff0ef          	jal	x1,164 <push>
 270:	fdc42783          	lw	x15,-36(x8)
 274:	fff78793          	addi	x15,x15,-1
 278:	fd042683          	lw	x13,-48(x8)
 27c:	fd842603          	lw	x12,-40(x8)
 280:	fd442583          	lw	x11,-44(x8)
 284:	00078513          	addi	x10,x15,0
 288:	f8dff0ef          	jal	x1,214 <hanoi>
 28c:	0080006f          	jal	x0,294 <hanoi+0x80>
 290:	00000013          	addi	x0,x0,0
 294:	02c12083          	lw	x1,44(x2)
 298:	02812403          	lw	x8,40(x2)
 29c:	03010113          	addi	x2,x2,48
 2a0:	00008067          	jalr	x0,0(x1)

000002a4 <init_tower>:
 2a4:	fe010113          	addi	x2,x2,-32
 2a8:	00112e23          	sw	x1,28(x2)
 2ac:	00812c23          	sw	x8,24(x2)
 2b0:	02010413          	addi	x8,x2,32
 2b4:	800007b7          	lui	x15,0x80000
 2b8:	00078793          	addi	x15,x15,0 # 80000000 <towers>
 2bc:	0007a023          	sw	x0,0(x15)
 2c0:	fe042623          	sw	x0,-20(x8)
 2c4:	0440006f          	jal	x0,308 <init_tower+0x64>
 2c8:	800007b7          	lui	x15,0x80000
 2cc:	00078793          	addi	x15,x15,0 # 80000000 <towers>
 2d0:	0007a783          	lw	x15,0(x15)
 2d4:	00700693          	addi	x13,x0,7
 2d8:	fec42703          	lw	x14,-20(x8)
 2dc:	40e686b3          	sub	x13,x13,x14
 2e0:	fec42703          	lw	x14,-20(x8)
 2e4:	00271713          	slli	x14,x14,0x2
 2e8:	00e69733          	sll	x14,x13,x14
 2ec:	00e7e733          	or	x14,x15,x14
 2f0:	800007b7          	lui	x15,0x80000
 2f4:	00078793          	addi	x15,x15,0 # 80000000 <towers>
 2f8:	00e7a023          	sw	x14,0(x15)
 2fc:	fec42783          	lw	x15,-20(x8)
 300:	00178793          	addi	x15,x15,1
 304:	fef42623          	sw	x15,-20(x8)
 308:	fec42703          	lw	x14,-20(x8)
 30c:	00600793          	addi	x15,x0,6
 310:	fae7dce3          	bge	x15,x14,2c8 <init_tower+0x24>
 314:	800007b7          	lui	x15,0x80000
 318:	00078793          	addi	x15,x15,0 # 80000000 <towers>
 31c:	0007a223          	sw	x0,4(x15)
 320:	800007b7          	lui	x15,0x80000
 324:	00078793          	addi	x15,x15,0 # 80000000 <towers>
 328:	0007a423          	sw	x0,8(x15)
 32c:	800007b7          	lui	x15,0x80000
 330:	00c78793          	addi	x15,x15,12 # 8000000c <heights>
 334:	00700713          	addi	x14,x0,7
 338:	00e7a023          	sw	x14,0(x15)
 33c:	800007b7          	lui	x15,0x80000
 340:	00c78793          	addi	x15,x15,12 # 8000000c <heights>
 344:	0007a223          	sw	x0,4(x15)
 348:	800007b7          	lui	x15,0x80000
 34c:	00c78793          	addi	x15,x15,12 # 8000000c <heights>
 350:	0007a423          	sw	x0,8(x15)
 354:	00000013          	addi	x0,x0,0
 358:	01c12083          	lw	x1,28(x2)
 35c:	01812403          	lw	x8,24(x2)
 360:	02010113          	addi	x2,x2,32
 364:	00008067          	jalr	x0,0(x1)

00000368 <_start>:
 368:	ff010113          	addi	x2,x2,-16
 36c:	00112623          	sw	x1,12(x2)
 370:	00812423          	sw	x8,8(x2)
 374:	01010413          	addi	x8,x2,16
 378:	00005137          	lui	x2,0x5
 37c:	f29ff0ef          	jal	x1,2a4 <init_tower>
 380:	00200693          	addi	x13,x0,2
 384:	00100613          	addi	x12,x0,1
 388:	00000593          	addi	x11,x0,0
 38c:	00700513          	addi	x10,x0,7
 390:	e85ff0ef          	jal	x1,214 <hanoi>
 394:	00000013          	addi	x0,x0,0
 398:	ffdff06f          	jal	x0,394 <_start+0x2c>
