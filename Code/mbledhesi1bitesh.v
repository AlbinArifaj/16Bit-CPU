
module mbledhesi_1b(
    input A,
    input B,
    input CIN,
    output COUT,
    output SHUMA
    );
    
    assign SHUMA = A ^ B ^CIN ;
    assign COUT = CIN & A | CIN & B | A & B;
endmodule
