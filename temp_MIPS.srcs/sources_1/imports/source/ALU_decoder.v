`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2024 10:09:05 PM
// Design Name: 
// Module Name: ALU_decoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// Base on ALUOp, Opcode the decode ALUControl. When I read the slide in Computer architecture 
// I don't understand how to decode the ALUControl for iType
// by only use ALUOp so I use ALUcode, 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU_decoder(
    input [1:0] ALUOp,         
    input [5:0] funct,         
    input [5:0] opcode,
    output reg [3:0] ALUControl
);

always @(*) begin
    case (ALUOp)
        2'b00: ALUControl = 4'b0010; //     add signal for (addi, lw, sw)
        2'b01: ALUControl = 4'b0110;     // SUB (beq)
        2'b10: 
        begin    //this case for R_type
            case(funct)
                6'b100100: ALUControl = 4'b0000; //AND
                6'b100101: ALUControl = 4'b0001; // OR
                6'b100000: ALUControl = 4'b0010; // ADD
                6'b100010: ALUControl = 4'b0110; // SUB
                6'b101010: ALUControl = 4'b0111; // SLT
                6'b100111: ALUControl = 4'b1100; // NOR
                6'b000000: ALUControl = 4'b1000; // SLL
                6'b000010: ALUControl = 4'b1001; // SRL
                6'b011000: ALUControl = 4'b1010; // MULT
                6'b011010: ALUControl = 4'b1011; // DIV
                6'b010000: ALUControl = 4'b1101; // MFHI
                6'b010010: ALUControl = 4'b1110; // MFLO
                default:   ALUControl = 4'bxxxx; // Undefined
            endcase
        end
        
        2'b11:  // I-Type 
        begin 
            case (opcode)
                6'b001100: ALUControl = 4'b0000; // AND Immediate (andi)
                6'b001101: ALUControl = 4'b0001; // OR Immediate (ori)
                6'b001010: ALUControl = 4'b0111; // SLT Immediate (slti)
                default:   ALUControl = 4'bxxxx; // Undefined
            endcase
        end
        default ALUControl = 4'bxxxx;
    endcase
end
endmodule
