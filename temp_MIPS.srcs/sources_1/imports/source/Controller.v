`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2024 10:52:43 PM
// Design Name: 
// Module Name: Controller
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// decode the signal for other component base on opcode 
// ALUOp= 00 -> add
// ALUOp= 01-> sub
// ALUOp= 10-> Rtype
// ALUOp= 11-> itype 
// When addi i make it as add
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module Controller(
    input  [5:0] opcode,       // Input opcode (Instruction [31:26])
    output reg RegDst,         // Select destination register
    output reg ALUSrc,         // Select source for ALU
    output reg MemRead,        // Enable memory read
    output reg MemtoReg,       // Select memory data to write to register
    output reg MemWrite,       // Enable memory write
    output reg Branch_beq,     // Enable branch if equal
    output reg RegWrite,       // Enable register write
    output reg Jump,           // Jump signal
    output reg [1:0] ALUOp,    // ALU control signal
    output reg Branch_bne,     // Enable branch if not equal
    output reg LuiSig,         // Enable Load Upper Immediate signal
    output reg JumpAndLink    // Enable Jump And Link
);

always @(*) begin
    // Default values for all signals
    RegDst   = 0;
    ALUSrc   = 0;
    MemRead  = 0;
    MemtoReg = 0;
    MemWrite = 0;
    Branch_beq   = 0;
    Branch_bne   = 0;
    RegWrite = 0;
    Jump     = 0;
    LuiSig   = 0;
    ALUOp    = 2'b00;
    JumpAndLink  = 0;

    // Decode opcode
    case (opcode)
        6'b000000: begin // R-Type: add, sub, and, or, nor, slt
            RegDst   = 1;
            ALUSrc   = 0;
            RegWrite = 1;
            ALUOp    = 2'b10; // Use funct field to determine operation
        end
        6'b001000: begin // addi (Add Immediate)
            ALUSrc   = 1;
            RegWrite = 1;
            ALUOp    = 2'b00; // Perform addition
        end
        6'b100011: begin // lw (Load Word)
            ALUSrc   = 1;
            MemRead  = 1;
            MemtoReg = 1;
            RegWrite = 1;
            ALUOp    = 2'b00; // Perform addition for address calculation
        end
        6'b101011: begin // sw (Store Word)
            ALUSrc   = 1;
            MemWrite = 1;
            ALUOp    = 2'b00; // Perform addition for address calculation
        end
        6'b000100: begin // beq (Branch if Equal)
            ALUSrc   = 0;
            Branch_beq = 1;
            ALUOp    = 2'b01; // Perform subtraction for comparison
        end
        6'b001100: begin // andi (AND Immediate)
            ALUSrc   = 1;
            RegWrite = 1;
            ALUOp    = 2'b11; // Perform AND operation
        end
        6'b001101: begin // ori (OR Immediate)
            ALUSrc   = 1;
            RegWrite = 1;
            ALUOp    = 2'b11; // Perform OR operation
        end
        6'b001010: begin // slti (Set Less Than Immediate)
            ALUSrc   = 1;
            RegWrite = 1;
            ALUOp    = 2'b11; // Perform SLT operation
        end
        6'b000010: begin // j (Jump)
            Jump     = 1;
        end
        6'b000101: begin // bne (Branch if Not Equal)
            ALUSrc   = 0;
            Branch_bne = 1;
            ALUOp    = 2'b01; // Perform subtraction for comparison
        end
        6'b001111: begin // lui (Load Upper Immediate)
            RegDst   = 0;
            LuiSig   = 1;
            RegWrite = 1;
        end
        6'b000011: begin // jal (Jump And Link)
            Jump         = 1;
            JumpAndLink  = 1;
            RegWrite     = 1;
        end
        default: begin
            // Default: all control signals are 0
            RegDst   = 0;
            ALUSrc   = 0;
            MemRead  = 0;
            MemtoReg = 0;
            MemWrite = 0;
            Branch_beq   = 0;
            Branch_bne   = 0;
            RegWrite = 0;
            Jump     = 0;
            LuiSig   = 0;
            ALUOp    = 2'b00;
            JumpAndLink  = 0;
        end
    endcase
end

endmodule
