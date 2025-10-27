//
//  Authors: Jeffrey Claudio
//  Latest Revision: 10-26-2025
//  
//  Project: d_mem.sv
//  Description: Data Memory
//  License: MIT License (see LICENSE file in the project root)
//

module d_mem #(
  parameter int SIZE_POW2 = 14,              // 2^SIZE_POW2 bytes (e.g., 2^14 = 16kB)
  parameter int BASE_ADDR = 32'h8000_0000    // Starting address of DMEM
)(
  input  logic        clk,                   // Clock
  input  logic        WE,                    // Write Enable
  input  logic  [3:0] byte_en,               // Byte Enable

  input  logic [31:0] A,                     // Read/Write Address
  input  logic [31:0] WD,                    // Write Data
  output logic [31:0] RD                     // Read Data

  `ifdef VERILATOR                           // Observe Signature Memory Region for Verilator
  ,
  output logic [31:0] reg_obs_0,
  output logic [31:0] reg_obs_1,
  output logic [31:0] reg_obs_2,
  output logic [31:0] reg_obs_3,
  output logic [31:0] reg_obs_4,
  output logic [31:0] reg_obs_5,
  output logic [31:0] reg_obs_6,
  output logic [31:0] reg_obs_7,
  output logic [31:0] reg_obs_8,
  output logic [31:0] reg_obs_9,
  output logic [31:0] reg_obs_10,
  output logic [31:0] reg_obs_11,
  output logic [31:0] reg_obs_12,
  output logic [31:0] reg_obs_13,
  output logic [31:0] reg_obs_14,
  output logic [31:0] reg_obs_15,
  output logic [31:0] reg_obs_16,
  output logic [31:0] reg_obs_17,
  output logic [31:0] reg_obs_18,
  output logic [31:0] reg_obs_19,
  output logic [31:0] reg_obs_20,
  output logic [31:0] reg_obs_21,
  output logic [31:0] reg_obs_22,
  output logic [31:0] reg_obs_23,
  output logic [31:0] reg_obs_24,
  output logic [31:0] reg_obs_25,
  output logic [31:0] reg_obs_26,
  output logic [31:0] reg_obs_27,
  output logic [31:0] reg_obs_28,
  output logic [31:0] reg_obs_29,
  output logic [31:0] reg_obs_30,
  output logic [31:0] reg_obs_31,
  output logic [31:0] reg_obs_32,
  output logic [31:0] reg_obs_33,
  output logic [31:0] reg_obs_34,
  output logic [31:0] reg_obs_35,
  output logic [31:0] reg_obs_36,
  output logic [31:0] reg_obs_37,
  output logic [31:0] reg_obs_38,
  output logic [31:0] reg_obs_39,
  output logic [31:0] reg_obs_40,
  output logic [31:0] reg_obs_41,
  output logic [31:0] reg_obs_42,
  output logic [31:0] reg_obs_43,
  output logic [31:0] reg_obs_44,
  output logic [31:0] reg_obs_45,
  output logic [31:0] reg_obs_46,
  output logic [31:0] reg_obs_47,
  output logic [31:0] reg_obs_48,
  output logic [31:0] reg_obs_49,
  output logic [31:0] reg_obs_50,
  output logic [31:0] reg_obs_51,
  output logic [31:0] reg_obs_52,
  output logic [31:0] reg_obs_53,
  output logic [31:0] reg_obs_54,
  output logic [31:0] reg_obs_55,
  output logic [31:0] reg_obs_56,
  output logic [31:0] reg_obs_57,
  output logic [31:0] reg_obs_58,
  output logic [31:0] reg_obs_59,
  output logic [31:0] reg_obs_60,
  output logic [31:0] reg_obs_61,
  output logic [31:0] reg_obs_62,
  output logic [31:0] reg_obs_63,
  output logic [31:0] reg_obs_64,
  output logic [31:0] reg_obs_65,
  output logic [31:0] reg_obs_66,
  output logic [31:0] reg_obs_67,
  output logic [31:0] reg_obs_68,
  output logic [31:0] reg_obs_69,
  output logic [31:0] reg_obs_70,
  output logic [31:0] reg_obs_71,
  output logic [31:0] reg_obs_72,
  output logic [31:0] reg_obs_73,
  output logic [31:0] reg_obs_74,
  output logic [31:0] reg_obs_75,
  output logic [31:0] reg_obs_76,
  output logic [31:0] reg_obs_77,
  output logic [31:0] reg_obs_78,
  output logic [31:0] reg_obs_79,
  output logic [31:0] reg_obs_80,
  output logic [31:0] reg_obs_81,
  output logic [31:0] reg_obs_82,
  output logic [31:0] reg_obs_83,
  output logic [31:0] reg_obs_84,
  output logic [31:0] reg_obs_85,
  output logic [31:0] reg_obs_86,
  output logic [31:0] reg_obs_87,
  output logic [31:0] reg_obs_88,
  output logic [31:0] reg_obs_89,
  output logic [31:0] reg_obs_90,
  output logic [31:0] reg_obs_91,
  output logic [31:0] reg_obs_92,
  output logic [31:0] reg_obs_93,
  output logic [31:0] reg_obs_94,
  output logic [31:0] reg_obs_95,
  output logic [31:0] reg_obs_96,
  output logic [31:0] reg_obs_97,
  output logic [31:0] reg_obs_98,
  output logic [31:0] reg_obs_99
`endif
);

  // Compute Total Words
  localparam int MEM_BYTES = 1 << SIZE_POW2; // 2^SIZE_POW2 bytes
  localparam int WORDS     = MEM_BYTES / 4;  // Number of 32-bit words

  // Internal Memory Array
  logic [31:0] DMEM [0:WORDS-1];

  // Observe Signature Memory Region for Verilator
`ifdef VERILATOR
  assign reg_obs_0  = DMEM[0];
  assign reg_obs_1  = DMEM[1];
  assign reg_obs_2  = DMEM[2];
  assign reg_obs_3  = DMEM[3];
  assign reg_obs_4  = DMEM[4];
  assign reg_obs_5  = DMEM[5];
  assign reg_obs_6  = DMEM[6];
  assign reg_obs_7  = DMEM[7];
  assign reg_obs_8  = DMEM[8];
  assign reg_obs_9  = DMEM[9];
  assign reg_obs_10 = DMEM[10];
  assign reg_obs_11 = DMEM[11];
  assign reg_obs_12 = DMEM[12];
  assign reg_obs_13 = DMEM[13];
  assign reg_obs_14 = DMEM[14];
  assign reg_obs_15 = DMEM[15];
  assign reg_obs_16 = DMEM[16];
  assign reg_obs_17 = DMEM[17];
  assign reg_obs_18 = DMEM[18];
  assign reg_obs_19 = DMEM[19];
  assign reg_obs_20 = DMEM[20];
  assign reg_obs_21 = DMEM[21];
  assign reg_obs_22 = DMEM[22];
  assign reg_obs_23 = DMEM[23];
  assign reg_obs_24 = DMEM[24];
  assign reg_obs_25 = DMEM[25];
  assign reg_obs_26 = DMEM[26];
  assign reg_obs_27 = DMEM[27];
  assign reg_obs_28 = DMEM[28];
  assign reg_obs_29 = DMEM[29];
  assign reg_obs_30 = DMEM[30];
  assign reg_obs_31 = DMEM[31];
  assign reg_obs_32 = DMEM[32];
  assign reg_obs_33 = DMEM[33];
  assign reg_obs_34 = DMEM[34];
  assign reg_obs_35 = DMEM[35];
  assign reg_obs_36 = DMEM[36];
  assign reg_obs_37 = DMEM[37];
  assign reg_obs_38 = DMEM[38];
  assign reg_obs_39 = DMEM[39];
  assign reg_obs_40 = DMEM[40];
  assign reg_obs_41 = DMEM[41];
  assign reg_obs_42 = DMEM[42];
  assign reg_obs_43 = DMEM[43];
  assign reg_obs_44 = DMEM[44];
  assign reg_obs_45 = DMEM[45];
  assign reg_obs_46 = DMEM[46];
  assign reg_obs_47 = DMEM[47];
  assign reg_obs_48 = DMEM[48];
  assign reg_obs_49 = DMEM[49];
  assign reg_obs_50 = DMEM[50];
  assign reg_obs_51 = DMEM[51];
  assign reg_obs_52 = DMEM[52];
  assign reg_obs_53 = DMEM[53];
  assign reg_obs_54 = DMEM[54];
  assign reg_obs_55 = DMEM[55];
  assign reg_obs_56 = DMEM[56];
  assign reg_obs_57 = DMEM[57];
  assign reg_obs_58 = DMEM[58];
  assign reg_obs_59 = DMEM[59];
  assign reg_obs_60 = DMEM[60];
  assign reg_obs_61 = DMEM[61];
  assign reg_obs_62 = DMEM[62];
  assign reg_obs_63 = DMEM[63];
  assign reg_obs_64 = DMEM[64];
  assign reg_obs_65 = DMEM[65];
  assign reg_obs_66 = DMEM[66];
  assign reg_obs_67 = DMEM[67];
  assign reg_obs_68 = DMEM[68];
  assign reg_obs_69 = DMEM[69];
  assign reg_obs_70 = DMEM[70];
  assign reg_obs_71 = DMEM[71];
  assign reg_obs_72 = DMEM[72];
  assign reg_obs_73 = DMEM[73];
  assign reg_obs_74 = DMEM[74];
  assign reg_obs_75 = DMEM[75];
  assign reg_obs_76 = DMEM[76];
  assign reg_obs_77 = DMEM[77];
  assign reg_obs_78 = DMEM[78];
  assign reg_obs_79 = DMEM[79];
  assign reg_obs_80 = DMEM[80];
  assign reg_obs_81 = DMEM[81];
  assign reg_obs_82 = DMEM[82];
  assign reg_obs_83 = DMEM[83];
  assign reg_obs_84 = DMEM[84];
  assign reg_obs_85 = DMEM[85];
  assign reg_obs_86 = DMEM[86];
  assign reg_obs_87 = DMEM[87];
  assign reg_obs_88 = DMEM[88];
  assign reg_obs_89 = DMEM[89];
  assign reg_obs_90 = DMEM[90];
  assign reg_obs_91 = DMEM[91];
  assign reg_obs_92 = DMEM[92];
  assign reg_obs_93 = DMEM[93];
  assign reg_obs_94 = DMEM[94];
  assign reg_obs_95 = DMEM[95];
  assign reg_obs_96 = DMEM[96];
  assign reg_obs_97 = DMEM[97];
  assign reg_obs_98 = DMEM[98];
  assign reg_obs_99 = DMEM[99];
`endif
  
  initial
  $readmemh(`DMEM_HEX,DMEM);

  // Synchronous Write Logic
  always_ff @(posedge clk) begin
    if (WE) begin
      if (byte_en[0]) DMEM[(A - BASE_ADDR) >> 2][ 7: 0] <= WD[ 7: 0];
      if (byte_en[1]) DMEM[(A - BASE_ADDR) >> 2][15: 8] <= WD[15: 8];
      if (byte_en[2]) DMEM[(A - BASE_ADDR) >> 2][23:16] <= WD[23:16];
      if (byte_en[3]) DMEM[(A - BASE_ADDR) >> 2][31:24] <= WD[31:24];
    end
  end

  // Asynchronous Read logic
  assign RD = DMEM[(A - BASE_ADDR) >> 2];

  // ---------------------------------------------------
  // Address-to-Data Mapping
  //
  // Each data-word = 4 bytes (word-aligned).
  // Word index is computed as:
  //      index = (A - BASE_ADDR) >> 2
  //
  // Example 1: BASE_ADDR = 0x0000_0000
  //   A = 0x0000_0000 → (0x0  - 0x0) >> 2 = 0  → DMEM[0]
  //   A = 0x0000_0004 → (0x4  - 0x0) >> 2 = 1  → DMEM[1]
  //   A = 0x0000_0008 → (0x8  - 0x0) >> 2 = 2  → DMEM[2]
  //   A = 0x0000_000C → (0xC  - 0x0) >> 2 = 3  → DMEM[3]
  //
  // Example 2: BASE_ADDR = 0x0000_1000
  //   A = 0x0000_1000 → (0x1000 - 0x1000) >> 2 = 0 → DMEM[0]
  //   A = 0x0000_1004 → (0x1004 - 0x1000) >> 2 = 1 → DMEM[1]
  //   A = 0x0000_1008 → (0x1008 - 0x1000) >> 2 = 2 → DMEM[2]
  // ---------------------------------------------------

endmodule
