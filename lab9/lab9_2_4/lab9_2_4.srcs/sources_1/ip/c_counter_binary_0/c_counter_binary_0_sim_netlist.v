// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sat Nov 17 18:22:48 2018
// Host        : tao-linux-vmware running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/tao/DCE/lab9/lab9_2_4/lab9_2_4.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module c_counter_binary_0
   (CLK,
    CE,
    SCLR,
    UP,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 up_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME up_intf, LAYERED_METADATA undef" *) input UP;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [7:0]Q;

  wire CE;
  wire CLK;
  wire [7:0]Q;
  wire SCLR;
  wire UP;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "2" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_12 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(UP));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "2" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "8" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_0_c_counter_binary_v12_0_12
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [7:0]L;
  output THRESH0;
  output [7:0]Q;

  wire \<const1> ;
  wire CE;
  wire CLK;
  wire [7:0]L;
  wire [7:0]Q;
  wire SCLR;
  wire UP;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "2" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_12_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L(L),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(UP));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
nnt4hpm8aMeHj7Ghlfbft25wCDSU4OgHSYgohY5Y54OVk/ZF/3/A/1b58fvKplqLYq8SNPaFTeCI
yugxb4XKPA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
icRB/fOZDWyBabMGd2m0JhukfnHCgsonFqJLnbFiHqD4HAq532BpIMPsTzpuAnC2rpknvyTqUyNp
zmJV0F6HEz0B1BGhBWnWQWdUPOecb25tLs+HSnew62d+ujGd8F13AaXdqIxZe7XJ+oOhHoHhftLN
PVzwMLuHPFC02rrHF5U=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UY3ILsM3DuZnc+XV/RUWvQudTdoUz1tkAgav0BAHvgsM5yBjdXDC31ZmzwEomTATGQA3ZyDP1IDL
GXtKbgQ+Cd8kP0mzW8uQLpCA3FUxCYqGIOkrz1AGh8jX5JuHEvHCWemoS+uYgbVwGRgNn36iGiSU
gxGxGxdh2dlgJ5TnZBiEIX0KhlcoFalz5hmVTHOhhNB151SriAh/a7nvbZZdKagnqHLBGnsXr3X2
hj5Ufi+imJE/MbA3k0WSVJ4K4e5uzS7+rQaV7dfOOnqtxha/GLsZlIe+0/cSPegx5a1wR5/zNvZt
BjRWlUOjXOajbYx1DXcjwQJUCOW/mYg7roilCA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Slli2CcwGUT/eLLglKtjS4wUNMwN9NHiNCUArxZPrQCDFj2jhlUE28LL+IBGjrR+qAtIFykC9Kd9
3eCP9pujYo2DPdVUfuJULZV2Ow2d/+Zf5Mnl7hwkv3QsIu23MMfg+lCwO9PbciWGT7M4tuIOaDt9
gcvijNKNayVH/TgLuZmnfRcPwBpc/J8XAcme4fDtiSN81WJiamjnOditpRqGbcdTwO131y3Nf8IU
sOBj/rKwh/WiQn2F7WQwKwRx1RG7KWbvxZ7AKvotMiiicQ4EeMLyar6qr288WdRWnzO40o3xfNf9
XcEV9DFEH5pf6mlO7Be+8poeQfF48BYr0oIWsA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vuD5k8BVxa4nKjQQQ+WKvoQLLI56XSBoO+N6Qlv4P2y6A1vklc08REN048SZS7CnH5rLUGlX+L+9
fd5VyDJoxFwuO+7w6acZY9orT2bwypP1gs++inV5X8k5aesVPhn5W5ZLNBx3f2u68cgOZ91cv7Tb
l27FG3cu02IjM24oe/guAhidJTAyYUgfasdILVTBFK7U7Qgqxrrtk9P5fQ7hgv3p/dnNUgVcsmUN
WLgfDR6BhoxTTfVJ3LsVLbRONPCncrmpSZN9u0gN4Ppjc6IoJlWVtcVVe8e5+AsCgtYtEC7c5uV3
ZzcSv8V9D5QSRKzac/hcIss/5ig5V2e7Odq1Ow==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
MnSIaBDkmU6w1uv4HUaSfyV1n39EmtmvDL4skDTuSqIic/7uyYxdyxkI1yYPW83e1uADyCVxLgIF
QWykei8H4LBD2qPj35xMB0VUiGklNVrf0xPw7A9zc+TaWRZbe2fUzVBYNGCZRONUmFhpErrW3ZTm
DGatJQqh0zL7zm6RtM0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MKqZgbDvPEkX3ewZ4OGZSdUgYTLha4IvHZdTjQbGb00U8YWqnUlofBnOzBnxDcKNxtcZr7tRVEhw
kraDbaXkY7kZztTYdYH4OIPzHav6NHz5mCM1y/JJ9LeFzH58+3usISA/dOz35h199Zr92CNRUFam
2jVWlIcu5zPNeve8tgzRX6nW7B14Chd6hqXLtQgEIHqi8YzTiDcZ0IasUfzqR0s3tKkzjMCC9/w7
bThLIredtKAIcJsjllEJm7S6cloYWgTjZHdOti+DRmdqPHf0yB6CaYa5wIK85A0vbRUG90uBivfI
+je7B+2BZvmSOa3QJP1N3EeJyT89YDYnpJhiDg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jUKxKsOyBHdbKqnBsoUFakqKqanLPVt3sKqqO+4QT+BDgQhO8Oax3Nj86vkivEM56Zjl5v0oQQn8
L1XTbhQexbDC4/Q8rFh+v3MUdJVD8hW6d0mxdsq9qOp2IJ9s/+mVRHk375B940F3wERRJaM1tjZY
xxgFvYYkwFskt8e0RVLmcYK5AcJbPg2w2q1djgWNtr6hzqnzuCGrHd6NFcwd3m6V/2d0ZEtKDwGe
OLRNniqgfRO3E4TizFANpCbjILc57xvJzdkjNpF/47dHFLrrUAIVsNxvXR0/j5SEcxee8BCcoKTS
8XVUEi6UGGWRu8P2zegihXXXGHk7bbClbHHVLg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PA2OlJa548jQ4NoCWEjmQV0w3U5If1ipjOpzJs0m3Irqfb248dnnP0OfazlL6Pg81MHTdMQqUAHR
F7Y0nOwlFWX4acCcA/WYtt9poNhu+WqO+6zXWxbPUMcEaS/68zUDr/7pJYHFr9nvjbt7Kxf5Oc34
nqxU7Z5S61XND/ZdKurXnSzXRwEA1Xr8z+NonF7jo6Jt4DhfdqpnYxz2txsSTBY2K6GHwlOfHOqI
Aj8hbAl15hFW3bFcv4vo0egvQ3sCN/9AKjWmv59Cj8wxs2QXBoj0IFh8NbZjSoUm0aZmkIcdMa3f
xKUK0GZO6qWQyozxHzcJCaa62WUdb0vO+N00cg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12224)
`pragma protect data_block
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
/NwpkWW1AME5FsQBPyuZ3CQvAIFlHv45quQ=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
