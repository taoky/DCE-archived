`timescale 1ns / 1ps

module generate_new(
    input clk, // fast clock for random module
    input [15:0] intotal,
    output reg [15:0] outtotal
);

wire [3:0] in [3:0];

assign {in[3], in[2], in[1], in[0]} = intotal;

wire [3:0] f;

assign f[3] = |in[3];
assign f[2] = |in[2];
assign f[1] = |in[1];
assign f[0] = |in[0];

wire [3:0] rnd;
wire [7:0] rnd2;
wire [11:0] rnd3;
wire [15:0] rnd4;

random RND(clk, rnd, rnd2, rnd3, rnd4);

always @(*)
begin
    case (f)
        4'b0000: outtotal = rnd4;
        4'b0001: outtotal = {rnd3, in[0]};
        4'b0010: outtotal = {rnd3[7:0], in[1], rnd3[11:8]};
        4'b0011: outtotal = {rnd2, in[1], in[0]};
        4'b0100: outtotal = {rnd3[11:8], in[2], rnd3[7:0]};
        4'b0101: outtotal = {rnd2[3:0], in[2], rnd2[7:4], in[0]};
        4'b0110: outtotal = {rnd2[3:0], in[2], in[1], rnd2[7:4]};
        4'b0111: outtotal = {4'h1, in[2], in[1], in[0]};
        4'b1000: outtotal = {in[3], rnd3};
        4'b1001: outtotal = {in[3], rnd2, in[0]};
        4'b1010: outtotal = {in[3], rnd2[3:0], in[1], rnd2[7:4]};
        4'b1011: outtotal = {in[3], 4'h1, in[1], in[0]};
        4'b1100: outtotal = {in[3], in[2], rnd2};
        4'b1101: outtotal = {in[3], in[2], 4'h1, in[0]};
        4'b1110: outtotal = {in[3], in[2], in[1], 4'h1};
        4'b1111: outtotal = intotal;
        default: outtotal = intotal; // should not happen
    endcase
end

endmodule
