`timescale 1ns / 1ps


module lab8_2_1(
    input Clk100MHz,
    input enable,
    input reset,
    output [7:0] an,
    output [6:0] seg,
    output dp
    );    
    wire clock;   
    wire reset_clock; 
    wire Clk5MHz, Clk1Hz;
    wire locked;
    wire [3:0] pos0, pos1, pos2, pos3;
    assign clock = Clk5MHz & enable;
    assign reset_clock = (~reset & Clk1Hz) | (reset & Clk5MHz);

    clk_wiz_0(Clk5MHz, Clk100MHz);
    clock_divider(clock, Clk1Hz);
    counter(reset_clock, enable, reset, pos0, pos1, pos2, pos3);
    display(pos0, pos1, pos2, pos3, Clk5MHz, an, seg, dp);
endmodule
