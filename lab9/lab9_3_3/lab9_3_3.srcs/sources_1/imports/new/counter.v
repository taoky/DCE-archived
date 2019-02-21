`timescale 1ns / 1ps


module counter(
    input clk,
    input enable,
    input reset,
    output [3:0] pos0,
    output [3:0] pos1,
    output [3:0] pos2,
    output [3:0] pos3
    );
    wire th0, th1;
    wire [5:0] v0, v1;
    wire new_en = enable;
    c_counter_binary_10(clk, new_en, reset, th0, v0);
    c_counter_binary_10(clk, th0 & new_en, reset, th1, v1);
    assign pos0 = v0 % 10;
    assign pos1 = v0 / 10;
    assign pos2 = v1 % 10;
    assign pos3 = v1 / 10;
endmodule
