`timescale 1ns / 1ps


module lab8_2_1(
    input Clk100MHz,
    input enable,
    input reset,
    output [7:0] an,
    output [6:0] seg,
    output dp
    );    
    wire Clk5MHz, Clk1Hz;
    wire [3:0] pos0, pos1, pos2, pos3;
    wire reset_clock;
    assign reset_clock = (~reset & Clk1Hz) | (reset & Clk5MHz);

    clk_wiz_0(Clk5MHz, Clk100MHz);
    clock_divider(Clk5MHz, Clk1Hz);
    counter(reset_clock, enable, reset, pos0, pos1, pos2, pos3);
    display(pos0, pos1, pos2, pos3, Clk5MHz, an, seg, dp);
endmodule
