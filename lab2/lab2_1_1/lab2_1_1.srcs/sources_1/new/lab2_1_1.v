`timescale 1ns / 1ps


module lab2_1_1(
    output [7:0] an,
    output [6:0] seg
    );
    wire [3:0] num = 4'd0;
    bcdto7segment_dataflow(num, an, seg);

endmodule
