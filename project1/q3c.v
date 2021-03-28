module q3c 
    (output wire F,
    input wire A, B, C, D);

    wire An = ~A;
    wire Bn = ~B;

    always @(C or D) 
    begin
        case ({C, D})
            2'b00 : F = An;
            2'b01 : F = B;
            2'b10 : F = Bn;
            2'b11 : F = 0;
            default : F = X;
    end

endmodule