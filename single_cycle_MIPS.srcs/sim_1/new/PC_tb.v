`timescale 1ns / 1ps

module PC_tb;

    // Testbench signals
    reg clock;
    reg reset;
    reg [31:0] PCin;
    wire [31:0] PCout;

    // Instantiate the module under test (MUT)
    PC uut (
        .clock(clock),
        .reset(reset),
        .PCin(PCin),
        .PCout(PCout)
    );

    // Clock generation
    initial begin
        clock = 0;
        forever #5 clock = ~clock; // Clock period of 10ns
    end

    // Test procedure
    initial begin
        // Initialize signals
        reset = 0;
        PCin = 0;

        // Apply reset
        #10 reset = 1;
        #10 reset = 0;

        // Test cases
        #10 PCin = 32'h00000004; // Input 4
        #10 PCin = 32'h00000008; // Input 8
        #10 PCin = 32'h00000010; // Input 16

        // Apply reset again
        #10 reset = 1;
        #10 reset = 0;

        #10 PCin = 32'h00000020; // Input 32
        #10 PCin = 32'h00000040; // Input 64

        // Finish simulation
        #20 $stop;
    end

    // Monitor for debugging
    initial begin
        $monitor("Time=%0t | reset=%b | PCin=%h | PCout=%h", $time, reset, PCin, PCout);
    end

endmodule
