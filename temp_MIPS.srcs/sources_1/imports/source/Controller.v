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
    input  [5:0] opcode,       // Opcode đầu vào (Instruction [31:26])
    output reg RegDst,         // Chọn thanh ghi đích
    output reg ALUSrc,         // Chọn nguồn cho ALU
    output reg MemRead,        // Cho phép đọc bộ nhớ
    output reg MemtoReg,       // Chọn dữ liệu bộ nhớ ghi vào thanh ghi
    output reg MemWrite,       // Cho phép ghi bộ nhớ
    output reg Branch_beq,      
    output reg RegWrite,       // Cho phép ghi thanh ghi
    output reg Jump,           // Tín hiệu cho lệnh jump
    output reg [1:0] ALUOp,     // Tín hiệu điều khiển ALU
    output reg Branch_bne,
    output reg LuiSig
);

always @(*) begin
    // Giá trị mặc định cho tất cả tín hiệu

    // Giải mã opcode
    case (opcode)
        6'b000000: begin // R-Type: add, sub, and, or, nor, slt
            RegDst   = 1;
            ALUSrc   = 0;
            RegWrite = 1;
            ALUOp    = 2'b10; // Dùng funct để giải mã
        end
        6'b001000: begin // addi (Add Immediate)
            ALUSrc   = 1;
            RegWrite = 1;
            ALUOp    = 2'b00; // Phép cộng
        end
        6'b100011: begin // lw (Load Word)
            ALUSrc   = 1;
            MemRead  = 1;
            MemtoReg = 1;
            RegWrite = 1;
            ALUOp    = 2'b00; // Phép cộng để tính địa chỉ
        end
        6'b101011: begin // sw (Store Word)
            ALUSrc   = 1;
            MemWrite = 1;
            ALUOp    = 2'b00; // Phép cộng để tính địa chỉ
        end
        6'b000100: begin // beq (Branch if Equal)
            ALUSrc          = 0;
            Branch_beq      = 1;
            ALUOp           = 2'b01; // Phép trừ để so sánh
        end
        // Chỉ với 2 biet ALUop không thể truyền được các lệnh đầy đủ các lệnh như add, sub, and, or, slt nên cần truyền OPcode vào cả ALUdecoder
        // để có thể nhận biết được
        6'b001100: begin // andi (AND Immediate)
            ALUSrc   = 1;
            RegWrite = 1;
            ALUOp    = 2'b11; // Phép AND 
        end
        6'b001101: begin // ori (OR Immediate)
            ALUSrc   = 1;
            RegWrite = 1;
            ALUOp    = 2'b11; // Phép OR
        end
        6'b001010: begin // slti (Set Less Than Immediate)
            ALUSrc   = 1;
            RegWrite = 1;
            ALUOp    = 2'b11; // Phép SLT
        end
        6'b000010: begin // j (Jump)
            Jump     = 1;
        end
        // bonus
        6'b000101: begin // bne (Branch if Not Equal)
            ALUSrc          = 0;
            Branch_bne      = 1;
            ALUOp           = 2'b01; // Phép trừ để so sánh
        end 
        6'b001111: begin // lui
            RegDst  = 0;
            LuiSig = 1;
            RegWrite = 1;
        end 
        default: begin
            // Mặc định tất cả tín hiệu là 0
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
        end
    endcase
end

endmodule
