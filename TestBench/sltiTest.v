
module sltiTest();
reg [15:0]RS, Immediate;
wire [15:0]RT;

initial
begin
#0 RS=1'b0; Immediate=1'b1;
//#5 RS=1'b1; Immediate=1'b1;
#5 $stop;
end

SLTI slti(RS, Immediate, RT);
endmodule