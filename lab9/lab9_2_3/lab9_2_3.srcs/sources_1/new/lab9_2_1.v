`timescale 1ns / 1ps


module lab9_2_1(
    input Clk100MHz,
    input enable,
    input up,
    input reset,
    output [7:0] out
    );
    wire Clk5MHz, Clk1Hz;
    clk_wiz_0(Clk5MHz, reset, Clk100MHz);
    clock_divider(Clk5MHz, Clk1Hz);
    //counter(Clk1Hz, up, enable, reset, out);
    c_counter_binary_0(Clk1Hz, enable, reset, up, out);
endmodule
