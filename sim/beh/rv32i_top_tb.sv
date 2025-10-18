//
//  Authors: Jeffrey Claudio
//  Latest Revision: 10-16-2025
//  
//  Project: rv32i_top_tb.sv
//  Description: A simple behavior-level testbench for rv32i_top.sv
//

module rv32i_top_tb;
  reg clk = 1;
  reg reset = 1;

  always #100 clk = ~clk;

  initial begin
    repeat (10) @(posedge clk);
      reset <= 0;
    repeat (200) @(posedge clk);
    $finish;
  end

  rv32i_top u_DUT(
    .clk(clk),
    .reset(reset)
  );

endmodule
