module mux #(parameter WIDTH = 32) (
    input [WIDTH-1:0] i0, i1,
    input select,
    output wire [WIDTH-1:0] o
);
    assign o = select ? i1 : i0; // Correct usage of assign
endmodule

module add (
    input [31:0] i0, i1,
    output wire [31:0] o
);
    assign o = i0 + i1; // Correct usage of assign
endmodule

module AndGate(
    input Branch,
    input Zero,
    output wire AndGateOut
);
    assign AndGateOut = Branch && Zero; // Correct usage of assign
endmodule

module shift_left_2 (
    input [31:0] i,
    output wire [31:0] o
);
    assign o = {i[29:0], 2'b00}; // Correct usage of assign
endmodule

module sign_extend (
    input [15:0] i,
    output wire [31:0] o
);
    assign o = {{16{i[15]}}, i}; // Correct usage of assign
endmodule
