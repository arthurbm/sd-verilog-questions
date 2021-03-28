module full_subtractor(
    output wire Cout, Diff,
    input reg A, B, C
);
    assign Diff = A ^ B ^ C;
    assign Cout = ~A & (B^C) | B & C;
endmodule