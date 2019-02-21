`timescale 1ns / 1ps


module lab7_1_3(
    input [3:0] inp,
    input [1:0] sel,
    output reg out
    );
    always @ (inp or sel)
    begin
        if (sel == 2'b00)
            out = inp[0];
        else if (sel == 2'b01)
            out = inp[1];
        else if (sel == 2'b10)
            out = inp[2];
        else if (sel == 2'b11)
            out = inp[3];
    end
endmodule
