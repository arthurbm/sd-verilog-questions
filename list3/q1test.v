`timescale 1ns/1ps

module q1test();
    wire [3:0] Diff;
    wire Cout;
    reg [3:0] A, B;

    subtractor_4bits dut(.Diff(Diff), .Cout(Cout), .A(A), .B(B));    

    initial begin

        $dumpfile("q1test.vcd");
        $dumpvars(0,q1test);

        A = 4'b0000; B=4'b0000;
        #10 A = 4'b0111; B=4'b0001;
        #10 A = 4'b0011; B=4'b0010;
        #10 A = 4'b1100; B=4'b0011;
        #10 A = 4'b0011; B=4'b1100;

    end
    always @(A or B) begin
        $display("A %b | B %b | Diff %b | Cout %b", A, B, Diff, Cout);
    end

endmodule