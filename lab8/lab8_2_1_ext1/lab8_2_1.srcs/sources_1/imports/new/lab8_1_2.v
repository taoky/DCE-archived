`timescale 1ns / 1ps


module display(
    input [3:0] v0,
    input [3:0] v1,
    input Clk5MHz,
    output [7:0] an,
    output [6:0] seg
    );

    reg sel;

    wire Clk500Hz;
    wire unused_locked;
    wire [6:0] seg0;
    wire [6:0] seg1;
    assign seg = (seg1 & {7{sel}}) | (seg0 & {7{~sel}});
    assign an = (8'b11111101 & {8{sel}}) | (8'b11111110 & {8{~sel}});

    clock_divider_2 CD(Clk5MHz, Clk500Hz);
    bcdto7segment_dataflow(v0, seg0);
    bcdto7segment_dataflow(v1, seg1);

    initial sel = 0;

    always @ (posedge Clk500Hz)
    begin
        sel = ~sel;
    end
endmodule
