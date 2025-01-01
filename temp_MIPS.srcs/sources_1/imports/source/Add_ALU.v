`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 10:57:47 AM
// Design Name: 
// Module Name: Add_ALU
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


module Add_ALU(PCout, ShiftOut, Add_ALUOut);

	input [31:0] PCout;
	input [31:0] ShiftOut;
	
	output reg [31:0] Add_ALUOut;

	always @(*) begin
		Add_ALUOut <= PCout + ShiftOut;
	end
endmodule
