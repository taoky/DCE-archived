`timescale 1ns / 1ps


module lab7_1_5_tb(
    );
    reg Reset, Enable, Clk;
    wire [2:0] out;
    lab7_1_5 DUT(Reset, Enable, Clk, out);

    always #10 
    begin
        Clk = ~Clk;
        #2 $display("Counter output %d at time %t", out, $time);
    end
    initial
    begin
        Reset = 0; Enable = 1; Clk = 0;
    end
endmodule
