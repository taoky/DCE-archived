`timescale 1ns / 1ps

module top (
    input Clk100MHZ, // 100 MHz clock
    input reset, // reset button
    input [3:0] keys, // UDLR
    
    input cheat,
//    output cheat_led,
    input ssel,
//    output sled,

    // VGA output
    output [3:0] vga_r,
    output [3:0] vga_g,
    output [3:0] vga_b,
    output vga_hs, // horizonal
    output vga_vs, // vertical

    // 7 segments, only to show status
    output [7:0] an,
    output [6:0] seg,
    
    // music
    output speaker,
    output a_enable
);

wire clk50; // 50 MHz clock
wire [63:0] state;
wire [1:0] status;

clk_wiz_0 CLKIP(clk50, Clk100MHZ);

mainfunc MF(clk50, reset, keys, cheat, state, status);
vgaman VM(clk50, reset, state, vga_r, vga_g, vga_b, vga_hs, vga_vs);

bcdto7segment_dataflow BD(status, seg);

assign an = 8'b11111110;
//assign cheat_led = cheat;
//assign sled = ssel;

music MUS(status, clk50, reset, ssel, speaker, a_enable);

endmodule
