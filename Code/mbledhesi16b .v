

module mbledhesi16b(
    input [15:0] A,
    input [15:0] B,
    output [15:0] REZ,
    input CarryOut
    );
    
    wire [14:0] COUT;
mbledhesi_1b mbledhesi0 (A[0], B[0], 1'b0, COUT[0], REZ[0]);
mbledhesi_1b mbledhesi1 (A[1], B[1], COUT[0], COUT[1], REZ[1]);
mbledhesi_1b mbledhesi2 (A[2], B[2], COUT[1], COUT[2], REZ[2]);
mbledhesi_1b mbledhesi3 (A[3], B[3], COUT[2], COUT[3], REZ[3]);
mbledhesi_1b mbledhesi4 (A[4], B[4], COUT[3], COUT[4], REZ[4]);
mbledhesi_1b mbledhesi5 (A[5], B[5], COUT[4], COUT[5], REZ[5]);
mbledhesi_1b mbledhesi6 (A[6], B[6], COUT[5], COUT[6], REZ[6]);
mbledhesi_1b mbledhesi7 (A[7], B[7], COUT[6], COUT[7], REZ[7]);
mbledhesi_1b mbledhesi8 (A[8], B[8], COUT[7], COUT[8], REZ[8]);
mbledhesi_1b mbledhesi9 (A[9], B[9], COUT[8], COUT[9], REZ[9]);
mbledhesi_1b mbledhesi10 (A[10], B[10], COUT[9], COUT[10], REZ[10]);
mbledhesi_1b mbledhesi11 (A[11], B[11], COUT[10], COUT[11], REZ[11]);
mbledhesi_1b mbledhesi12 (A[12], B[12], COUT[11], COUT[12], REZ[12]);
mbledhesi_1b mbledhesi13 (A[13], B[13], COUT[12], COUT[13], REZ[13]);
mbledhesi_1b mbledhesi14 (A[14], B[14], COUT[13], COUT[14], REZ[14]);
mbledhesi_1b mbledhesi15 (A[15], B[15], COUT[14], CarryOut, REZ[15]);





endmodule
