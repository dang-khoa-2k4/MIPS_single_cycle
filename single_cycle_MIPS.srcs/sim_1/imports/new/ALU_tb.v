`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/23/2024 09:37:30 AM
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb;

    // Inputs
    reg [31:0] i_data_A;
    reg [31:0] i_data_B;
    reg [3:0] i_alu_control;

    // Outputs
    wire [31:0] o_result;
    wire o_zero_flag;

    // Instantiate the ALU module
    ALU uut (
        .i_data_A(i_data_A),
        .i_data_B(i_data_B),
        .i_alu_control(i_alu_control),
        .o_result(o_result),
        .o_zero_flag(o_zero_flag)
    );

    // Testbench logic
    initial begin
        $display("Time\ti_data_A\ti_data_B\ti_alu_control\to_result\to_zero_flag");
        $monitor("%0t\t%h\t%h\t%b\t%h\t%b", $time, i_data_A, i_data_B, i_alu_control, o_result, o_zero_flag);

        // Test AND operation
        i_data_A = 32'hA5A5A5A5;  // Test pattern
        i_data_B = 32'h5A5A5A5A;
        i_alu_control = 4'b0000; // AND
        #10;

        // Test OR operation
        i_alu_control = 4'b0001; // OR
        #10;

        // Test ADD operation
        i_alu_control = 4'b0010; // ADD
        #10;

        // Test SUB operation
        i_alu_control = 4'b0110; // SUB
        #10;

        // Test SLT operation
        i_data_A = 32'h00000005; 
        i_data_B = 32'h0000000A; 
        i_alu_control = 4'b0111; // SLT
        #10;

        // Test SLT operation with different inputs
        i_data_A = 32'h0000000A; 
        i_data_B = 32'h00000005; 
        #10;

        // Test default case
        i_alu_control = 4'b1111; // Undefined control signal
        #10;

        $finish;
    end

endmodule

