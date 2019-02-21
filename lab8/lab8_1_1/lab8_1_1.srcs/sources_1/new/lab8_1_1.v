`timescale 1ns / 1ps


module lab8_1_1(
    input CLK100MHZ,
    input reset,
    input enable,
    output Q,
    output dcm
    );
    wire Clk5MHz, Clk1Hz;
    clock_divider(Clk5MHz, Clk1Hz);
    assign Q = Clk1Hz & enable;
    clk_wiz_0(Clk5MHz, reset, dcm, CLK100MHZ);
endmodule
