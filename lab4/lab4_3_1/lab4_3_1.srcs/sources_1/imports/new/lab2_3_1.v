`timescale 1ns / 1ps


module rca_dataflow(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] s,
    output cout
    );
    wire [2:0] faout;
    fulladder_dataflow FD1(a[0], b[0], cin, s[0], faout[0]);
    fulladder_dataflow FD2(a[1], b[1], faout[0], s[1], faout[1]);
    fulladder_dataflow FD3(a[2], b[2], faout[1], s[2], faout[2]);
    fulladder_dataflow FD4(a[3], b[3], faout[2], s[3], cout);
endmodule
