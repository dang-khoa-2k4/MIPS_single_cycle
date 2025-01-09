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

parameter PERIOD = 20;	// 20	

reg clock;
reg reset;

// port map - connection between master ports and signals/registers   
												
MIPS uut(.i_clk(clock),						
		.i_arst(reset));

initial begin
    clock = 0;
    forever #(PERIOD/2) clock = ~clock;
end

initial begin
#0 
	reset = 1;
#10
	reset = 0;
#5000
    $finish;  
end

initial begin
    $monitor("Time=%0t:\n Instr: %h\n Registers:\n %h %h %h %h %h %h %h %h\n %h %h %h %h %h %h %h %h\n %h %h %h %h %h %h %h %h\n %h %h %h %h %h %h %h %h\n Data:\n %h %h %h %h %h %h %h %h\n %h %h %h %h %h %h %h %h\n hi: %h, lo: %h", 
            $time, uut.o_instruction,
            uut.reg_file_inst.registers[0], uut.reg_file_inst.registers[1], uut.reg_file_inst.registers[2], uut.reg_file_inst.registers[3],
            uut.reg_file_inst.registers[4], uut.reg_file_inst.registers[5], uut.reg_file_inst.registers[6], uut.reg_file_inst.registers[7],
            uut.reg_file_inst.registers[8], uut.reg_file_inst.registers[9], uut.reg_file_inst.registers[10], uut.reg_file_inst.registers[11],
            uut.reg_file_inst.registers[12], uut.reg_file_inst.registers[13], uut.reg_file_inst.registers[14], uut.reg_file_inst.registers[15],
            uut.reg_file_inst.registers[16], uut.reg_file_inst.registers[17], uut.reg_file_inst.registers[18], uut.reg_file_inst.registers[19],
            uut.reg_file_inst.registers[20], uut.reg_file_inst.registers[21], uut.reg_file_inst.registers[22], uut.reg_file_inst.registers[23],
            uut.reg_file_inst.registers[24], uut.reg_file_inst.registers[25], uut.reg_file_inst.registers[26], uut.reg_file_inst.registers[27],
            uut.reg_file_inst.registers[28], uut.reg_file_inst.registers[29], uut.reg_file_inst.registers[30], uut.reg_file_inst.registers[31],
            uut.data_memory_inst.memory[0], uut.data_memory_inst.memory[1], uut.data_memory_inst.memory[2], uut.data_memory_inst.memory[3],
            uut.data_memory_inst.memory[4], uut.data_memory_inst.memory[5], uut.data_memory_inst.memory[6], uut.data_memory_inst.memory[7],
            uut.data_memory_inst.memory[8], uut.data_memory_inst.memory[9], uut.data_memory_inst.memory[10], uut.data_memory_inst.memory[11],
            uut.data_memory_inst.memory[12], uut.data_memory_inst.memory[13], uut.data_memory_inst.memory[14], uut.data_memory_inst.memory[15],
            uut.alu_inst.hi, uut.alu_inst.lo);
end
endmodule