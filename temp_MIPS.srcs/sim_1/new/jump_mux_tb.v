`timescale 1ns / 1ps

module tb_JumpMux;
    
    // Inputs
    reg [25:0] addr;          // Jump address part from instruction
    reg [31:0] PCout;         // Current PC value
    reg [31:0] Add_ALUOut;    // ALU output for branch target address
    reg AndGateOut;           // AND gate result (branch decision)
    reg Jump;                 // Jump control signal

    // Output
    wire [31:0] PCin;         // PC input for the next cycle

    // Instantiate the JumpMux module
    JumpMux uut (
        .addr(addr),
        .PCout(PCout),
        .Add_ALUOut(Add_ALUOut),
        .AndGateOut(AndGateOut),
        .Jump(Jump),
        .PCin(PCin)
    );

    // Stimulus block to apply inputs and test functionality
    initial begin
        // Initialize inputs
        addr = 26'b00000000000000000000000000;  // Example jump address (0x0)
        PCout = 32'h00400000;                  // Example PC value (0x00400000)
        Add_ALUOut = 32'h00400004;             // Example branch address (0x00400004)
        AndGateOut = 0;                        // No branch
        Jump = 0;                              // No jump

        // Apply test cases
        $display("Test 1: No Jump, No Branch");
        #10; // Wait 10 time units
        $display("PCin = %h, Expected PCin = %h", PCin, PCout);  // Expect PCin = PCout

        // Test case with branch
        AndGateOut = 1;  // Branch is taken
        $display("Test 2: Branch Taken");
        #10;
        $display("PCin = %h, Expected PCin = %h", PCin, Add_ALUOut); // Expect PCin = Add_ALUOut

        // Test case with jump
        Jump = 1;  // Jump is taken
        $display("Test 3: Jump Taken");
        #10;
        $display("PCin = %h, Expected PCin = %h", PCin, {PCout[31:28], addr, 2'b00}); // Expect jump address

        // Test case with both jump and branch
        Jump = 1;  // Jump is taken
        AndGateOut = 1;  // Branch is also taken
        $display("Test 4: Jump and Branch");
        #10;
        $display("PCin = %h, Expected PCin = %h", PCin, {PCout[31:28], addr, 2'b00}); // Expect jump address

        // Test with different jump address
        addr = 26'b11111111111111111111111111; // New jump address
        $display("Test 5: Different Jump Address");
        #10;
        $display("PCin = %h, Expected PCin = %h", PCin, {PCout[31:28], addr, 2'b00}); // Expect new jump address

        // Finish simulation
        $finish;
    end

endmodule
