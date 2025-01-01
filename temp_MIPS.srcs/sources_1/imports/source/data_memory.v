`timescale 1ns / 1ps
/*data_memory
 *@clk: xung clock cua he thong
 *@memwrite: tin hieu nhan tu control unit
 *@address: nhan tu khoi ALU
 *@write_data: data can luu vao bo nho
 *@read_data: data can luu vao thanh ghi
 */
module data_memory (
    input clk,
    input memwrite,
    input memread,  // thật sự ko cần
    input [31:0] address,
    input [31:0] write_data,

    output wire [31:0] read_data
);
    reg [31:0] memory [63:0]; // RAM = 64*32-bit

    integer i;
    initial begin // khởi tạo data memory 
        for (i = 0; i < 64; i = i + 1) begin
            memory[i] = 32'b0;
        end
    end

    wire [29:0] addr;
    assign addr = address[31:2]; // dịch phải 2-bit (chia 4)

    assign read_data = (addr < 64) ? memory[addr] : 0;

    always @(posedge clk) begin
        if (memwrite) begin
            memory[addr] <= (addr < 64) ? write_data : memory[addr];
        end
    end
endmodule

