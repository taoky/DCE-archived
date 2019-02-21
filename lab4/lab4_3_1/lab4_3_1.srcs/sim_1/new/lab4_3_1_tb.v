`timescale 1ns / 1ps


module lab4_3_1_tb(
    );
    reg [3:0] a, b;
    reg cin;
    wire [3:0] s;
    wire cout;
    rca_dataflow DUT(.a(a), .b(b), .cin(cin), .s(s), .cout(cout));

    integer i, j, k;
    parameter MAX = 16;
    reg [3:0] expected_s;
    reg expected_cout;

    initial
    begin
        for (i = 0; i < MAX; i = i + 1)
        begin
            for (j = 0; j < MAX; j = j + 1)
            begin
                for (k = 0; k < 2; k = k + 1)
                begin
                    a = i; b = j; cin = k;
                    #16 {expected_cout, expected_s} = a + b + cin;
                    if (expected_s == s && expected_cout == cout)
                        $display("%t time, with a = %d, b = %d and cin = %d, output %d, right!", 
                                  $time, a, b, cin, {cout, s});
                    else
                        $display("%t time, with a = %d, b = %d and cin = %d, output %d, wrong!",
                                  $time, a, b, cin, {cout, s});
                end
            end
        end
        // #10 $finish();
    end

endmodule
