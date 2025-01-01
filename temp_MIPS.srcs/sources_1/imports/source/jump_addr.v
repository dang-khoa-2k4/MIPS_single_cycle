`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 11:12:55 AM
// Design Name: 
// Module Name: jump_addr
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


module jump_address(
    input [25:0] addr,
    input [3:0] PCout, // Upper 4 bits of the program counter
    output [31:0] jump_out
);

    // Concatenate PCout (upper 4 bits), shifted address, and zero-padding
    assign jump_out = {PCout, addr, 2'b00};

endmodule

