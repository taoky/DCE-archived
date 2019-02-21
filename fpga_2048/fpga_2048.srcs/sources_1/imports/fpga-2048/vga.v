`timescale 1ns / 1ps

// Use code in https://github.com/Smart-Hypercube/fpga_csgo/blob/master/vga.v
// and slightly modified.
// Chinese comments are removed to avoid encoding problems.

module vga(
	input clk,            // 50MHz
	input rst,
	output vgaclk,
	output [8:0] row,
	output [9:0] column,
	input [11:0] color,   // BGR
	output [3:0] vgaRed,
	output [3:0] vgaGreen,
	output [3:0] vgaBlue,
	output vgaHsync,
	output vgaVsync
);

	// 640x480@60Hz
	parameter CLKF = 25;      // clock frequency
	parameter H_SYNC = 96;    // horizontal sync pulse
	parameter H_BEGIN = 144;  // horizontal data begin
	parameter H_END = 784;    // horizontal data end
	parameter H_PERIOD = 800; // horizontal whole line length
	parameter V_SYNC = 2;     // vertical sync pulse
	parameter V_BEGIN = 31;   // vertical data begin
	parameter V_END = 511;    // vertical data end
	parameter V_PERIOD = 521; // vertical whole frame length

	wire clk25;
	counter16 clk25c(clk, rst, 2, clk25);
	assign vgaclk = (CLKF == 50) ? clk : clk25;

	wire [9:0] hcount;
	counter16 hc(vgaclk, rst, H_PERIOD, hcount);
	assign vgaHsync = (hcount < H_SYNC) ? 0 : 1;
	assign column = hcount - H_BEGIN;

	wire [9:0] vcount;
	counter16 vc(~(hcount[9]), rst, V_PERIOD, vcount);
	assign vgaVsync = (vcount < V_SYNC) ? 0 : 1;
	assign row = vcount - V_BEGIN;

	wire de;
	assign de = (vcount >= V_BEGIN) && (vcount < V_END) && (hcount >= H_BEGIN) && (hcount < H_END);
	assign vgaRed = de ? color[3:0] : 0;
	assign vgaGreen = de ? color[7:4] : 0;
	assign vgaBlue = de ? color[11:8] : 0;

endmodule
