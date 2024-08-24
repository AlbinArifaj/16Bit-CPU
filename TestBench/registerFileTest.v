
module RegisterFile_Test();

reg[1:0] RS, RT, RD;
reg RegWrite, Clock;
reg[15:0] WriteData;
wire[15:0] ReadRS, ReadRT;

initial
begin
#0 Clock=1'b0;
#5 RD=1'd2; WriteData = 16'd5; RegWrite=1'b1;
#5 Clock=1'b1;
#5 Clock=1'b0; RegWrite = 1'b0;
#5 RD=1'd3; WriteData = 16'd7; RegWrite=1'b1;
#5 Clock=1'b1;
#5 Clock=1'b0; RegWrite=1'b0;
#5 RS=1'd2; RT=3'd3;
#5 $stop;

end
RegisterFile RF(RS, RT, RD, WriteData,RegWrite,Clock, ReadRS, ReadRT );
endmodule