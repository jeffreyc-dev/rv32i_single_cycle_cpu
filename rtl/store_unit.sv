//
//  Authors: Jeffrey Claudio
//  Latest Revision: 10-16-2025
//  
//  Project: store_unit.sv
//  Description: Store Unit
//  License: MIT License (see LICENSE file in the project root)
//

module store_unit
(
  input  logic  [1:0] s_sel,    // Store Select
  input  logic [31:0] RawData,  // RD2 from Register File
  output logic [31:0] WriteData // To Data Memory
);

  always_comb begin

    case(s_sel)
      2'b00 : WriteData = {4{RawData[7:0]}};  // Store Byte
      2'b01 : WriteData = {2{RawData[15:0]}}; // Store Half-word
      2'b10 : WriteData = RawData;            // Store Word
    default : WriteData = RawData;            // Default
    endcase

  end

endmodule 
