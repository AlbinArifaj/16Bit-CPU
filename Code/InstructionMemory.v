
module InstructionMemory(input[15:0] PC, output[15:0] Instruction);

reg[7:0] iMemm[127:0];

initial 
$readmemb("insnmemm.mem", iMemm);

assign Instruction = {iMemm[PC], iMemm[PC+1]};

endmodule

