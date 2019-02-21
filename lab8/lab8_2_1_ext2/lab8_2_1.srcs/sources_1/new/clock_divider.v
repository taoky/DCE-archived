`timescale 1ns / 1ps


module clock_divider(
    input Clk5MHz,
    input reset,
    output reg Clk1Hz
    );
    integer cnt;
    parameter C5MHz = 5000000;
    initial
    begin
        cnt = 0;
    end

    always @(posedge Clk5MHz or posedge reset)
    begin
        Clk1Hz <= 0;
        if (reset)
            cnt <= 0;
        else if (cnt < C5MHz)
            cnt <= cnt + 1;
        else
            begin
                Clk1Hz <= 1;
                cnt <= 0;
            end
        end
endmodule

