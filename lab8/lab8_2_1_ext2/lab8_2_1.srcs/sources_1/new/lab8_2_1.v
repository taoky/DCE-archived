`timescale 1ns / 1ps


module lab8_2_1(
    input Clk100MHz,
    input enable,
    input reset,
    output [7:0] an,
    output [6:0] seg
    );    
    wire clock;   
    wire reset_clock; 
    wire Clk5MHz, Clk1Hz, Clk1Hz_with_enable;
    wire locked;
    wire [3:0] pos0, pos1;
    wire th0, th1, ce0, ce1;
    assign clock = Clk5MHz & enable;
    assign reset_clock = (~reset & Clk1Hz) | (reset & Clk5MHz);

    clk_wiz_0(Clk5MHz, locked, Clk100MHz);
    clock_divider(clock, reset, Clk1Hz);
    counter(reset_clock, reset, th0, th1, ce0, ce1, pos0, pos1);
    display(pos0, pos1, Clk5MHz, an, seg);
endmodule
