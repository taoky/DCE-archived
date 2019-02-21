`timescale 1ns / 1ps


module moveItem_tb(
    );
    reg [15:0] in;
    wire [15:0] out;
    moveItem TB(in, out);
    
    wire [3:0] i [3:0];
    assign {i[3], i[2], i[1], i[0]} = in;
    
    initial
    begin
        in = 16'h2022;
        #5
        $display("%h %h %h %h", i[3], i[2], i[1], i[0]);
    end
endmodule
