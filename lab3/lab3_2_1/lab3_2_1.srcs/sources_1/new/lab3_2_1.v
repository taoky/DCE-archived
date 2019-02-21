`timescale 1ns / 1ps


module lab3_2_1(
    input [7:0] v,
    input en_in_n,
    output reg [2:0] y,
    output reg en_out,
    output reg gs
    );
    always @ (v or en_in_n)
    begin
        if (en_in_n == 1)
        begin
            y = 3'b111; en_out = 1; gs = 1;
        end
        else
        begin
            casex(v)
                8'b1111_1111: begin y = 3'b111; en_out = 0; gs = 1; end
                8'b0xxx_xxxx: begin y = 3'b000; en_out = 1; gs = 0; end
                8'b10xx_xxxx: begin y = 3'b001; en_out = 1; gs = 0; end
                8'b110x_xxxx: begin y = 3'b010; en_out = 1; gs = 0; end
                8'b1110_xxxx: begin y = 3'b011; en_out = 1; gs = 0; end
                8'b1111_0xxx: begin y = 3'b100; en_out = 1; gs = 0; end
                8'b1111_10xx: begin y = 3'b101; en_out = 1; gs = 0; end
                8'b1111_110x: begin y = 3'b110; en_out = 1; gs = 0; end
                8'b1111_1110: begin y = 3'b111; en_out = 1; gs = 0; end
            endcase
        end
    end
endmodule
