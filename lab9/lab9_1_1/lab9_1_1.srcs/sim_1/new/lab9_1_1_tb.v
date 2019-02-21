`timescale 1ns / 1ps


module lab9_1_1_tb(
    );
    reg [3:0] a, b;
    reg cin;
    wire [3:0] s;
    wire cout;
    rca_dataflow DUT(a, b, cin, s, cout);
    integer i, j, k;

    initial
    begin
        for (i = 0; i < 16; i = i + 1)
            for (j = 0; j < 16; j = j + 1)
                for (k = 0; k < 2; k = k + 1)
                begin
                    a = i; b = j; cin = k;
                    #15;
                end
    end
endmodule
