`timescale 1ns / 1ps

module random (
    input clk, // should be a very fast clock
    output reg [3:0] rnd,
    output reg [7:0] rnd2,
    output reg [11:0] rnd3,
    output reg [15:0] rnd4
);

// Shift register

initial
begin
    rnd = 1;
    rnd2 = 1;
    rnd3 = 1;
    rnd4 = 1;
end

always @(posedge clk)
begin
    rnd <= ~rnd;
    rnd2 <= {rnd2[3:0], rnd2[7:4]};
    rnd3 <= {rnd3[7:4], rnd3[3:0], rnd3[11:8]};
    rnd4 <= {rnd4[11:8], rnd4[7:4], rnd4[3:0], rnd4[15:12]};
end

endmodule
