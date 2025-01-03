`timescale 1ns / 1ps
/*registers
 *@clk: xung clock cua he thong
 *@regwrite: tin hieu nhan tu control unit
 *@read_reg1, read_reg2, write_rg: chi so cac thanh ghi nguon va dich
 *@write_data: data can luu vao thanh ghi
 *@read_data1, read_data2: gia tri duoc luu trong thanh ghi nguon
 */
module registers (
    input clk,
    input regwrite,
    input [4:0] read_reg1, read_reg2, write_reg,
    input [31:0] write_data,

    output wire [31:0] read_data1, read_data2
);
    reg [31:0] registers [31:0]; // 32 thanh ghi 32-bit

    

    // nếu là $zero thì ko đc ghi vào
    always @(posedge clk) begin
        if (regwrite) begin
            registers[write_reg] <= (write_reg != 0) ? write_data : 0;
        end
    end

    assign read_data1 = (read_reg1 != 0) ? registers[read_reg1] : 0;
    assign read_data2 = (read_reg2 != 0) ? registers[read_reg2] : 0;
endmodule

