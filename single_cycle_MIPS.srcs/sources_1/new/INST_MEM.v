`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 12/14/2024 03:20:00 PM
// Design Name: 
// Module Name: PC.v
// Project Name: single - cycle MIPS processor
//
// Description: 
// This module is the program counter of the MIPS processor. 
// It increments the PC by 4 every clock cycle 
// and resets the PC to 0 when reset is high (synchronous reset).
// Don't need to add 4 to the PCin input, it will be done in this module.
//
// Dependencies: 
// MIPs module (MIPS.v) 
// Instruction Memory module (INST_MEM.v)
//
// Additional Comments:
// Reset is synchronous with the clock
//////////////////////////////////////////////////////////////////////////////////
`define INST_MEM_SIZE 1024

module INST_MEM(
    input [31:0] PC,
    input clk,
    output reg [31:0] inst
);
    // 32-bit memory with 1024 words
    // 1024 entries of 32 bits each
    reg [31:0] mem [0:`INST_MEM_SIZE-1];

    initial
    begin
        $readmemh("instruction.mem", mem);
    end

    always @ (posedge clk)
    begin
        // PC is divided by 4 to get the memory address,
        // because the memory is word addressed
        // PC : 0x0000_0000 -> mem[0]
        // PC : 0x0000_0004 -> mem[1]
        inst <= mem[PC >> 2];
    end

endmodule