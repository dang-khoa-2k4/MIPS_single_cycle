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


module PC(
    // clock and reset signal
    input clock, reset;
    // 32 bits PC input 
	input [31:0] PCin;
	// 32 bits PC output after incrementing by 4
	output reg [31:0] PCout;
);

	always @(posedge clock) 
    begin
		if (reset == 1) 
			PCout <= 32'b0;
		else 
			PCout <= PCin + 4; 
	end
endmodule