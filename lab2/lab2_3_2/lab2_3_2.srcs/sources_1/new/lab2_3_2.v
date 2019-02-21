`timescale 1ns / 1ps


module lab2_3_2(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output z, // led
    output [7:0] an, // 7seg
    output [6:0] seg
    );
    wire [3:0] s;
    wire cout;
    rca_dataflow(a, b, cin, s, cout);
    lab2_2_1(s, z, an, seg);
endmodule
