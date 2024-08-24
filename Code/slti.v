module SLTI(
    input[15:0] RS, // A
    input[15:0] Immediate, // mB
    output[15:0] rt // slti
    );
wire lsb;
assign lsb = (RS    < Immediate) ? 1 : 0;
assign rt = {15'b0, lsb};

endmodule