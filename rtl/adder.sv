//
//  Authors: Jeffrey Claudio
//  Latest Revision: 10-16-2025
//  
//  Project: adder.sv
//  Description: 32-bit Adder with flags for comparison logic.
//  License: MIT License (see LICENSE file in the project root)
//

module adder
(
  input  logic [31:0] opA,      // Operand A
  input  logic [31:0] opB,      // Operand B
  input  logic        sub_en,   // Subtraction Enable

  output logic [31:0] out,      // Result
  output logic        overflow, // Overflow Flag
  output logic        carry,    // Carry Flag
  output logic        negative, // Negative Flag
  output logic        zero      // Zero Flag
);

  logic [31:0] newB;

  always_comb begin

  newB = sub_en ? ~opB : opB;

  {carry,out} = opA + newB + sub_en;

  zero     = ~|out;
  negative = out[31];
  overflow = ~(opA[31] ^ opB[31] ^ sub_en) & (opA[31] ^ out[31]);

  end

endmodule
