`timescale 1ns / 1ps


module decoder_74138_dataflow(
    input [2:0] x,
    input g1,
    input g2a_n,
    input g2b_n,
    output [7:0] y
    );
    wire [7:0] tmp;
    decoder_3to8_dataflow DTD(x, tmp);
    wire enabled = g1 & ~g2a_n & ~g2b_n;
    assign y = ({8{enabled}} & ~tmp) | ({8{~enabled}} & 8'b1111_1111);
endmodule
