
module muxOperation(
    input[15:0] Hyrja0, //operacionet e ALU1b
    input[15:0] Hyrja1, //SLTI
    input[15:0] Hyrja2, //sll 110
    input[15:0] Hyrja3, //sra 111
    input[2:0] S,
    output[15:0] Dalja
    );
    

 
assign Dalja = S[2] ? (S[1] ? (S[0] ? Hyrja3 : Hyrja2) : (S[0] ? Hyrja0 : Hyrja0)) :
                       (S[1] ? (S[0] ? Hyrja0 : Hyrja0) : (S[0] ? Hyrja1 : Hyrja0));  
endmodule
