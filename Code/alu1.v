
module ALU_1b(
    input A,
    input B,
    input CIN,
    input BInvert,
    input LESS,
    input [2:0] ALUCtrl,
    output [15:0]REZ,
    output COUT
    );
    
    wire notB, mB, teli_DHE, teli_OSE, teli_MBL, teli_XOR, teli_Not_Used;
    
    assign notB = ~B;
    
    mux2ne1 m2(B, notB, BInvert, mB);
    
    assign teli_DHE = A & mB;
    assign teli_OSE = A | mB;
     assign teli_XOR = A ^ mB;
    
  mbledhesi_1b mbledhesi(A, mB, CIN, COUT, teli_MBL);
    
  
  mux6ne1 muxi(teli_DHE, teli_OSE, teli_MBL, teli_XOR, teli_Not_Used, LESS, ALUCtrl, REZ);
endmodule
