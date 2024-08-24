

module instructionMemoryTest();

reg[15:0] PC;
wire[15:0] Instruction;

initial
begin
#0 PC = 16'd10;
end

InstructionMemory IM(PC, Instruction);
endmodule