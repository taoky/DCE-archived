`timescale 1ns / 1ps


module CLA(
    input cin,
    input [3:0] p,
    input [3:0] g,
    output [3:0] c,
    output pg,
    output gg
    );
    assign pg = p[0] & p[1] & p[2] & p[3];
    assign gg = g[3] | (g[2] & p[3]) | (g[1] & p[3] & p[2]) | (g[0] & p[3] & p[2] & p[1]);
    assign c[0] = g[0] | (p[0] & cin);
    assign c[1] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & cin);
    assign c[2] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & cin);
    assign c[3] = gg | (pg & cin);
endmodule
