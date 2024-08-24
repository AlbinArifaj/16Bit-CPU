//ALU Control (CU_OUT_x, Function Code nga R-formati, Opcode, T19) - eshte shtuar ALUOp per I-format qe nuk eshte ne foto po kerkohet ne detyre
//module ALUControl(
//input [1:0] ALUOp,
//input [1:0] Funct,
//input [3:0] opcode,
//output reg [3:0] ALUCtrl
//);

//always @(ALUOp)
//begin
//case(ALUOp) // Pyet per vleren e ALUOp, 00-lw,sw; 01-beq,bne, 10-R-format, 11 - I-format
//    2'b00: ALUCtrl = 4'b0100; //LW+SW (mbledhje)
//    2'b01: ALUCtrl = 4'b1100; //BEQ+BNE (zbritje)
//    2'b10: //R-Format
//        case(Funct)
//            2'b10: ALUCtrl =4'b0011; //XOR    

//            2'b01:
//                case(opcode)
//                    4'b0000: ALUCtrl =4'b0010; //OR
//                    4'b0001: ALUCtrl = 4'b1100; //SUB
//                    4'b0010:ALUCtrl=4'b0111; //sra
//                endcase
//            2'b00:
//                case(opcode) 
//                    4'b0001:ALUCtrl = 4'b0100; //ADD
//                    4'b0000:ALUCtrl =4'b0000; //AND\
//                    4'b0010:ALUCtrl=4'b0110; //sll
//            endcase
        
//        endcase

//    2'b11: //I-format
//        case(opcode)
//            4'b1011: ALUCtrl = 4'b0001; // per SLTI
//            4'b1001: ALUCtrl = 4'b0100; // per ADDI
//            4'b1010: ALUCtrl = 4'b1100; // per SUBI
        
//        endcase
//endcase
//end



//endmodule


module ALUControl(
    input [1:0] AluOp,
      input [1:0] functionCode,
    input [3:0] opcode,
    output reg [3:0] ALUControl // Updated to 4 bits
);

always @(*)
  begin
    case (AluOp)
        2'b00:// lw/sw - Addition
            ALUControl = 4'b0100; // 0100 for ADD
        2'b01:// beq - Subtraction
            ALUControl = 4'b1100; // 1100 for SUB
        2'b10: // Depends on function code
            case (functionCode)
                2'b00: ALUControl = (opcode == 4'b0000) ? 4'b0000 : // AND
                                    (opcode == 4'b0001) ? 4'b0100 : // ADD
                                    (opcode == 4'b0010) ? 4'b0110: // sll
                                    4'bxxxx; // Other operations
                2'b01: ALUControl = (opcode == 4'b0000) ? 4'b0010 : // OR
                                    (opcode == 4'b0001) ? 4'b1100 : // SUB
                                    (opcode == 4'b0010) ? 4'b0111: // sra
                                    4'bxxxx; // Other operations
                2'b10: ALUControl = 4'b0011; // XOR
            endcase
        2'b11: 
            case (opcode)
                4'b1001: ALUControl = 4'b0100; // ADDI
                4'b1010: ALUControl = 4'b1100; // SUBI
                4'b1011: ALUControl = 4'b0001; // SLTI
            endcase

    endcase
end

endmodule