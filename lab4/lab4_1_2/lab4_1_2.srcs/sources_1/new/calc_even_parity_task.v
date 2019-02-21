`timescale 1ns / 1ps


module calc_even_parity_task(ain, parity);
    parameter BITS = 8;
    input [BITS - 1 : 0] ain;
    output reg parity;
    
    task calc_even_parity;
        input [BITS - 1 : 0] in;
        output out;
        integer k;

        begin
            out = 0;
            for (k = 0; k < BITS; k = k + 1)
                if (in[k] == 1)
                    out = ~out;
        end
    endtask
    always @ (ain)
        calc_even_parity(ain, parity);
endmodule
