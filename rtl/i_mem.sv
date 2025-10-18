//
//  Authors: Jeffrey Claudio
//  Latest Revision: 10-16-2025
//  
//  Project: i_mem.sv
//  Description: Instruction Memory
//  License: MIT License (see LICENSE file in the project root)
//

module i_mem
(
  input  logic [31:0] A, // Instruction Address
  output logic [31:0] RD // Instruction
);

  // Internal RAM
  logic [31:0] RAM [0:255];

  initial
    $readmemh("riscvtest.txt",RAM);

  assign RD = RAM[A[31:2]]; // A[31:0] = 0  | A[31:2] = 0
                            // A[31:0] = 4  | A[31:2] = 1
                            // A[31:0] = 8  | A[31:2] = 2
                            // A[31:0] = 12 | A[31:2] = 3
                            // A[31:0] = 16 | A[31:2] = 4

endmodule
