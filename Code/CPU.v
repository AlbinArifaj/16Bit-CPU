module CPU(input Clock);


//TELAT E BRENDSHEM TE CPU, SHIH CPU.PDF
wire [3:0] opcode; //D_OUT_1
//CU_OUT_x
//wire Clock;
wire RegDst, Branch, MemRead, MemWrite, RegWrite, MemToReg, ALUSrc;
wire [1:0] ALUOp;

//inicializimi i Datapath    
Datapath DP(Clock,RegDst, Branch, MemRead, MemWrite, RegWrite, MemToReg, ALUSrc,ALUOp,opcode);

//Inicializimi i COntrol Unit
CU ControlUnit(opcode,
RegDst, 
Branch, 
MemRead, 
MemToReg,
ALUOp,
MemWrite, 
ALUSrc,
RegWrite
);

endmodule