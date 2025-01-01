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
// Decode the signal for other components based on opcode 
// ALUOp= 00 -> add
// ALUOp= 01 -> sub
// ALUOp= 10 -> R-type
// ALUOp= 11 -> I-type 
// When addi, it is treated as add.
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module Controller(
    input  [5:0] Opcode,       // Opcode đầu vào (Instruction [31:26])
    output reg RegDst,         // Chọn thanh ghi đích
    output reg ALUSrc,         // Chọn nguồn cho ALU
    output reg MemRead,        // Cho phép đọc bộ nhớ
    output reg MemtoReg,       // Chọn dữ liệu bộ nhớ ghi vào thanh ghi
    output reg MemWrite,       // Cho phép ghi bộ nhớ
    output reg Branch,         // Tín hiệu nhảy có điều kiện
    output reg RegWrite,       // Cho phép ghi thanh ghi
    output reg Jump,           // Tín hiệu cho lệnh jump
    output reg [1:0] ALUOp     // Tín hiệu điều khiển ALU
);

always @(*) begin
    // Giá trị mặc định cho tất cả tín hiệu
    RegDst   = 1'b0;
    ALUSrc   = 1'b0;
    MemRead  = 1'b0;
    MemtoReg = 1'b0;
    MemWrite = 1'b0;
    Branch   = 1'b0;
    RegWrite = 1'b0;
    Jump     = 1'b0;
    ALUOp    = 2'b00;

    // Giải mã opcode
    case (Opcode)
        6'b000000: begin // R-Type: add, sub, and, or, nor, slt
            RegDst   = 1'b1;
            ALUSrc   = 1'b0;
            RegWrite = 1'b1;
            ALUOp    = 2'b10; // Dùng funct để giải mã
        end
        6'b001000: begin // addi (Add Immediate)
            ALUSrc   = 1'b1;
            RegWrite = 1'b1;
            ALUOp    = 2'b00; // Phép cộng
        end
        6'b100011: begin // lw (Load Word)
            ALUSrc   = 1'b1;
            MemRead  = 1'b1;
            MemtoReg = 1'b1;
            RegWrite = 1'b1;
            ALUOp    = 2'b00; // Phép cộng để tính địa chỉ
        end
        6'b101011: begin // sw (Store Word)
            ALUSrc   = 1'b1;
            MemWrite = 1'b1;
            ALUOp    = 2'b00; // Phép cộng để tính địa chỉ
        end
        6'b000100: begin // beq (Branch if Equal)
            ALUSrc   = 1'b0;
            Branch   = 1'b1;
            ALUOp    = 2'b01; // Phép trừ để so sánh
        end
        6'b001100: begin // andi (AND Immediate)
            ALUSrc   = 1'b1;
            RegWrite = 1'b1;
            ALUOp    = 2'b11; // Phép AND 
        end
        6'b001101: begin // ori (OR Immediate)
            ALUSrc   = 1'b1;
            RegWrite = 1'b1;
            ALUOp    = 2'b11; // Phép OR
        end
        6'b001010: begin // slti (Set Less Than Immediate)
            ALUSrc   = 1'b1;
            RegWrite = 1'b1;
            ALUOp    = 2'b11; // Phép SLT
        end
        6'b000010: begin // j (Jump)
            Jump     = 1'b1;
        end
        default: begin
            // Tín hiệu mặc định nếu opcode không khớp
            RegDst   = 1'b0;
            ALUSrc   = 1'b0;
            MemRead  = 1'b0;
            MemtoReg = 1'b0;
            MemWrite = 1'b0;
            Branch   = 1'b0;
            RegWrite = 1'b0;
            Jump     = 1'b0;
            ALUOp    = 2'b00;
        end
    endcase
end

endmodule
