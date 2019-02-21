`timescale 1ns / 1ps


module fulladder_dataflow(
    input a,
    input b,
    input cin,
    output s,
    output cout
    );
    assign s = a ^ b ^ cin;
    assign cout = a & b | ((a ^ b) & cin);
endmodule
