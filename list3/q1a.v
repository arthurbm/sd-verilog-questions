`timescale 1ns/1ps

module full_subtractor(
   output Cout, Diff,
   input A, B, Cin
);
   assign Diff = A ^ B ^ Cin;
   assign Cout = ~A & (B^Cin) | B & Cin;
endmodule
