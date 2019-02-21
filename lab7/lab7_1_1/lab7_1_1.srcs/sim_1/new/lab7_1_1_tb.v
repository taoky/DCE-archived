`timescale 1ns / 1ps


module lab7_1_1_tb(
    );
    reg [7:0] PORT_A;
    initial
    begin
        PORT_A = 'h20;
        #5 PORT_A = 'hF2;
        #5 PORT_A = 'h41;
        #5 PORT_A = 'h0A;
    end
endmodule
