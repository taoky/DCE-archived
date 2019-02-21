`timescale 1ns / 1ps


module display(
    input [3:0] v0,
    input [3:0] v1,
    input [3:0] v2,
    input [3:0] v3,
    input Clk5MHz,
    output [7:0] an,
    output [6:0] seg,
    output dp
    );

    reg [1:0] sel;

    wire Clk500Hz;
    wire [6:0] seg0;
    wire [6:0] seg1;
    wire [6:0] seg2;
    wire [6:0] seg3;
    assign seg = (seg1 & {7{sel[0]}} & {7{~sel[1]}}) | (seg0 & {7{~sel[0]}} & {7{~sel[1]}}) | (seg2 & {7{~sel[0]}} & {7{sel[1]}}) | (seg3 & {7{sel[0]}} & {7{sel[1]}});
    assign an = (8'b11111101 & {8{sel[0]}} & {8{~sel[1]}}) | (8'b11111110 & {8{~sel[0]}} & {8{~sel[1]}}) | (8'b11111011 & {8{~sel[0]}} & {8{sel[1]}}) | (8'b11110111 & {8{sel[0]}} & {8{sel[1]}});
    assign dp = ~(sel[1] & ~sel[0]);

    clock_divider_2 CD(Clk5MHz, Clk500Hz);
    bcdto7segment_dataflow(v0, seg0);
    bcdto7segment_dataflow(v1, seg1);
    bcdto7segment_dataflow(v2, seg2);
    bcdto7segment_dataflow(v3, seg3);

    initial sel = 0;

    always @ (posedge Clk500Hz)
    begin
        sel = sel + 1;
    end
endmodule
