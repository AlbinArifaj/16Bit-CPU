module mux6ne1(
    input Hyrja0,
    input Hyrja1,
    input Hyrja2,
    input Hyrja3,
    input Hyrja4,
    input Hyrja5,
//    input Hyrja6,
//    input Hyrja7,
    input [2:0] S,
    output[15:0]Dalja
 );
    
//    reg [7:0] Dalja;
    
//always @ (Hyrja0 or Hyrja1 or Hyrja2 or Hyrja3 or Hyrja4 or Hyrja5 or Hyrja6 or Hyrja7 or S) 

begin 
    assign Dalja = S[2] ? (S[1] ? (S[0] ? Hyrja4 : Hyrja5) : (S[0] ? Hyrja2 : Hyrja2)) : (S[1] ? (S[0] ? Hyrja3 : Hyrja1): (S[0] ? Hyrja2: Hyrja0));


// case (S) 

//  3'b000 : Dalja = Hyrja0; 

////  3'b001 : Dalja = In2; 

//  3'b010 : Dalja = Hyrja1; 

//  3'b011 : Dalja = Hyrja3; 

//  3'b100 : Dalja = Hyrja2; 

////  3'b101 : Dalja = In6; 

////  3'b110 : Dalja = In7; 

////  3'b111 : Dalja = In8; 

//  default : Dalja = 8'bx; 

//  //If input is undefined then output is undefined 

// endcase 

end  

endmodule
