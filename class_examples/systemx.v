module systemx
	(output wire F,
	input wire A, B, C);

	wire An, Bn, Cn;
	wire m0, m2,m6;

	assign An = ~A;
	assign Bn = ~B;
	assign Cn = ~C;

	assign m0 = An & Bn & Cn;
	assign m2 = An & B & Cn;
	assign m6 = A & B & Cn;

	assign F = m0 | m2 | m6;
	
endmodule