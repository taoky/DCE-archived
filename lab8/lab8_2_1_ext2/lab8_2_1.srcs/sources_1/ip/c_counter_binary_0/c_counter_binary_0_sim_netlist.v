// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Wed Nov 14 19:57:31 2018
// Host        : tao-linux-vmware running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/tao/DCE/lab8/lab8_2_1/lab8_2_1.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.v
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
  c_counter_binary_0_c_counter_binary_v12_0_12 U0
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
  c_counter_binary_0_c_counter_binary_v12_0_12_viv i_synth
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
pis94GYWFi6TThzHwaay4LcCgCaryxeAjLeq1U2LI5/BUygqzSsmlkbUd505l5z7CSr1W9sYfLmF
ZBhla/G3XrCXhGkaXgezHuXgsKGVEyIGGBY8hR7OlEZ68rAfR9AnHbXrBbZ4lJbyuYSmFjxrJy6c
kc4SVn6jvronUadTDlEL/J/Whr9sqW/RmK8f1cyN0t6ASBaVgChYIqQV+KHlfbtu09HwhP8168hS
qXCB/zJ3weBHfiWYcv7FDUaF9MTV/rdtqAkt+UI1+O0OWBel2RC4npyteRsj8SCRBMFp+Uf6qshD
soqij9SMg/Z8cuFE4twDpu14Isy554SGPz+saQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bOCkXcusxXYDzANsyW3r+Wl6us+zCEs7TWg1W72CjWePBypiZwEKwJyvwZ/EFVfVuzBnKseGzKY0
eRVhidwYtPjzQ+3d/UsydJqxS0o9aNSVAWbpOgB/HnWho6P1XumBVkNon8p7m8zvZy+SFLR4Ve0+
F0Vnru5YGqXV/e3zWOaF5gtaORDfR4ZKRNg7Nn8/yCMJNUH7g4hlGCgpRB7XmlpVPuW5SttgEFVh
vb6AeV/L0ZWQlrRr9kdOrLcUGekVYOXA3p3N5VWFioxwE8EHSBno5YyfnuAs8ln+eXJTpgFzBZdg
vwZvfNfpTmPGpfbN1u+oh09yBYvSfK622haddg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6512)
`pragma protect data_block
+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
fEdi2iLtAwowQ1Rm4Ik=
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
