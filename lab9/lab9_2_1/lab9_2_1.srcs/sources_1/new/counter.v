`timescale 1ns / 1ps

(* use_dsp48 = "no" *)
module counter #(parameter COUNT_SIZE = 255)(
    input clk,
    input up,
    input enable,
    input reset,
    output reg [7 : 0] out
    );
    always @(posedge clk or posedge reset)
    begin
        if (reset)
            out = 0;
        else if (enable)
        begin
            if (up)
            begin
                out = out + 1;
                if (out > COUNT_SIZE)
                    out = 0;
            end
            else
            begin
                out = out - 1;
                if (out > COUNT_SIZE)
                    out = COUNT_SIZE;
            end
        end
    end
endmodule
