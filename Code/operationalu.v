
module operationAlu(
    input [15:0] A,
    input [15:0] B,
    input BNegate,
    input [2:0] ALUOp,
    input [3:0]shamt,
    output Zero,
    output Overflow,
    output [15:0] REZ,
    output CarryOut
    );
   
    wire[15:0] operationrez;
    wire[15:0] sltii;
    wire[15:0] slll;
    wire[15:0] sraa;
   
     ALU16 alu(A, B,BNegate, ALUOp, Zero, Overflow, operationrez, CarryOut);
   
     SLTI slti(A, B, sltii);
     sll sll1(A, shamt, slll);
     sra sra1(A, shamt, sraa);

   
    muxOperation mux(operationrez, sltii, slll,sraa, ALUOp, REZ);
   
endmodule