// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sun Nov 18 23:51:52 2018
// Host        : tao-linux-vmware running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/tao/DCE/lab9/lab9_3_3/lab9_3_3.srcs/sources_1/ip/c_counter_binary_10/c_counter_binary_10_sim_netlist.v
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
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [5:0]Q;

  wire CE;
  wire CLK;
  wire [5:0]Q;
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
  (* C_WIDTH = "6" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "111011" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "111011" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_10_c_counter_binary_v12_0_12 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "111011" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "111011" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "6" *) 
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
  input [5:0]L;
  output THRESH0;
  output [5:0]Q;

  wire CE;
  wire CLK;
  wire [5:0]Q;
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
  (* C_WIDTH = "6" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "111011" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "111011" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_10_c_counter_binary_v12_0_12_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
JeAO9Ev9g8rgBfA3IpPK0PRvt+hWs4GCAvBXT3dNi7Du5JxrUVgSUnX780rkEr3Y9iS0lwfpt732
Ra/x0reokKrwipjqFrCHC6uR7UZ6kpQxYOeUsb/DdDTp4A4HEPpK93WCj50uSBbqk72ayGS3u6t6
eJvprCsG9hbAhBfyVp/0bYv1fw4KugOlrx/xd8Mmh6ICPLy+FC8KH1wy0AuwFaDYSSQrsBgWyvz9
LbZZhgNahRnrF5qLJ2uZfFFU+BrvECNcMqTS5B3WuZnzvY9vVT+U+pO5O+hdGYaj+xvCMICc77xd
4R6Sm4sxx9I4OYq0kkqMj8nDkcQup0w5EW6dpQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CddHj174e0TxNFjwiZq9G+by33pGkENfVxnElE6owvJmU35MrBsSFWF3l08TeQItCHXOedG5EEzY
rm8QNRENGpJletBLaVOz9ov7vTDF+UcnWga3CJAlM0qQmxS3DdBTUgP1B/oB1INgRYc33cVFqSL5
xrGpeXSvqmZftaG2nWHt7QdUv3BoaFT2/gzg/CO+Rrk4PF43hvEBDQpV73zBXDJ0ZKgnm7Sqt2cN
4GNBEHCTAYGSbX+iNmbkNLxMlqbCjhZMf9KGwtXSQf1wfseLE43lNCRm9OL6ER0xrh6epjuzNyRd
vfUX9EktXRsEF63xHTKh2v1kcyxNIfKBdQiUvg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8080)
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
