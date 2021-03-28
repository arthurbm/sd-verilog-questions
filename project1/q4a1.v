`timescale 1ns/1ps
module q4a1
    (output wire F,
    input wire A, B, C, D);

    always @(C)
    begin
        if (C == 1) A = B1;
        else if (C == 2) A = B2;
        else if (C == 3) A = B3;
        else A = 0;
    end

endmodule

module q4a2
    (output wire F,
    input wire A, B, C, D);

    assign A = (C == 1) ? B1 : (C == 2) ? B2 : (C == 3) ? B3;

endmodule