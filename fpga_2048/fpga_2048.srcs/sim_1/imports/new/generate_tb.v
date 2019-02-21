`timescale 1ns / 1ps

module generate_tb(

    );
    reg clk;
    wire clk_real;
    reg [15:0] intotal;
    wire [15:0] outtotal;
    reg reset;
    
    generate_new TB(clk_real, intotal, outtotal);
    wire [15:0] counter;
    counter16 CNT(clk, reset, 16'hffff, counter);
    
    always #10 clk = ~clk;
    assign clk_real = counter[15];
    
    initial
    begin
        clk = 0; reset = 0;
        intotal = 16'h1010;
        #2 reset = 1;
        #1 reset = 0;
        #2000 intotal = 16'h0000;
        #2000 intotal = 16'h0101;
        #2000 intotal = 16'h1000;
    end
endmodule
