`timescale 1ns/1ps
module q2
    (output wire Z,
    input wire A, B, C, D);

    assign #5 m0 = (A & B & C);
    assign #5 m1 = (~B & ~C);

    assign #5 E = (m0 | D);
    assign #5 F = (~(A & ~(B | C)));

    assign #2 Fn = F;

    assign Z = ((~E & F) | (E & ~F));
endmodule
