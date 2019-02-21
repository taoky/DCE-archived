`timescale 1ns / 1ps


module lab9_1_1_tb(
    );
    reg a, b;
    reg cin;
    wire s;
    wire cout;
    lab9_1_1 DUT(a, b, cin, s, cout);
    integer i, j, k;

    initial
    begin
        for (i = 0; i < 2; i = i + 1)
            for (j = 0; j < 2; j = j + 1)
                for (k = 0; k < 2; k = k + 1)
                begin
                    a = i; b = j; cin = k;
                    #15;
                end
        $finish;
    end
endmodule
