`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2024 10:28:54 PM
// Design Name: 
// Module Name: ALU_decoder_tb
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

module ALU_decoder_tb;

    // Khai báo tín hiệu
    reg [1:0] ALUOp;           // ALUOp từ Controller
    reg [5:0] funct;           // Funct field cho R-Type
    reg [5:0] opcode;          // Opcode cho I-Type
    wire [3:0] ALUControl;     // Output: Tín hiệu điều khiển ALU

    // Instantiate ALU_decoder
    ALU_decoder uut (
        .ALUOp(ALUOp),
        .funct(funct),
        .opcode(opcode),
        .ALUControl(ALUControl)
    );

    // Monitor các tín hiệu
    initial begin
        $monitor("Time=%0t | ALUOp=%b | funct=%b | opcode=%b | ALUControl=%b",
                 $time, ALUOp, funct, opcode, ALUControl);
    end

    // Test các trường hợp
    initial begin
        // Test ADD (I-Type: addi, lw, sw) -> ALUOp = 00
        ALUOp = 2'b00; funct = 6'bxxxxxx; opcode = 6'bxxxxxx; #10;

        // Test SUB (beq) -> ALUOp = 01
        ALUOp = 2'b01; funct = 6'bxxxxxx; opcode = 6'bxxxxxx; #10;

        // Test R-Type (AND) -> ALUOp = 10, funct = 100100
        ALUOp = 2'b10; funct = 6'b100100; opcode = 6'b000000; #10;

        // Test R-Type (OR) -> ALUOp = 10, funct = 100101
        ALUOp = 2'b10; funct = 6'b100101; opcode = 6'b000000; #10;

        // Test R-Type (ADD) -> ALUOp = 10, funct = 100000
        ALUOp = 2'b10; funct = 6'b100000; opcode = 6'b000000; #10;

        // Test R-Type (SUB) -> ALUOp = 10, funct = 100010
        ALUOp = 2'b10; funct = 6'b100010; opcode = 6'b000000; #10;

        // Test R-Type (SLT) -> ALUOp = 10, funct = 101010
        ALUOp = 2'b10; funct = 6'b101010; opcode = 6'b000000; #10;

        // Test I-Type (ANDI) -> ALUOp = 11, opcode = 001100
        ALUOp = 2'b11; funct = 6'bxxxxxx; opcode = 6'b001100; #10;

        // Test I-Type (ORI) -> ALUOp = 11, opcode = 001101
        ALUOp = 2'b11; funct = 6'bxxxxxx; opcode = 6'b001101; #10;

        // Test I-Type (SLTI) -> ALUOp = 11, opcode = 001010
        ALUOp = 2'b11; funct = 6'bxxxxxx; opcode = 6'b001010; #10;

        // Test default case (Undefined ALUOp)
        ALUOp = 2'b11; funct = 6'bxxxxxx; opcode = 6'b111111; #10;

        // Kết thúc mô phỏng
        $finish;
    end
endmodule

