// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Wed Nov 14 19:57:30 2018
// Host        : tao-linux-vmware running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top c_counter_binary_1 -prefix
//               c_counter_binary_1_ c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module c_counter_binary_1
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
  c_counter_binary_1_c_counter_binary_v12_0_12 U0
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
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_1_c_counter_binary_v12_0_12
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
  c_counter_binary_1_c_counter_binary_v12_0_12_viv i_synth
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
moRX7tldMa9JqY6MDBscOq81k55TjeBjiv0ZtMnxwXA5wJcKpY/ZfzIQ0JHrJxTtPoiCp+8fVNS6
QhjMUSlqEIPoFtN9iir6FAL9BO0U/RRaS08V5ef1pv21Psq7ful6KXWO6we2r30m8YGdALKXg+b1
2TgyVU2NzlozFkngzLfmQQOj/62YOfjkwOhUVV3vGKYrgj+/oz64ZNToB61gHRnRmKtGJis0cgik
3TPhnQNjuP+GaDpmksHPaBGH1bJ8JGLjxix6K4S3ogc+vU4O/AYy3BPIVaU/UHymWd0qLr0gdj3o
C2uJJBPSBIayOYaKAtrRZnLAJ0BgXQ/TSwbvew==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Gqit/KJNPDzHYObijy68nF+LIJeGgHHRTXbnpc7DWn2SAtSSTHjNrEIku98xmnL0ztzJZYSyeYJX
LQ7KbYqoj4mHKXI8iv77cA4zTlKPA4Qt/JMx9aEd/9tG/2z/VezMN/U7p6NqtR7y7U81TkwfXMFz
7oQDeHb/FmAu+RVgH0A3jwjvENTvoNd1sjGRNIfUXpwuBnZZnNoobdhpZa07aOeq2NVOcdiEu6Ep
f7XJcd2hLufn02EbeWiBg8LUmpLuhHLNmjQ1+kEf8fhdNXYZllXRMeSCulG/6DsL4l7+UOXMqYL0
8Me8gsCCuHRzs0lPcSXZNVbe/5uxwHRKwjeyTA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6448)
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
