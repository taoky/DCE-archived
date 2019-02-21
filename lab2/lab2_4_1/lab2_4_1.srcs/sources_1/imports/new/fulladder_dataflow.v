`timescale 1ns / 1ps


module fulladder_dataflow(
    input a,
    input b,
    input cin,
    output s,
    output p,
    output g
    );
    assign s = a ^ b ^ cin;
    assign p = a ^ b;
    assign g = a & b;
endmodule
