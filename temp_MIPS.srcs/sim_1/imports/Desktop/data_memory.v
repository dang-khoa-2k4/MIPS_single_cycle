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
        $monitor("Time=%0t, memwrite=%b, address=%h, write_data=%h, read_data=%h",
                  $time, memwrite, address, write_data, read_data);
    end
endmodule
