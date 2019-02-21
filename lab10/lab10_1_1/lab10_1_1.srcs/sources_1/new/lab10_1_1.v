`timescale 1ns / 1ps


module lab10_1_1(
    input clk,
    input reset,
    input ain,
    output reg [3:0] count,
    output reg yout
    );
    reg [1:0] state, nextstate;
    parameter S0 = 0, S1 = 1, S2 = 2, S3 = 3; // 4 states

    initial
    begin
        yout <= 0;
        state <= S0;
    end

    always @(posedge clk or posedge reset) // update state
    begin
        if (reset)
        begin
            count <= 0;
            state <= S0;
        end
        else
        begin
            state <= nextstate;
            count <= count + ain;
        end
    end

    always @(state or ain) // output
    begin
        case (state)
            S0: yout = ~ain;
            S1: yout = 0;
            S2: yout = 0;
            S3: yout = ain;
        endcase
    end

    always @(state or ain) // nextstate
    begin
        if (ain)
            case (state)
                S0: nextstate = S1;
                S1: nextstate = S2;
                S2: nextstate = S3;
                S3: nextstate = S1;
            endcase
        else
            nextstate = state;
    end

endmodule
