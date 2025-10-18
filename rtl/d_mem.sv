//
//  Authors: Jeffrey Claudio
//  Latest Revision: 10-16-2025
//  
//  Project: d_mem.sv
//  Description: Data Memory
//  License: MIT License (see LICENSE file in the project root)
//

module d_mem
(
  input  logic        clk,     // Clock
  input  logic        WE,      // Write Enable
  input  logic  [3:0] byte_en, // Byte Enable

  input  logic [31:0] A,       // Read/Write Address
  input  logic [31:0] WD,      // Write Data
  output logic [31:0] RD       // Read Data
);

  // Internal Memory Array
  logic [31:0] MEM [0:255];

  // Synchronous Write Logic
  always_ff @(posedge clk) begin
    if (WE) begin
      if (byte_en[0]) MEM[A[31:2]][ 7: 0] <= WD[ 7: 0];
      if (byte_en[1]) MEM[A[31:2]][15: 8] <= WD[15: 8];
      if (byte_en[2]) MEM[A[31:2]][23:16] <= WD[23:16];
      if (byte_en[3]) MEM[A[31:2]][31:24] <= WD[31:24];
    end
  end

  // Asynchronous Read logic
  assign RD = MEM[A[31:2]];

endmodule
