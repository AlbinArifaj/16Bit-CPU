
module DataMemory(input wire[15:0] Adresa, 
input wire[15:0] WriteData,
input wire Clock ,
input wire MemWrite,
 input wire MemRead,
 output wire[15:0] ReadData);

	reg[7:0] dMem[0:127];
	initial $readmemb("dataMemory.mem", dMem);

  always @(posedge Clock)
  begin
    if(MemWrite) 
      begin
        dMem[Adresa+10] <= WriteData[15:8];
        dMem[Adresa+11] <= WriteData[7:0];

      end
  end

always @(negedge Clock)
begin
	$writememb("dataMemory.mem", dMem);
end

assign ReadData = {dMem[Adresa+10],dMem[Adresa+11]};

endmodule
































//module DataMemory(input[:0] Adresa, input[31:0] WriteData, input Clock, input MemWrite, input MemRead, output[31:0] ReadData);

//reg[7:0] dMem[63:0];
//initial $readmemh("dataMemory.mem", dMem);

//always @(posedge Clock)
//begin
//if(MemWrite) 
//begin
//dMem[Adresa] <= WriteData[31:24];
//dMem[Adresa+1] <= WriteData[23:16];
//dMem[Adresa+2] <= WriteData[15:8];
//dMem[Adresa+3] <= WriteData[7:0];
//end
//end
//always @(negedge Clock)
//begin
//$writememh("dataMemory.mem", dMem);
//end

//assign ReadData = {dMem[Adresa],dMem[Adresa+1],dMem[Adresa+2],dMem[Adresa+3]};

//endmodule
