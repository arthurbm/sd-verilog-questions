`timescale 1ns/1ps

module q7_table ();
    wire[3:0] entry;
    reg[2:0] out;

    ROM4_3 U1 (.entry(entry), .out(out));

    initial begin
        $dumpfile("q7test.vcd");
        $dumpvars;

        entry[0]=4'b0000
        entry[1]=4'b0001
        entry[2]=4'b0010
        entry[3]=4'b0011
        entry[4]=4'b0100
        entry[5]=4'b0101
        entry[6]=4'b0110
        entry[7]=4'b0111
        entry[8]=4'b1000
        entry[9]=4'b1001
        entry[10]=4'b1010
        entry[11]=4'b1011
        entry[12]=4'b1100
        entry[13]=4'b1101
        entry[14]=4'1110
        entry[15]=4'1111
    end
    for (int i = 0; i < 16; i+=1) begin
        $display("")
    end


endmodule