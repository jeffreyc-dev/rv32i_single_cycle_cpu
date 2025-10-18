//
//  Authors: Jeffrey Claudio
//  Latest Revision: 10-16-2025
//  
//  Project: control_unit.sv
//  Description: Control Unit
//  License: MIT License (see LICENSE file in the project root)
//

import my_pkg::*;

module control_unit
(
  input  opcode      op,         // Op Codes
  input  logic [2:0] funct3,     // Function 3 Field
  input  logic       funct7b5,   // Function 7 Field, bit-5
  input  logic [1:0] ALUResult,  // Lower 2-bits of ALUResult

  output logic [1:0] PCSrc,      // PC Select
  output logic [1:0] ResultSrc,  // Result Select
  output logic       MemWrite,   // Memory Write Enable
  output logic [3:0] byte_en,    // Byte Enable
  output logic [1:0] s_sel,      // Store Select
  output logic [1:0] l_sel,      // Load Select
  output logic       u_load,     // Unsigned Load Enable
  output ALUOp       ALUControl, // ALU Control
  output logic       ALUSrc,     // SrcB Select. 0: RD2, 1: ImmExt
  output imm_t       ImmSrc,     // Immediate Decoding
  output logic       RegWrite    // Register Write Enable
);

  logic       br_taken;          // Branch Taken
  logic [1:0] b_sel;             // Byte Selector

  assign br_taken = ALUResult[0];
  assign b_sel    = ALUResult;

  // PC Source Select
  always_comb begin

    case(op)
      I_TYPE_a : PCSrc = 2'b10;                    // ALUResult & ~1
      B_TYPE   : PCSrc = br_taken ? 2'b01 : 2'b00; // PC + ImmExt : PC + 4
      J_TYPE   : PCSrc = 2'b01;                    // PC + ImmExt
      default  : PCSrc = 2'b00;                    // PC + 4
    endcase

  end

  // Result Source Selection Logic
  always_comb begin

    case(op)
      I_TYPE_a,
      J_TYPE   : ResultSrc = 2'b10; // PC + 4
      I_TYPE_b : ResultSrc = 2'b01; // RD from Data Memory
      U_TYPE_b : ResultSrc = 2'b11; // PC + ImmExt
      default  : ResultSrc = 2'b00; // ALUResult
    endcase

  end

  // Memory Write Enable logic
  assign MemWrite = (op==S_TYPE);

  // Store Select Logic
  always_comb begin

    s_sel   = 2'b10;             // Store Word by default.
    byte_en = 4'b1111;

    if (op==S_TYPE) begin

      case(funct3[1:0])
        2'b00 : begin
                  s_sel = 2'b00; // Store Byte
                  case(b_sel)
                    2'b00 : byte_en = 4'b0001;
                    2'b01 : byte_en = 4'b0010;
                    2'b10 : byte_en = 4'b0100;
                    2'b11 : byte_en = 4'b1000;
                  default : byte_en = 4'b0001;
                  endcase
                end
        2'b01 : begin
                  s_sel = 2'b01; // Store Half-word
                  case(b_sel[1])
                    1'b0  : byte_en = 4'b0011;
                    1'b1  : byte_en = 4'b1100;
                  default : byte_en = 4'b0011;
                  endcase
                end
        2'b10 : begin
                  s_sel = 2'b10; // Store Word
                  byte_en = 4'b1111;
                end
      default : begin
                  s_sel = 2'b10; // Store Word
                  byte_en = 4'b1111;
                end
      endcase

    end

  end

  // Load Select Logic
  always_comb begin

    l_sel  = 2'b10;             // Load Word by default.
    u_load = 1'b1;              // Unsigned Load by default.

    if (op==I_TYPE_b) begin

      case(funct3)
        3'b000,
        3'b100 : l_sel = 2'b00; // Load Byte

        3'b001,
        3'b101 : l_sel = 2'b01; // Load Half-word

        3'b010 : l_sel = 2'b10; // Load Word
       default : l_sel = 2'b10; // Load Word
      endcase

      u_load = funct3[2];       // Unsigned Load

    end

  end

  // ALU Control Logic
  always_comb begin

    case(op)
      R_TYPE,
      I_TYPE_c : case(funct3)
                   3'b000 : ALUControl = (op==R_TYPE) & funct7b5 ? OP_SUB : OP_ADD; 
                   3'b001 : ALUControl = OP_SLL;
                   3'b010 : ALUControl = OP_LESS;
                   3'b011 : ALUControl = OP_LESSU;
                   3'b100 : ALUControl = OP_XOR;
                   3'b101 : ALUControl = funct7b5 ? OP_SRA : OP_SRL;
                   3'b110 : ALUControl = OP_OR;
                   3'b111 : ALUControl = OP_AND;
                  default : ALUControl = OP_INVAL;
                 endcase

      I_TYPE_a,
      I_TYPE_b,
      S_TYPE   : ALUControl = OP_ADD;

      B_TYPE   : case(funct3)
                   3'b000 : ALUControl = OP_EQ;
                   3'b001 : ALUControl = OP_NEQ;
                   3'b100 : ALUControl = OP_LESS;
                   3'b101 : ALUControl = OP_GEQ;
                   3'b110 : ALUControl = OP_LESSU;
                   3'b111 : ALUControl = OP_GEQU;
                  default : ALUControl = OP_INVAL;
                 endcase

      U_TYPE_a : ALUControl = OP_LUI;

      default  : ALUControl = OP_INVAL;
    endcase

  end

  // ALU SrcB Selection Logic
  assign ALUSrc = (op==I_TYPE_a) || (op==I_TYPE_b) || (op==I_TYPE_c) || (op==S_TYPE) || (op==U_TYPE_a);

  // Immediate Source Selection Logic
  always_comb begin

    case(op)
      I_TYPE_a,
      I_TYPE_b,
      I_TYPE_c  : ImmSrc = I_imm;

      S_TYPE    : ImmSrc = S_imm;

      B_TYPE    : ImmSrc = B_imm;

      U_TYPE_a,
      U_TYPE_b  : ImmSrc = U_imm;

      J_TYPE    : ImmSrc = J_imm;

      default   : ImmSrc = I_imm;
    endcase

  end

  // Register Write Enable Logic
  assign RegWrite = (op==R_TYPE) || (op==I_TYPE_a) || (op==I_TYPE_b) || (op==I_TYPE_c) || (op==U_TYPE_a) || (op==U_TYPE_b) || (op==J_TYPE);

endmodule
