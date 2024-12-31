module mux #(parameter WIDTH=32) (
	input [WIDTH-1:0] i0, i1,
	input select,
	output wire [WIDTH-1:0] o
);
	always @(i0, i1, select) begin
		assign o = select ? i1 : i0;
	end
endmodule

module add (
	input [31:0] i0, i1,
 	output wire [31:0] o
);
	always @(i0, i1) begin 
		assign o = i0 + i1;
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
	output wire [31:0] o
);
	always @(i) begin 
		assign o = {i[29:0], 2'b00};
	end
endmodule

module sign_extend (
	input [15:0] i,
	output wire [31:0] o
);
	always @(i) begin 
		assign o = {{16{i[15]}}, i};
	end

endmodule