`timescale 1ns / 1ps


module lab9_1_1(
    input a,
    input b,
    input cin,
    output s,
    output cout
    );
    fulladder #(1, 3, 3) FA(a, b, cin, s, cout);
endmodule
