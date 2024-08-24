
module ALU_1b_Test();
    reg A,B,CIN,BInvert,LESS;
  reg [2:0] op;
    wire REZ, COUT;

initial
$monitor("A=%b, B=%b, CIN=%b, BInvert=%b, LESS=%b, ALUCtrl=%b, REZ=%b, COUT=%b", A,B,CIN,BInvert,LESS, op, REZ, COUT);

initial 
begin
//#0 A=1'b1; B=1'b1; CIN=1'b0; BInvert=1'b0; LESS = 1'b0; op = 3'b000; //and
//#5 A=1'b0; B=1'b1; CIN=1'b0; BInvert=1'b0; LESS = 1'b0; op = 3'b010; //or
//#5 A=1'b1; B=1'b0; CIN=1'b0; BInvert=1'b0; LESS = 1'b0; op = 3'b011; //xor
//#5 A=1'b1; B=1'b0; CIN=1'b0; BInvert=1'b0; LESS = 1'b0; op = 3'b100; //add
#5 A=1'b0; B=1'b1; CIN=1'b0; BInvert=1'b1; LESS = 1'b0; op = 3'b100; //sub 
  
#5 $stop;
end

ALU_1b alu(
     A,
     B,
     CIN,
     BInvert,
     LESS,
     op,
     REZ,
     COUT
    );
endmodule