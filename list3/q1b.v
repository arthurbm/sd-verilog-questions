`timescale 1ns/1ps

module subtractor_4bits (
   output [3:0] Diff,
   output Cout,
   input [3:0] A, B
);

   wire C1, C2, C3;

   full_subtractor U1 (.Diff(Diff[0]), .Cout(C1), .A(A[0]), .B(B[0]), .Cin(1'b0));
   full_subtractor U2 (.Diff(Diff[1]), .Cout(C2), .A(A[1]), .B(B[1]), .Cin(C1));
   full_subtractor U3 (.Diff(Diff[2]), .Cout(C3), .A(A[2]), .B(B[2]), .Cin(C2));
   full_subtractor U4 (.Diff(Diff[3]), .Cout(Cout), .A(A[3]), .B(B[3]), .Cin(C3));
  
  
endmodule
