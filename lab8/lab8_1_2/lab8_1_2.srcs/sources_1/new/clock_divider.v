`timescale 1ns / 1ps


module clock_divider(
    input Clk5MHz,
    output reg Clk1000Hz
    );
    integer n;
    parameter cp = 5000 / 2;

    initial
    begin
        n = 0;
        Clk1000Hz = 0;
    end

    always @ (posedge Clk5MHz)
    begin
        if (Clk5MHz)
        begin
            if (n < cp)
                n <= n + 1;
            else
            begin
                Clk1000Hz <= ~Clk1000Hz;
                n <= 0;
            end
        end
    end
endmodule
