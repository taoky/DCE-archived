`timescale 1ns / 1ps


module lab2_2_1(
    input [3:0] v,
    output z,
    output [7:0] an,
    output [6:0] seg
    );
    wire [3:0] m;
    lab2_2_1_partA PA(v, z, m);
    bcdto7segment_dataflow BD(m, an, seg);
endmodule
