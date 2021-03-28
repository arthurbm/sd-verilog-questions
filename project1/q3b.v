`timescale 1ns/1ps
module q3b (
        output wire F,
        input wire A, B, C, D
    );

    wire An = ~A;
    wire Bn = ~B;

    always @(C or D)
    begin
        // Following binary order
        if ( C == 1'b0 && D == 1'b0) F = An;
        else if (C == 1'b0 && D == 1'b1) F = B;
        else if (C == 1'b1 && D == 1'b0) F = Bn;
        else if (C == 1'b1 && D == 1'b1) F = 0;
        else F = X;
    end

endmodule