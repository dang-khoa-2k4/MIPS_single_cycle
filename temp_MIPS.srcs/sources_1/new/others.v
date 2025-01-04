`timescale 1ns / 1ps

module mux #(parameter WIDTH = 32) (
    input [WIDTH-1:0] i0, i1,
    input select,
    output reg [WIDTH-1:0] o
);
    always @(*) begin
        o = select ? i1 : i0;
    end
endmodule

module add (
    input [31:0] i0, i1,
    output reg [31:0] o
);
    always @(*) begin
        o = i0 + i1;
    end
endmodule

module AndGate(Branch, Zero, AndGateOut);
	input Branch;
	input Zero;
	output reg AndGateOut;
	
	always @(*) begin
		AndGateOut <= Branch && Zero;
	end
endmodule

module shift_left_2 (
 	input [31:0] i,
	output reg [31:0] o
);
	always @(i) begin 
		o = {i[29:0], 2'b00};
	end
endmodule

module sign_extend (
	input [15:0] i,
	output reg [31:0] o
);
	always @(i) begin 
		o = {{16{i[15]}}, i};
	end

endmodule