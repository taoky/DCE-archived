`timescale 1ns / 1ps


module clock_divider_2(
    input Clk5MHz,
    output reg Clk500Hz
    );
    integer n;
    parameter cp = 5000 / 2;

    initial
    begin
        n = 0;
        Clk500Hz = 0;
    end

    always @ (posedge Clk5MHz)
    begin
        if (Clk5MHz)
        begin
            if (n < cp)
                n <= n + 1;
            else
            begin
                Clk500Hz <= ~Clk500Hz;
                n <= 0;
            end
        end
    end
endmodule
