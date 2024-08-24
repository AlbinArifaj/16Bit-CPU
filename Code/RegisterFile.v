

module RegisterFile(
input[1:0] RS,
input[1:0] RT,
input[1:0] RD,
input[15:0] WriteData,
input RegWrite,
input Clock,
output[15:0] ReadRS,
output[15:0] ReadRT
);

reg[15:0] Registers[3:0];

integer i;

initial
begin
    for(i = 0; i < 4; i = i + 1) begin
       Registers[i] = 16'd0; 
    end
end

always @ (posedge Clock)
begin
if(RegWrite) Registers[RD] <= WriteData;
end

assign ReadRS = Registers[RS];
assign ReadRT = Registers[RT];

endmodule





