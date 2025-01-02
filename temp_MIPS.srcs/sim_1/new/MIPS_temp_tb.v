`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2025 11:03:27 AM
// Design Name: 
// Module Name: MIPS_temp_tb
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


module testbench;

parameter PERIOD = 10;	// 20	

reg clock;
reg reset;
wire [31:0] instr;
wire [31:0] cur_pc;
wire [31:0] next_pc;

// port map - connection between master ports and signals/registers   
												
MIPS_temp MIPS_inst(.i_clk(clock),						
		.i_arst(reset),
		.o_instruction(instr),
		.o_pc_cur(cur_pc),
		.o_pc_next(next_pc));

initial begin
#10
    clock = 0;
    forever #(PERIOD/2) clock = ~clock;
end

initial begin
#0 
	reset = 1;
#10
	reset = 0;

#300000
    $finish;  
end
  
endmodule
