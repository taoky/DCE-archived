`timescale 1ns / 1ps


module lab6_2_1(
    input Clock,
    input Enable,
    input Clear_n,
    output [7:0] Q
    );

    wire e_q_and[7:0];
    assign e_q_and[0] = Enable;
    assign e_q_and[1] = Enable & Q[0];
    assign e_q_and[2] = e_q_and[1] & Q[1];
    assign e_q_and[3] = e_q_and[2] & Q[2];
    assign e_q_and[4] = e_q_and[3] & Q[3];
    assign e_q_and[5] = e_q_and[4] & Q[4];
    assign e_q_and[6] = e_q_and[5] & Q[5];
    assign e_q_and[7] = e_q_and[6] & Q[6];

    T_ff tf0(Enable, Clock, Clear_n, Q[0]);
    T_ff tf1(e_q_and[1], Clock, Clear_n, Q[1]);
    T_ff tf2(e_q_and[2], Clock, Clear_n, Q[2]);
    T_ff tf3(e_q_and[3], Clock, Clear_n, Q[3]);
    T_ff tf4(e_q_and[4], Clock, Clear_n, Q[4]);
    T_ff tf5(e_q_and[5], Clock, Clear_n, Q[5]);
    T_ff tf6(e_q_and[6], Clock, Clear_n, Q[6]);
    T_ff tf7(e_q_and[7], Clock, Clear_n, Q[7]);
endmodule
