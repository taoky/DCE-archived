`timescale 1ns / 1ps


module lab7_1_5(
    input Reset,
    input Enable,
    input Clk,
    output reg [2:0] out
    );
    always @(posedge Clk)
    begin
        if (Reset)
            out = 0;
        else if (Enable)
        begin
            case (out)
                3'b000: out = 3'b001;
                3'b001: out = 3'b011;
                3'b011: out = 3'b101;
                3'b101: out = 3'b111;
                3'b111: out = 3'b010;
                3'b010: out = 3'b000;
                default: out = 3'b000;
            endcase
        end
    end
endmodule
