// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sat Nov 17 18:01:34 2018
// Host        : tao-linux-vmware running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/tao/DCE/lab9/lab9_2_3/lab9_2_3.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.v
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
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "2" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
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
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
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
  wire [7:0]Q;
  wire SCLR;
  wire UP;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
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
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "2" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_12_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
gMv/cVeqHH5IEfs2sQKybpo2qy548ayp979K66+Ce7Lfbnk3SlfRbbj/hiKSkK9c6bKz9RaFas3A
WazFKQHUPoWIS2iXJT9IjzWUUOc7FUvgVDWGQWUjlrmdTN3H50e4TI2IREY5NkTvgD8W7glETLOw
7S0vl4/LzCOtX8YyDNXVi4pLsm6hw/LK1SjIPTtG7kZARAjucNX9Urt6xqbDtzD76grnxTZ0g0s5
8o+LtgxMibrbP3hNonSImXKSJrdP4OVXOk2MNJ69UGx6dx22JYcYJYxJDm09PFG3pQsxb8E/mQ2n
qkwuNq/02PzBGShk5LKcSJ2qAanOSx27uCi+pg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
S6mGLISIFRtjT1ZgGhQ3TzTjBbiEHcYL3Op6yb2HuXUT/BBb3yR1dz8yoNZ+bFT1liS7xzSbKTYc
XeECtju7yW2YNDpCvlusdlVRgReLFIJIABdAl9hKxv5r2r7pCK4KlUnl252Un1nwrZEZWgsBADoi
17+3O9FEqOuxDNydJwx9tvX2Sqxw2amuG0PwcxP//uNU+yjxMXz5C0oH+bGeii25+/WEy+rv1jIU
oP3clIsNiBYOmEunMqmcYHLoGNcRL59SzwV4VlXf0WbxW2b7AjA61EmoWNkSvZ1iq2rEmOAMoQVt
1ETbjK63vG158ApCYjAKM7QpBCtwsjKxcAS2Bw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10592)
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
