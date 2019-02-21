`timescale 1ns / 1ps


module lab8_1_2(
    input [3:0] v,
    input Clk100MHz,
    output [7:0] an,
    output [6:0] seg
    );

    reg sel;

    wire Clk5MHz, Clk1000Hz;
    wire is_over_9;
    wire unused_locked;
    wire [6:0] old_seg;
    wire [6:0] new_seg;
    assign new_seg = (7'b1111001 & {7{is_over_9}}) | (7'b1000000 & {7{~is_over_9}});
    assign seg = (new_seg & {7{sel}}) | (old_seg & {7{~sel}});
    assign an = (8'b11111101 & {8{sel}}) | (8'b11111110 & {8{~sel}});

    clock_divider CD(Clk5MHz, Clk1000Hz);
    lab2_2_1 LAB(v, is_over_9, old_seg);
    clk_wiz_0 CW0(Clk5MHz, 0, unused_locked, Clk100MHz);

    initial sel = 0;

    always @ (posedge Clk1000Hz)
    begin
        sel = ~sel;
    end
endmodule
