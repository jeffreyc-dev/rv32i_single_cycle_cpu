//
//  Authors: Jeffrey Claudio
//  Latest Revision: 10-16-2025
//  
//  Project: my_pkg.sv
//  Description: Custom Types
//  License: MIT License (see LICENSE file in the project root)
//

package my_pkg;

  typedef enum logic [6:0] {
    R_TYPE   = 7'b0110011,   // ADD - AND
    I_TYPE_a = 7'b1100111,   // JALR
    I_TYPE_b = 7'b0000011,   // LB - LHU
    I_TYPE_c = 7'b0010011,   // ADDI - SRAI
    S_TYPE   = 7'b0100011,   // SB - SW
    B_TYPE   = 7'b1100011,   // BEQ - BGEU
    U_TYPE_a = 7'b0110111,   // LUI
    U_TYPE_b = 7'b0010111,   // AUIPC
    J_TYPE   = 7'b1101111    // JAL
  } opcode;

  typedef enum logic [3:0] {
    OP_ADD   = 4'h0,
    OP_SUB   = 4'h1,
    OP_EQ    = 4'h2,
    OP_NEQ   = 4'h3,
    OP_LESS  = 4'h4,
    OP_LESSU = 4'h5,
    OP_GEQ   = 4'h6,
    OP_GEQU  = 4'h7,
    OP_AND   = 4'h8,
    OP_OR    = 4'h9,
    OP_XOR   = 4'hA,
    OP_SLL   = 4'hB,
    OP_SRL   = 4'hC,
    OP_SRA   = 4'hD,
    OP_LUI   = 4'hE,
    OP_INVAL = 4'hF
  } ALUOp;

  typedef enum logic [2:0] {
    I_imm = 3'h0,
    S_imm = 3'h1,
    B_imm = 3'h2,
    U_imm = 3'h3,
    J_imm = 3'h4
  } imm_t;

endpackage
