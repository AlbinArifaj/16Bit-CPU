module sra(
    input [15:0] data_in,   // 16-bit input data
    input [3:0] shift_amt,  // 4-bit shift amount (0-15)
    output reg [15:0] data_out // 16-bit shifted output
);

always @(*) begin
    case(shift_amt)
        4'b0000: data_out = data_in;
        4'b0001: data_out = data_in >> 1;
        4'b0010: data_out = data_in >> 2;
        4'b0011: data_out = data_in >> 3;
        4'b0100: data_out = data_in >> 4;
        4'b0101: data_out = data_in >> 5;
        4'b0110: data_out = data_in >> 6;
        4'b0111: data_out = data_in >> 7;
        4'b1000: data_out = data_in >> 8;
        4'b1001: data_out = data_in >> 9;
        4'b1010: data_out = data_in >> 10;
        4'b1011: data_out = data_in >> 11;
        4'b1100: data_out = data_in >> 12;
        4'b1101: data_out = data_in >> 13;
        4'b1110: data_out = data_in >> 14;
        4'b1111: data_out = data_in >> 15;
        default: data_out = 16'b0;
    endcase
end

endmodule