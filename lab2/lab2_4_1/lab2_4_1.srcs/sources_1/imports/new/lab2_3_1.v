`timescale 1ns / 1ps


module rca_dataflow(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] s,
    output cout
    );
    wire [3:0] p, g;
    wire [3:0] c;
    wire pg, gg;
    fulladder_dataflow(a[0], b[0], cin, s[0], p[0], g[0]);
    fulladder_dataflow(a[1], b[1], c[0], s[1], p[1], g[1]);
    fulladder_dataflow(a[2], b[2], c[1], s[2], p[2], g[2]);
    fulladder_dataflow(a[3], b[3], c[2], s[3], p[3], g[3]);
    CLA(cin, p, g, c, pg, gg);
    assign cout = c[3];
endmodule
