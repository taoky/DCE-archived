`timescale 1ns / 1ps


module lab5_2_2(
    input D,
    input S,
    input Clk,
    output reg Qa,
    output reg Qb,
    output reg Qc,
    output reg Qd
    );
    initial
    begin
        Qa = 0; Qb = 0; Qc = 0; Qd = 0;
    end
    always @ (D or Clk)
        if (Clk)
            Qa <= D;
    always @ (posedge Clk)
        if (Clk)
            Qb <= D;
    always @ (negedge Clk)
        if (!Clk)
            Qc <= D;
    always @ (S or D or Clk)
        if (Clk)
        begin
            if (S && D)
                Qd <= 1'bx;
            else if (S)
                Qd <= 1;
            else if (D)
                Qd <= 0;
        end
            
endmodule
