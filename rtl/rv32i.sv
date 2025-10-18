//
//  Authors: Jeffrey Claudio
//  Latest Revision: 10-16-2025
//  
//  Project: rv32i.sv
//  Description: RISC-V 32-bit Integer Extension
//  License: MIT License (see LICENSE file in the project root)
//

import my_pkg::*;

module rv32i
(
  input  logic        clk,       // Clock
  input  logic        reset,     // Reset

  // Instruction Memory Ports
  input  logic [31:0] Instr,     // Instruction
  output logic [31:0] PC,        // Instruction Address

  // Data Memory Ports
  input  logic [31:0] ReadData,  // Read Data
  output logic        MemWrite,  // Write Enable
  output logic  [3:0] byte_en,   // Byte Enable
  output logic [31:0] ALUResult, // Read/Write Address
  output logic [31:0] WriteData  // Write Data
);

  // Internal Connections
  logic [31:0] PCNext, PCPlus4, PCTarget;

  logic  [1:0] PCSrc;
  logic  [1:0] ResultSrc;
  logic  [1:0] s_sel;
  logic  [1:0] l_sel;
  logic        u_load;
  ALUOp        ALUControl;
  logic        ALUSrc;
  imm_t        ImmSrc;
  logic        RegWrite;

  logic [31:0] SrcA, SrcB, RawData, ImmExt, ProReadData, Result;

  // PC
  pc u_pc(
    .clk(clk),
    .reset(reset),
    .PCNext(PCNext),
    .PC(PC)
  );

  // PCNext
  mux3 u_pcnext(
    .d0(PCPlus4),
    .d1(PCTarget),
    .d2(ALUResult & ~1),
    .s(PCSrc),
    .y(PCNext)
  );

  // PCPlus4
  adder u_pc4(
    .opA(PC),
    .opB(4),
    .sub_en(0),
    .out(PCPlus4)
  );

  // PCTarget
  adder u_pcimm(
    .opA(PC),
    .opB(ImmExt),
    .sub_en(0),
    .out(PCTarget)
  );

  // Control Unit
  control_unit u_control(
    .op(Instr[6:0]),            // Op Codes
    .funct3(Instr[14:12]),      // Function 3 Field
    .funct7b5(Instr[30]),       // Function 7 Field, bit-5
    .ALUResult(ALUResult[1:0]), // Lower 2-bits of ALUResult
    .PCSrc(PCSrc),              // PC Select
    .ResultSrc(ResultSrc),      // Result Select
    .MemWrite(MemWrite),        // Memory Write Enable
    .byte_en(byte_en),          // Byte Enable
    .s_sel(s_sel),              // Store Select
    .l_sel(l_sel),              // Load Select
    .u_load(u_load),            // Unsigned Load Enable
    .ALUControl(ALUControl),    // ALU Control
    .ALUSrc(ALUSrc),            // SrcB Select. 0: RD2, 1: ImmExt
    .ImmSrc(ImmSrc),            // Immediate Decoding
    .RegWrite(RegWrite)         // Register Write Enable
  );

  // Register File
  reg_file u_regf(
    .clk(clk),                  // Clock
    .WE3(RegWrite),             // Write Enable
    // Read Ports
    .A1(Instr[19:15]),          // Read Address 1
    .A2(Instr[24:20]),          // Read Address 2
    .RD1(SrcA),                 // Read Data 1
    .RD2(RawData),              // Read Data 2
    // Write Ports
    .A3(Instr[11:7]),           // Write Address
    .WD3(Result)                // Write Data
  );

  // Extend
  extend u_extend(
    .i_imm(Instr[31:7]),        // Immediate Raw
    .ImmSrc(ImmSrc),            // Immediate Select
    .ImmExt(ImmExt)             // Immediate Extended
  );

  // ALU
  alu u_alu(
    .SrcA(SrcA),                // Source A
    .SrcB(SrcB),                // Source B
    .ALUControl(ALUControl),    // ALU Control
    .ALUResult(ALUResult)       // ALU Result
  );

  // SrcB
  mux2 u_SrcB(
    .d0(RawData),
    .d1(ImmExt),
    .s(ALUSrc),
    .y(SrcB)
  );

  // Store Unit
  store_unit u_store(
    .s_sel(s_sel),              // Store Select
    .RawData(RawData),          // RD2 from Register File
    .WriteData(WriteData)       // To Data Memory
  );

  // Load Unit
  load_unit ins_load(
    .l_sel(l_sel),              // Load Select
    .bhw_sel(ALUResult[1:0]),   // Byte / Half-word Select
    .u_load(u_load),            // Unsigned Load Enable
    .RawData(ReadData),         // RD from Data Memory
    .ReadData(ProReadData)      // To Register File
  );

  // Result
  mux4 u_result(
    .d0(ALUResult),
    .d1(ProReadData),
    .d2(PCPlus4),
    .d3(PCTarget),
    .s(ResultSrc),
    .y(Result)
  );

endmodule
