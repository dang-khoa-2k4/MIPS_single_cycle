module testbench();
    reg [25:0] addr;
    reg [31:0] PCout;
    wire [31:0] jump_out;

    jump_address uut (
        .addr(addr),
        .PCout(PCout),
        .jump_out(jump_out)
    );

    initial begin
        // Test case 1
        addr = 26'b00000000000000000000000001;
        PCout = 32'h12345678;
        #10;

        // Test case 2
        addr = 26'b11111111111111111111111111;
        PCout = 32'h87654321;
        #10;

        $stop;
    end
endmodule
