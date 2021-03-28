module ROM4_3 (entry, out);
    input[3:0] entry;
    output[2:0] out;

    reg[2:0] ROM16X3 [15:0];

    initial begin
        ROM16X3[0] <= 3'b000;
        ROM16X3[1] <= 3'b001;
        ROM16X3[2] <= 3'b001;
        ROM16X3[3] <= 3'b010;
        ROM16X3[4] <= 3'b001;
        ROM16X3[5] <= 3'b010;
        ROM16X3[6] <= 3'b010;
        ROM16X3[7] <= 3'b011;
        ROM16X3[8] <= 3'b001;
        ROM16X3[9] <= 3'b010;
        ROM16X3[10] <= 3'b010;
        ROM16X3[11] <= 3'b011;
        ROM16X3[12] <= 3'b010;
        ROM16X3[13] <= 3'b011;
        ROM16X3[14] <= 3'b011;
        ROM16X3[15] <= 3'b100;
    end

    assign out = ROM16X3[entry];

endmodule