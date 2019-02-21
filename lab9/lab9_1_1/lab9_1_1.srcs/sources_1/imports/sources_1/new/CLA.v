`timescale 1ns / 1ps


module CLA #(parameter N_DELAY = 1, AO_DELAY = 3, X_DELAY = 4)(
    input cin,
    input [3:0] p,
    input [3:0] g,
    output [3:0] c
    );

    wire g2p3, g1p3p2, g0p3p2p1;
    and #AO_DELAY (g2p3, g[2], p[3]);
    and #AO_DELAY (g1p3p2, g[1], p[3], p[2]);
    and #AO_DELAY (g0p3p2p1, g[0], p[3], p[2], p[1]);

    wire p0cin, p1g0, p1p0cin, p2g1, p2p1g0, p2p1p0cin, pgcin;
    and #AO_DELAY (p0cin, p[0], cin);
    and #AO_DELAY (p1g0, p[1], g[0]);
    and #AO_DELAY (p1p0cin, p[1], p[0], cin);
    and #AO_DELAY (p2g1, p[2], g[1]);
    and #AO_DELAY (p2p1g0, p[2], p[1], g[0]);
    and #AO_DELAY (p2p1p0cin, p[2], p[1], p[0], cin);
    and #AO_DELAY (pgcin, p[0], p[1], p[2], p[3], cin);
    or #AO_DELAY (c[0], g[0], p0cin);
    or #AO_DELAY (c[1], g[1], p1g0, p1p0cin);
    or #AO_DELAY (c[2], g[2], p2g1, p2p1g0, p2p1p0cin);
    or #AO_DELAY (c[3], g[3], g2p3, g1p3p2, g0p3p2p1, pgcin);
endmodule
