`timescale 1ns / 1ps



module MIPS_tb();

    // Testbench signals
    reg clock;
    reg reset;

    // Outputs from MIPS
    wire [31:0] PCout;
    wire [31:0] inst;
    wire RegDst, RegWrite, ALUSrc, MemtoReg, MemRead, MemWrite, Branch, Jump;
    wire [1:0] ALUOp;
    wire [4:0] WriteReg;
    wire [31:0] ReadData1, ReadData2, Extend32, ALU_B, ShiftOut, ALUOut, Add_ALUOut, WriteData_Reg, ReadData;
    wire [3:0] ALUCtl;
    wire Zero;
    wire AndGateOut;

    // Declare PCin as wire (connected to inout)
    wire [31:0] PCin;
    
    init_tb init(
            .PC_init(PCin)
        );
    
    // Instantiate the MIPS module
    MIPS uut (
        .clock(clock),
        .reset(reset),
        .PCin(PCin),  // Connect the wire to the inout port
        .PCout(PCout),
        .inst(inst),
        .RegDst(RegDst),
        .RegWrite(RegWrite),
        .ALUSrc(ALUSrc),
        .MemtoReg(MemtoReg),
        .MemRead(MemRead),
        .MemWrite(MemWrite),
        .Branch(Branch),
        .Jump(Jump),
        .ALUOp(ALUOp),
        .WriteReg(WriteReg),
        .ReadData1(ReadData1),
        .ReadData2(ReadData2),
        .Extend32(Extend32),
        .ALU_B(ALU_B),
        .ShiftOut(ShiftOut),
        .ALUCtl(ALUCtl),
        .Zero(Zero),
        .ALUOut(ALUOut),
        .Add_ALUOut(Add_ALUOut),
        .AndGateOut(AndGateOut),
        .ReadData(ReadData),
        .WriteData_Reg(WriteData_Reg)
    );


    // Clock generation
    initial begin
        clock = 0;
        forever #5 clock = ~clock; // 10ns clock period
    end

    // Stimulus
    initial begin
        reset = 1;
        #5;
        reset = 0;
        #1000
        $stop;
    end

    // Monitor outputs
    initial begin
        $monitor($time, " PCin=%h, PCout=%h, inst=%h, ALUOut=%h, Zero=%b",
              PCin ,PCout, inst, ALUOut, Zero);
    end

endmodule

module init_tb(
    output reg [31 : 0] PC_init
    );
    initial begin 
        PC_init = 0;
    end 
endmodule
