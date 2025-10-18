//
//  Authors: Jeffrey Claudio
//  Latest Revision: 10-16-2025
//
//  Project: alu.sv
//  Description: ALU
//  License: MIT License (see LICENSE file in the project root)
//

import my_pkg::*;

module alu
(
  input  logic [31:0] SrcA,       // Source A
  input  logic [31:0] SrcB,       // Source B
  input  ALUOp        ALUControl, // ALU Control
  output logic [31:0] ALUResult   // ALU Result
);

  logic [31:0] adder_out, shift_out, and_out, or_out, xor_out;
  logic        sub_en, v, c, n, z;
  logic        s_mode, a_en;

  adder u_add(
    .opA(SrcA),
    .opB(SrcB),
    .sub_en(sub_en),
    .out(adder_out),
    .overflow(v),
    .carry(c),
    .negative(n),
    .zero(z)
  );

  barrel_shifter u_shift(
    .data_in(SrcA),
    .shift_amount(SrcB[4:0]),
    .shift_mode(s_mode),      // 0: Left, 1: Right
    .arithmetic_en(a_en),     // 0: No Sign, 1: Preserve Sign
    .data_out(shift_out)
  );

  always_comb begin

    sub_en = (ALUControl==OP_SUB)  ||
             (ALUControl==OP_EQ)   || (ALUControl==OP_NEQ)   ||
             (ALUControl==OP_LESS) || (ALUControl==OP_LESSU) ||
             (ALUControl==OP_GEQ)  || (ALUControl==OP_GEQU);    // 0: Addition by default, 1: Subtraction

    s_mode = (ALUControl==OP_SRL)  || (ALUControl==OP_SRA);     // 0: Left by default, 1: Right Shift

    a_en   = (ALUControl==OP_SRA);                              // 0: No Sign by default, 1: Preserve Sign

    and_out = SrcA & SrcB;
    or_out  = SrcA | SrcB;
    xor_out = SrcA ^ SrcB;

    case(ALUControl)
      // jalr, addi, add, sub
      // lb, lh, lw, lbu, lhu, sb, sh, sw
      // SrcA + SrcB
      // SrcA + ~SrcB + 1
      OP_ADD,
      OP_SUB   : ALUResult = adder_out;

      // beq
      // SrcA == SrcB
      OP_EQ    : ALUResult = z;

      // bne
      // SrcA != SrcB
      OP_NEQ   : ALUResult = !z;

      // blt, slti, slt
      // $signed(SrcA) < $signed(SrcB)
      OP_LESS  : ALUResult = n ^ v;

      // bltu, sltiu, sltu
      // $unsigned(SrcA) < $unsigned(SrcB)
      OP_LESSU : ALUResult = !c;

      // bge
      // $signed(SrcA) >= $signed(SrcB)
      OP_GEQ   : ALUResult = !(n ^ v);

      // bgeu
      // $unsigned(SrcA) >= $unsigned(SrcB)
      OP_GEQU  : ALUResult = c;

      // andi, and
      // SrcA & SrcB
      OP_AND   : ALUResult = and_out;

      // ori, or
      // SrcA | SrcB
      OP_OR    : ALUResult = or_out;

      // xori, xor
      // SrcA ^ SrcB
      OP_XOR   : ALUResult = xor_out;

      // slli, sll, srli, srl, srai, sra
      // SrcA << SrcB
      // SrcA >> SrcB
      // $signed(SrcA) >>> SrcB
      OP_SLL,
      OP_SRL,
      OP_SRA   : ALUResult = shift_out;

      // lui
      // SrcB
      OP_LUI   : ALUResult = SrcB;

      // Invalid opcode
      OP_INVAL : ALUResult = adder_out;
      default  : ALUResult = adder_out;
    endcase

  end

endmodule
