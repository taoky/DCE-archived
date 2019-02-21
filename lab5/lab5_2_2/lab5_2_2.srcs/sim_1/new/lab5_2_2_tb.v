`timescale 1ns / 1ps


module lab5_2_2_tb(
    );
    reg Clk, D, S;
    wire Qa, Qb, Qc, Qd;
    lab5_2_2 DUT(D, S, Clk, Qa, Qb, Qc, Qd);

    always #10 Clk = ~Clk;

    initial
    begin
        Clk = 0; D = 0; S = 0;
        S <= #16 1;
        S <= #25 0;
        S <= #38 1;
        S <= #47 0;
        #8 D = 1;
        #4 D = 0;
        #2 D = 1;
        #4 D = 0;
        #3 D = 1;
        #4 D = 0;
        #2 D = 1;
        #2 D = 0;
        #4 D = 1;
        #2 D = 0;
        #2 D = 1;
        #6 D = 0;
    end
endmodule
