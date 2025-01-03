`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2024 09:54:41 PM
// Design Name: 
// Module Name: ALU
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


// Module: ALU.v
// Project: Single-cycle MIPS processor in Verilog HDL.	
// Description: Arithmetic logic unit.
// Author: github.com/vsilchuk

module ALU(i_data_A, i_data_B, i_alu_control, o_zero_flag, o_result);
input [31:0] i_data_A;					// A operand 
input [31:0] i_data_B;					// B operand
input [3:0] i_alu_control;				// Control signal

output reg [31:0] o_result;				// ALU result
output wire o_zero_flag;				// Zero flag 

assign o_zero_flag = ~|o_result;

// ALU operation logic
always @(*) begin
    case (i_alu_control)
        4'b0000: o_result = i_data_A & i_data_B;  // AND
        4'b0001: o_result = i_data_A | i_data_B;  // OR
        4'b0010: o_result = i_data_A + i_data_B;  // ADD
        4'b0110: o_result = i_data_A - i_data_B;  // SUB
        4'b0111: o_result = (i_data_A < i_data_B) ? 32'b1 : 32'b0; // SLT
        4'b1100: o_result = ~(i_data_A | i_data_B); // NOR
        default: o_result = 32'b0;                // Default case
    endcase
end


endmodule

