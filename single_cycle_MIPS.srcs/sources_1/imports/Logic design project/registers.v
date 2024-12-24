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

module tb_registers ();
    reg clk;
    reg regwrite;
    reg [4:0] read_reg1, read_reg2, write_reg;
    reg [31:0] write_data;
    wire [31:0] read_data1, read_data2;

    registers uut (
        .clk(clk),
        .regwrite(regwrite),
        .read_reg1(read_reg1),
        .read_reg2(read_reg2),
        .write_reg(write_reg),
        .write_data(write_data),
        .read_data1(read_data1),
        .read_data2(read_data2)
    );

    // khởi tạo xung clock
    always #5 clk = ~clk; // T = 10ns

    initial begin
        #0;
        clk = 0; regwrite = 0; read_reg1 = 0; read_reg2 = 0; write_reg = 0; write_data = 0;

        #10;
        write_reg = 5'd1; write_data = 32'hDEADBEEF; regwrite = 1;

        #10;
        write_reg = 5'd3; write_data = 32'hCAFEBABE; regwrite = 1;

        #10;
        regwrite = 0; read_reg1 = 5'd1; read_reg2 = 5'd3;

        #10;
        $finish;
    end

    initial begin
        $monitor("Time=%0t, clk=%b, regwrite=%b, read_reg1=%d, read_data1=%h, read_reg2=%d, read_data2=%h",
                  $time, clk, regwrite, read_reg1, read_data1, read_reg2, read_data2);
    end
endmodule