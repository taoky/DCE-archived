// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sat Nov 17 21:03:08 2018
// Host        : tao-linux-vmware running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/tao/DCE/lab9/lab9_3_1/lab9_3_1.srcs/sources_1/ip/c_counter_binary_6/c_counter_binary_6_sim_netlist.v
// Design      : c_counter_binary_6
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_6,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module c_counter_binary_6
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
  (* c_count_to = "101" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "101" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_6_c_counter_binary_v12_0_12 U0
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
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "101" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "101" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "4" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_6_c_counter_binary_v12_0_12
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
  (* c_count_to = "101" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "101" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_6_c_counter_binary_v12_0_12_viv i_synth
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
ibFvA48WlbXimhezY0ClY/a7BiOnKVFsCmvtrmbJFxqJy3uB9h/UAch8fx7GDeX8EwhEQB6xBL5C
La5LcYaot+akiR2P8R+PaHEILWDcZowQMjY2QtQnrF6u7vSEeXv3QomHKhV3IAVO7mkKwvwPChO/
x3rSxmf5vuhyYstiTU9ESdtLYHHkM70LSNd9AGXMT06ZUJ7YfTQfdnoT2M3yQnriZmDtX3YvLbC2
Heic0n5N1mrEBW/yTHXUVeftO7kZksLZeKkBPV7/3GqjwT7jfGtpRpoPTLybRC9VU8WT6Q1w7l++
CxFvwilOIHvYnDI4wJgiluHSCpuq9rxl4Ids+Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pkQ+nwTO4hihmQa+l2qj7xoEmXUgI1TPgX0YscnU4wFtuBHWei9jVvCEHK2sxFGVzNp+envyFdWx
8N56T6pB2DKdJFqXNl7YxZrDzfV1MBuRmWabUfqSwkjkEkLq99FvA0xagGG4Ioi3AXeBs2TexZ5A
oGuYWjfc6OSmfbDZ1dkiXXfd7IzqkynR98mMf1GZ6J7CimFTVAyt1ZtQIH6obyK0+YKQEWyPsvML
T7+zjG0HGNpzi4aQJKbWuYWiHiXj6QHQaPcSYvLCgiMVBW0CsJxh8OCCm47HlkLG9XCzB09OQsP2
5TPptb7mapKLhM3Vihw+Cb59BD5K8vhijqLD9Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6512)
`pragma protect data_block
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
g57i638mso/2LOSFtgQ=
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
