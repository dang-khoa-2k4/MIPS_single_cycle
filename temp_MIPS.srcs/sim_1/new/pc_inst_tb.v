`timescale 1ns / 1ps

module pc_inst_tb;

    // Testbench Signals
    reg reset;
    reg [31:0] PCin;
    wire [31:0] PCout;
    reg clk;
    wire [31:0] inst;

     // Instantiate the module under test (MUT)
       PC pc_tb(
           .clock(clk),
           .reset(reset),
           .PCin(PCin),
           .PCout(PCout)
       );
   

    // Instantiate the INST_MEM module
    INST_MEM inst_mem_tb(
        .PC(PCout),
        .clk(clk),
        .inst(inst)
    );

       // Clock generation
       initial begin
           clk = 0;
           forever #5 clk = ~clk; // Clock period of 10ns
       end
   
       // Test procedure
       initial begin
           // Initialize signals
           reset = 1;
           PCin = 0;
           #5
           // Test cases
           #10 PCin = 32'h00000004; // Input 4
           #10 PCin = 32'h00000008; // Input 8
           #10 PCin = 32'h00000010; // Input 16
   
           // Apply reset again
//           #10 reset = 1;
           #10 reset = 0;
   
           #10 PCin = 32'h00000020; // Input 32
           #10 PCin = 32'h00000040; // Input 64
   
           // Finish simulation
           #20 $stop;
       end


    // Monitor for Debugging
    initial begin
        $monitor("Time=%0t | reset=%d | PCin=0x%h | PCout=0x%h | Instruction=0x%h", $time, reset, PCin, PCout, inst);
    end

endmodule
