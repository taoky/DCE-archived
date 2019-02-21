`timescale 1ns / 1ps


module counter(
    input clk,
    input reset,
    output [3:0] pos0,
    output [3:0] pos1
    );
    wire th0, th1;
    c_counter_binary_0(clk, 1, reset, th0, pos0);
    c_counter_binary_1(clk, th0, reset, th1, pos1);
endmodule
