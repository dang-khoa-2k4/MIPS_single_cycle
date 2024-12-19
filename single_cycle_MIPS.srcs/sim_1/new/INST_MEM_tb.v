`timescale 1ns / 1ps

module INST_MEM_tb;

    // Parameters
    `define INST_MEM_SIZE 1024

    // Testbench Signals
    reg [31:0] PC;
    reg clk;
    wire [31:0] inst;

    // Instantiate the INST_MEM module
    INST_MEM uut (
        .PC(PC),
        .clk(clk),
        .inst(inst)
    );

    // Clock Generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Clock period of 10ns
    end

    // Test Procedure
    initial begin
        // Initialize PC
        PC = 32'h00000000;

        // Wait for a few clock cycles
        #10;
        
        // Test case 1: PC = 0 (should fetch mem[0])
        PC = 32'h00000000;
        #10;
        
        // Test case 2: PC = 4 (should fetch mem[1])
        PC = 32'h00000004;
        #10;
        
        // Test case 3: PC = 8 (should fetch mem[2])
        PC = 32'h00000008;
        #10;
        
        // Test case 4: PC = 12 (should fetch mem[3])
        PC = 32'h0000000C;
        #10;
        
        // Test case 5: PC = 16 (should fetch mem[4])
        PC = 32'h00000010;
        #10;
        
        // Test case 7: PC beyond memory size (should handle out-of-bounds)
        PC = 32'h00000400; // 1024 in decimal, out-of-bounds for mem[0:1023]
        #10;
        
        // Finish simulation
        #10 $stop;
    end

    // Monitor for Debugging
    initial begin
        $monitor("Time=%0t | PC=0x%h | Instruction=0x%h", $time, PC, inst);
    end

endmodule
