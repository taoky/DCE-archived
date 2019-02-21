`timescale 1ns / 1ps

module vgaman (
    input clk,
    input reset,
    input [63:0] s,
    output [3:0] vga_r,
    output [3:0] vga_g,
    output [3:0] vga_b,
    output vga_hs, // horizonal
    output vga_vs // vertical
);

wire [3:0] board [15:0];
assign {board[15], board[14], board[13], board[12], board[11], board[10],
        board[9], board[8], board[7], board[6], board[5], board[4],
        board[3], board[2], board[1], board[0]} = s;

wire vgaclk;
wire [8:0] row;
wire [9:0] column;
reg [11:0] color; // input data
vga VGA(clk, reset, vgaclk, row, column, color, vga_r, vga_g, vga_b, vga_hs, vga_vs);

wire [3:0] chr;
wire [4095:0] graph;
wire [11:0] co;
rom ROM(chr, graph, co);

assign chr = (row >= 100 && row < 164 && column >= 200 && column < 264) ? board[15] :
             (row >= 100 && row < 164 && column >= 264 && column < 328) ? board[14] :
             (row >= 100 && row < 164 && column >= 328 && column < 392) ? board[13] :
             (row >= 100 && row < 164 && column >= 392 && column < 456) ? board[12] :
             (row >= 164 && row < 228 && column >= 200 && column < 264) ? board[11] :
             (row >= 164 && row < 228 && column >= 264 && column < 328) ? board[10] :
             (row >= 164 && row < 228 && column >= 328 && column < 392) ? board[9] :
             (row >= 164 && row < 228 && column >= 392 && column < 456) ? board[8] :
             (row >= 228 && row < 292 && column >= 200 && column < 264) ? board[7] :
             (row >= 228 && row < 292 && column >= 264 && column < 328) ? board[6] :
             (row >= 228 && row < 292 && column >= 328 && column < 392) ? board[5] :
             (row >= 228 && row < 292 && column >= 392 && column < 456) ? board[4] :
             (row >= 292 && row < 356 && column >= 200 && column < 264) ? board[3] :
             (row >= 292 && row < 356 && column >= 264 && column < 328) ? board[2] :
             (row >= 292 && row < 356 && column >= 328 && column < 392) ? board[1] :
             (row >= 292 && row < 356 && column >= 392 && column < 456) ? board[0] : 15;

always @(*)
begin
    color =  (row >= 100 && row < 164 && column >= 200 && column < 264) ? (graph[(row - 100) * 64 + (column - 200)] ? co : 12'b0) :
             (row >= 100 && row < 164 && column >= 264 && column < 328) ? (graph[(row - 100) * 64 + (column - 264)] ? co : 12'b0) :
             (row >= 100 && row < 164 && column >= 328 && column < 392) ? (graph[(row - 100) * 64 + (column - 328)] ? co : 12'b0) :
             (row >= 100 && row < 164 && column >= 392 && column < 456) ? (graph[(row - 100) * 64 + (column - 392)] ? co : 12'b0) :
             (row >= 164 && row < 228 && column >= 200 && column < 264) ? (graph[(row - 164) * 64 + (column - 200)] ? co : 12'b0) :
             (row >= 164 && row < 228 && column >= 264 && column < 328) ? (graph[(row - 164) * 64 + (column - 264)] ? co : 12'b0) :
             (row >= 164 && row < 228 && column >= 328 && column < 392) ? (graph[(row - 164) * 64 + (column - 328)] ? co : 12'b0) :
             (row >= 164 && row < 228 && column >= 392 && column < 456) ? (graph[(row - 164) * 64 + (column - 392)] ? co : 12'b0) :
             (row >= 228 && row < 292 && column >= 200 && column < 264) ? (graph[(row - 228) * 64 + (column - 200)] ? co : 12'b0) :
             (row >= 228 && row < 292 && column >= 264 && column < 328) ? (graph[(row - 228) * 64 + (column - 264)] ? co : 12'b0) :
             (row >= 228 && row < 292 && column >= 328 && column < 392) ? (graph[(row - 228) * 64 + (column - 328)] ? co : 12'b0) :
             (row >= 228 && row < 292 && column >= 392 && column < 456) ? (graph[(row - 228) * 64 + (column - 392)] ? co : 12'b0) :
             (row >= 292 && row < 356 && column >= 200 && column < 264) ? (graph[(row - 292) * 64 + (column - 200)] ? co : 12'b0) :
             (row >= 292 && row < 356 && column >= 264 && column < 328) ? (graph[(row - 292) * 64 + (column - 264)] ? co : 12'b0) :
             (row >= 292 && row < 356 && column >= 328 && column < 392) ? (graph[(row - 292) * 64 + (column - 328)] ? co : 12'b0) :
             (row >= 292 && row < 356 && column >= 392 && column < 456) ? (graph[(row - 292) * 64 + (column - 392)] ? co : 12'b0) : {12{graph[0]}};
end

endmodule
