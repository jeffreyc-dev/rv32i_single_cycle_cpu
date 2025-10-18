//
//  Authors: Jeffrey Claudio
//  Latest Revision: 10-16-2025
//  
//  Project: rv32i_top.sv
//  Description: RISC-V 32-bit Integer Extension
//               with Instruction/Data Memory
//  License: MIT License (see LICENSE file in the project root)
//

module rv32i_top
(
  input logic        clk,  // Clock
  input logic        reset // Reset
);

  // Instruction Memory Ports
  logic [31:0] Instr;      // Instruction
  logic [31:0] PC;         // Instruction Address

  // Data Memory Ports
  logic [31:0] ReadData;   // Read Data
  logic        MemWrite;   // Write Enable
  logic  [3:0] byte_en;    // Byte Enable
  logic [31:0] ALUResult;  // Read/Write Address
  logic [31:0] WriteData;  // Write Data

  rv32i u_cpu(
    .clk(clk),
    .reset(reset),
    // Instruction Memory Ports
    .Instr(Instr),
    .PC(PC),
    // Data Memory Ports
    .ReadData(ReadData),
    .MemWrite(MemWrite),
    .byte_en(byte_en),
    .ALUResult(ALUResult),
    .WriteData(WriteData)
  );

  i_mem u_i_mem(
    .A(PC),            // Instruction Address
    .RD(Instr)         // Instruction
  );

  d_mem u_d_mem(
    .clk(clk),         // Clock
    .WE(MemWrite),     // Write Enable
    .byte_en(byte_en), // Byte Enable
    .A(ALUResult),     // Read/Write Address
    .WD(WriteData),    // Write Data
    .RD(ReadData)      // Read Data
  );

endmodule
