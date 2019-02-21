// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sun Nov 18 23:51:52 2018
// Host        : tao-linux-vmware running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode synth_stub
//               /home/tao/DCE/lab9/lab9_3_3/lab9_3_3.srcs/sources_1/ip/c_counter_binary_10/c_counter_binary_10_stub.v
// Design      : c_counter_binary_10
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *)
module c_counter_binary_10(CLK, CE, SCLR, THRESH0, Q)
/* synthesis syn_black_box black_box_pad_pin="CLK,CE,SCLR,THRESH0,Q[5:0]" */;
  input CLK;
  input CE;
  input SCLR;
  output THRESH0;
  output [5:0]Q;
endmodule
