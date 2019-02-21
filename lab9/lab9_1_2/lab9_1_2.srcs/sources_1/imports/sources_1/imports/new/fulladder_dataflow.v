`timescale 1ns / 1ps


module fulladder #(parameter DELAY = 2)(
    input a,
    input b,
    input cin,
    output s,
    output p,
    output g
    );
    xor #DELAY (p, a, b);
//    xor #DELAY (s, p, cin);
    xor #DELAY (s, a, b, cin);
    and #DELAY (g, a, b);
endmodule
