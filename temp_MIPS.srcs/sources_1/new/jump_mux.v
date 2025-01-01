`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 09:51:27 PM
// Design Name: 
// Module Name: jump_mux
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


module JumpMux (
    input [25:0] addr,        // Address part for the jump (from instruction)
    input [31:0] PCout,       // Current program counter value
    input [31:0] Add_ALUOut,  // ALU output for branch target address
    input AndGateOut,         // Result of the AND gate for branch decision
    input Jump,               // Jump control signal
    output wire [31:0] PCin   // Program counter input for next cycle
);

    wire [31:0] jump_addr;    // Jump address output
    wire [31:0] next_addr;    // Next address after mux selection

    // Instantiate jump address module
    jump_address jump_addr_0 (
        .addr(addr),           // Address from instruction
        .PCout(PCout),         // Upper 4 bits of the program counter
        .jump_out(jump_addr)   // Output jump address
    );

    // Instantiate first mux (mux_2) for branch or normal next address
    mux #(32) mux_2 (
        .i0(PCout),            // If branch, use PCout
        .i1(Add_ALUOut),       // If branch, use ALU output
        .select(AndGateOut),   // Branch decision based on AND gate output
        .o(next_addr)          // Mux output (next address)
    );

    // Instantiate second mux (mux_3) for jump or branch/normal address
    mux #(32) mux_3 (
        .i0(jump_addr),        // Jump address from jump_address module
        .i1(next_addr),        // Branch or normal address from previous mux
        .select(Jump),         // Jump signal to decide mux selection
        .o(PCin)               // Final program counter input
    );

endmodule

