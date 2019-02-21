`timescale 1ns / 1ps


module lab3_3_2(
    input [1:0] a,
    input [1:0] b,
    output [3:0] product
    );
    reg [3:0] ROM [15:0];
    assign product = ROM[{a, b}];
    initial $readmemb ("product.txt", ROM, 0, 15);
endmodule
