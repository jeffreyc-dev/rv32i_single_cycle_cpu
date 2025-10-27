+access+rwc
-gui
-timescale 1ps/1fs

+define+IMEM_HEX="\"../sim/i_mem.hex\""
+define+DMEM_HEX="\"../sim/d_mem.hex\""

../../rtl/my_pkg.sv
../../rtl/mux2.sv
../../rtl/mux3.sv
../../rtl/mux4.sv
../../rtl/store_unit.sv
../../rtl/load_unit.sv
../../rtl/barrel_shifter.sv
../../rtl/adder.sv
../../rtl/alu.sv
../../rtl/extend.sv
../../rtl/reg_file.sv
../../rtl/control_unit.sv
../../rtl/pc.sv
../../rtl/i_mem.sv
../../rtl/d_mem.sv
../../rtl/rv32i.sv
../../rtl/rv32i_top.sv

../rv32i_top_tb.sv
