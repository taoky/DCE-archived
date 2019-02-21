`timescale 1ns / 1ps


module lab10_2_1(
    input clk,
    input reset,
    input [1:0] ain,
    output yout
    );

    reg [1:0] state1, nextstate1;
    parameter S0 = 0, S1 = 1, S2 = 2, S3 = 3;

    reg state2, nextstate2;
    assign yout = state2;

    initial
    begin
        state2 = S0;
        state1 = S0;
        nextstate2 = S0;
        nextstate1 = S0;
    end

    always @(posedge clk or posedge reset) // update state
    begin
        if (reset)
        begin
            state1 <= S0;
            state2 <= S0;
        end
        else
        begin
            state1 <= nextstate1;
            state2 <= nextstate2;
        end
    end

    always @(state1 or ain or state2) // compute output
    begin
        if (ain == 0)
        begin
            case (state1)
                S0: nextstate2 = state2;
                S1: nextstate2 = S0;
                S2: nextstate2 = ~state2;
                S3: nextstate2 = S1;
            endcase
        end
        else
            nextstate2 = state2;
    end

    always @(state1 or ain) // compute nextstate(1)
    begin
        case (ain)
            0: nextstate1 = S0;
            1: nextstate1 = S1;
            2'b10: nextstate1 = S2;
            2'b11: nextstate1 = S3;
        endcase
    end
endmodule
