`timescale 1ns / 1ps
/* data_memory
 * @clk: Clock signal of the system
 * @memwrite: Signal received from the control unit for writing to memory
 * @address: Address received from the ALU
 * @write_data: Data to be written into memory
 * @read_data: Data read from memory to be stored in registers
 */
module data_memory (
    input clk,                   // Clock signal
    input memwrite,              // Memory write enable signal
    input memread,               // Memory read enable signal (not actually needed here)
    input [31:0] address,        // 32-bit memory address
    input [31:0] write_data,     // Data to write into memory

    output wire [31:0] read_data // 32-bit data read from memory
);
    reg [31:0] memory [63:0];    // Define a 64x32-bit RAM array

    // Initialize memory with zeros
    integer i;
    initial begin
        for (i = 0; i < 64; i = i + 1) begin
            memory[i] = 32'b0;
        end
    end

    wire [29:0] addr;
    assign addr = address[31:2]; // Right-shift the address by 2 bits (divide by 4)

    // Assign read_data only when addr is within valid range
    assign read_data = (addr < 64) ? memory[addr] : 0;

    // Memory write operation triggered on the positive edge of the clock
    always @(posedge clk) begin
        if (memwrite) begin
            memory[addr] <= (addr < 64) ? write_data : memory[addr];
        end
    end
endmodule
