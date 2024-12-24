`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2024 11:22:29 PM
// Design Name: 
// Module Name: controller_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Controller_tb;

    // Khai báo các tín hiệu
    reg [5:0] opcode;  // Input
    wire RegDst, ALUSrc, MemRead, MemtoReg, MemWrite, Branch, RegWrite, Jump;
    wire [1:0] ALUOp;  // Output

    // Instantiate Controller
    Controller uut (
        .opcode(opcode),
        .RegDst(RegDst),
        .ALUSrc(ALUSrc),
        .MemRead(MemRead),
        .MemtoReg(MemtoReg),
        .MemWrite(MemWrite),
        .Branch(Branch),
        .RegWrite(RegWrite),
        .Jump(Jump),
        .ALUOp(ALUOp)
    );

    // Monitor tất cả tín hiệu output
    initial begin
        $monitor("Time=%0t | Opcode=%b | RegDst=%b | ALUSrc=%b | MemRead=%b | MemtoReg=%b | MemWrite=%b | Branch=%b | RegWrite=%b | Jump=%b | ALUOp=%b", 
                 $time, opcode, RegDst, ALUSrc, MemRead, MemtoReg, MemWrite, Branch, RegWrite, Jump, ALUOp);
    end

    // Test các lệnh
    initial begin
        // Test R-Type (opcode = 000000)
        opcode = 6'b000000; #10;

        // Test lw (Load Word)
        opcode = 6'b100011; #10;

        // Test sw (Store Word)
        opcode = 6'b101011; #10;

        // Test beq (Branch if Equal)
        opcode = 6'b000100; #10;

        // Test addi (Add Immediate)
        opcode = 6'b001000; #10;

        // Test andi (AND Immediate)
        opcode = 6'b001100; #10;

        // Test ori (OR Immediate)
        opcode = 6'b001101; #10;

        // Test slti (Set Less Than Immediate)
        opcode = 6'b001010; #10;

        // Test j (Jump)
        opcode = 6'b000010; #10;

        // Kết thúc mô phỏng
        $finish;
    end

endmodule
