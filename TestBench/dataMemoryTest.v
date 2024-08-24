
module dataMemoryTest();
reg Clock, MemWrite, MemRead;
reg[15:0] Adresa;
reg[15:0] WriteData;
wire[15:0] ReadData;

initial 
begin
#0 Clock=1'b0;
#5 MemWrite=1'b1; Adresa=16'd3; WriteData=16'h14; MemRead=1'b0;
#5 Clock=1'b1;
#5 Clock=1'b0; MemWrite=1'b1;
#5 MemRead=1'b1; Adresa=16'd2;
#5 $stop;
end

DataMemory DM(Adresa, WriteData,Clock,MemWrite, MemRead, ReadData);
endmodule