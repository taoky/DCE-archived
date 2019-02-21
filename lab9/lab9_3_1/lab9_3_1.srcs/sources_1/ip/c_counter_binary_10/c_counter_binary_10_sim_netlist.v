// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sat Nov 17 21:00:32 2018
// Host        : tao-linux-vmware running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/tao/DCE/lab9/lab9_3_1/lab9_3_1.srcs/sources_1/ip/c_counter_binary_10/c_counter_binary_10_sim_netlist.v
// Design      : c_counter_binary_10
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_10,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module c_counter_binary_10
   (CLK,
    CE,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [3:0]Q;

  wire CE;
  wire CLK;
  wire [3:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1001" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1001" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_10_c_counter_binary_v12_0_12 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1001" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1001" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "4" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_10_c_counter_binary_v12_0_12
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
  input [3:0]L;
  output THRESH0;
  output [3:0]Q;

  wire CE;
  wire CLK;
  wire [3:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1001" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1001" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_10_c_counter_binary_v12_0_12_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
RhedCTftnR/lFLJouqVu00X8CC4TkDlMiW/WeWJSYDyQHVO1xW1z9+hmgAziXI4s3uGElBs9cXRS
4yVMV7QH0w==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
qX90FYlZfOA3sZpcv0rrvWRKCSlr3skWpeAe5OSxHcZPsVQFyY0hhWVDtP/vB+dV9hIUwAN29Fn9
+L9OEXYMlIw5gH6s9NmquAs3lmPRLTrrpKJWdvf6+b+LeG9CPwLz87bXAk4qQW80zUHBaDKDLV3q
pd/gEf8Y3st+mLOGjNU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
chpH3Rj5RAirYZHkpJvTu4EJpydPPSy15v646y2lN/1w3bwHI+M8EpLMBjimx8uIWRJZ6dDWPR8E
zkwK1TMroEKFaL8IkFMSHPyzqbrH9l1jxYFs0ee8Itp8Rg8qenv5RXM+h4JRTtRmzHk1A8s8zeKY
MgXzIBCAzBa/vSgzDuDaUnO8r8f/5KtRjmE28JLNXXAxyijBrMTCiIHMRJZL5/+LgUyVq7/Zr5yx
7kuNGWv7Q0wESEqhsQbK6UNel5ak1cor7647dYJgIxnNZ6jGVJPkqi8ydAIZ0z0Dy4txBvVaMyP6
2kYYnbVN6S6q6yr/QcJHEOgefF59B/8JuWzdoQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z2XauOF3/9FUIv1kEFfEtdy93+zHY5q9dH1pJCNLytoWWhhJBfCI5Uc2w/fQLrvVw2Ivy0/rs9qH
9fomTNECWeCphNDVpWGNcFDGE51jt6SDWt7FmgfZq4iXN7XWrfmkQa4DB7QbtSBHCMcBT53TKbDH
suKNhAWMV0htWeNEgN4Y0biiz8U4RLT1stdsMMtEzfYVhtrTmFWLihJ/9gJ01pm/kv4OB2cJEslg
sjbxCE2B4Y1uSj93tnBAw4/f2RYGfPcSrkaXkNgOYK2dc5NQgd82XvP8siAK/ETcZQ1lBK367Rxv
nlr6QUMwKALmjLVe/IThpCRGbOSy3QykkwnpHw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F/mF2RV90mf5PFUZZUjMej6jQS+Qx16uCeiDQxUX+H+O2yjP6UECegDbtLmGk9algbDuGBCE0KgZ
HzSxX5pMwDq1J7nFyBsu1dGyu8NeJxfu0fFA/qS/SYJSTtwnZ/eIj09mNLJ3w8wGR87ke1ETTRpx
4Ni9DzGJ/aaWFaUenL/x4UWS9yqlaNi5Utcpa4kcUHC6fW0asZsThZJBqpArO54TF40nxZAD+V82
6mBGFOKUzgmHqXNsbVif4JqUd63LG8YWxjrOeesq61xzyjw9caQMuA9v/5sQslCFaeSt2atgqyaA
y4mcm0kU60s6mYqJr4KZt8DWG7LPGoIjhjpnMg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YNrNxIZl8p2OCPz+4Y4awQ09ZZ41X8EdKu2SX1gXfB3qoV3EOXf4eFHtYJ+bFIccfEIqPfZ+dnr7
udcSDAJMcxqZe+YNk5hTq+uX4PlnQH/IVlkgyYiDhQ7aRIS5pwtIRC3biXn80933ov4zlWLI+ZBq
bG8lodZjxKh6HZPWi7s=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eWToRZf4bzAQhHTj44yEkOqolJ3BOvlBPKnKoDCpSvCHSrnRcJKgOd47PnboABTqLVstQenz8AFe
rWHBbaad7KOIh3LsEXBwDHKDdby7iDAB5nd3j2Wp7qiHOv7WpIJ5RG1GMQa8+QXHMVaV4jSvsdmt
d0D9H0WEVaqrSFW2ucpsMYNE0LnKcSJ1SejKOcgISzaGJgXcmEAOVAOnCDPc4slwc3dt7Jne1KvY
i66An36Mfhhd1b0RikMf4yqpM+uVrL5XWIP+TBtw3iQRE0ZkUSn3K0My73/2vKKBfwyV0c+M/Il+
aMxNaD44Gq+/f6zGjkelgMEI4BjB5rs1KRvSCg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QqtCyYcyNz20uZBEZaWPc4f69y4mgydNRaoX6ERElfD01bUCrfKaXVyFQZ1LqI9v27jdVIE1DG+E
XjyAoscY+KAWElhYfbcCJ7cLm9vKVVVCfUeQDglZfR12ViXOSOZsrpjAWguoobx0jrEoSBQHqpv2
o0rH6Rc/4b6cOk3IaNf92qwMjHLxv7UcsSgvcpVQz5SD6pOThSSlRescayb5XO5Za6ahSzxd/8DC
H9mVG6HHqxQ+UtPsSxXYtZ0X7sxRjvKniII3Dii/AuyM0nimMSCoeSxAwfkokxKHIfeHxYGtTMJL
KaAmdhFmdhMs87+pB8h6/SZuwvLEDqNZ4rX9GA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NsmGqfqo9SX+HU9CPAopHBhmZkHUXZHLrnPrYQNs6cqzhNUi+OSRBbj82FtSBSI7r8xQWNDINP14
fQX5w+QKeXLYufjJZo9SyhffbN2NPQarS3bJMKNRHMShpB56/BBdI/NFRW2f6ojS1hiu3+PTqGVX
iWSNgvzIJrHTmlN1mUq44EMr1bKtx3HtEWHjp9H6tIbBkEA0oAiGoulBwOM1O1EEPoHZRHGjp+ou
+RHEGy3FC8cMxNVclmwkMNAkD28vLKzjbBCKygQVX1eMX0+0H52Q997kUO9z32Z1IB3sgHYwwi5u
08fIhuW2omkUV+mZjuk5Uj9IoiG/wcsc0wtknQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6528)
`pragma protect data_block
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
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
