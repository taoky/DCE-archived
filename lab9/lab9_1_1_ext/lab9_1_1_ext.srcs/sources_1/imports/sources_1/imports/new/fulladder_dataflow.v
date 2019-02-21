`timescale 1ns / 1ps


module fulladder #(parameter N_DELAY = 2, A_DELAY = 2, O_DELAY = 2)(
    input a,
    input b,
    input cin,
    output s,
    output cout
    );
    wire na, nb, nc, ncin, nanbc, nabnc, anbnc, abc, ab, anbc, nabc;
    not #N_DELAY(na, a);
    not #N_DELAY(nb, b);
    not #N_DELAY(nc, cin);
    and #A_DELAY(nanbc, na, nb, cin);
    and #A_DELAY(nabnc, na, b, nc);
    and #A_DELAY(anbnc, a, nb, nc);
    and #A_DELAY(abc, a, b, cin);
    and #A_DELAY(ab, a, b);
    and #A_DELAY(anbc, a, nb, cin);
    and #A_DELAY(nabc, na, b, cin);
    or #O_DELAY (s, nanbc, nabnc, anbnc, abc);
    or #O_DELAY (cout, ab, anbc, nabc);
endmodule
