`timescale 1ns/1ps
module q3a (
        output wire F,
        input wire A,B,C,D
    );

    wire An = ~A;
    wire Bn = ~B;
    assign #10 F = C ? (D ? 0 : Bn) : (D ? B : An);

endmodule