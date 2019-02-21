`timescale 1ns / 1ps


module lab3_3_1(
    input [1:0] a,
    input [1:0] b,
    output lt,
    output gt,
    output eq
    );
    reg [2:0] ROM [15:0];
    assign {lt, gt, eq} = ROM[{b, a}];
    initial $readmemb ("compare.txt", ROM, 0, 15);
endmodule
