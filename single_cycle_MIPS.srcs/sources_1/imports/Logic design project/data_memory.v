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

module tb_data_memory ();
    reg clk;
    reg memwrite;
    reg [31:0] address;
    reg [31:0] write_data;
    wire [31:0] read_data;

    data_memory uut (
        .clk(clk),
        .memwrite(memwrite),
        .memread(1'b0),   // ko dùng
        .address(address),
        .write_data(write_data),
        .read_data(read_data)
    );

    // khởi tạo xung Clock
    always #5 clk = ~clk; // T = 10ns

    initial begin
        #0;
        clk = 0; memwrite = 0; address = 0; write_data = 0;

        #10;
        address = 32'd8; write_data = 32'hCAFE2024; memwrite = 1;

        #10;
        address = 32'd12; write_data = 32'h2024BABE; memwrite = 1;

        #10;
        address = 32'd8; memwrite = 0;

        #10;
        address = 32'd12; memwrite = 0;

        #10;
        $finish;
    end

    initial begin
        $monitor("Time=%0t, clk=%b, memwrite=%b, address=%h, write_data=%h, read_data=%h",
                  $time, clk, memwrite, address, write_data, read_data);
    end
endmodule
