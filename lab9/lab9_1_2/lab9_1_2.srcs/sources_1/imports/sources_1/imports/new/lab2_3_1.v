`timescale 1ns / 1ps


module rca_dataflow(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] s,
    output cout
    );
    defparam CLAI.N_DELAY = 2, CLAI.AO_DELAY = 4, CLAI.X_DELAY = 5;
    wire [3:0] p, g;
    wire [3:0] c;
    fulladder FA1(a[0], b[0], cin, s[0], p[0], g[0]);
    fulladder FA2(a[1], b[1], c[0], s[1], p[1], g[1]);
    fulladder FA3(a[2], b[2], c[1], s[2], p[2], g[2]);
    fulladder FA4(a[3], b[3], c[2], s[3], p[3], g[3]);
    CLA CLAI(cin, p, g, c);
    assign cout = c[3];
endmodule
