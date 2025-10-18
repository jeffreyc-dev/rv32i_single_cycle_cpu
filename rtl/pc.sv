//
//  Authors: Jeffrey Claudio
//  Latest Revision: 10-16-2025
//  
//  Project: pc.sv
//  Description: Program Counter
//  License: MIT License (see LICENSE file in the project root)
//

module pc
(
  input  logic        clk,
  input  logic        reset,
  input  logic [31:0] PCNext, // Next PC
  output logic [31:0] PC      // PC
);

  always_ff @(posedge clk) begin
    PC <= reset ? 32'b0 : PCNext;
  end

endmodule
