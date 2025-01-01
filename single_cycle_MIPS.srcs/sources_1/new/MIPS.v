module MIPS(
    input clock,
    input reset,
    
    // Outputs for debugging and synthesis
    output wire [31:0] PCin, PCout,
    output wire [31:0] inst,
    output wire RegDst, RegWrite, ALUSrc, MemtoReg, MemRead, MemWrite, Branch, Jump,
    output wire [1:0] ALUOp,
    output wire [4:0] WriteReg,
    output wire [31:0] ReadData1, ReadData2,
    output wire [31:0] Extend32,
    output wire [31:0] ALU_B,
    output wire [31:0] ShiftOut,
    output wire [3:0] ALUCtl,
    output wire Zero,
    output wire [31:0] ALUOut,
    output wire [31:0] Add_ALUOut,
    output wire AndGateOut,
    output wire [31:0] ReadData,
    output wire [31:0] WriteData_Reg
);
    // Connection of PC
    PC pc_0(
        .clock(clock),
        .reset(reset),
        .PCin(PCin),
        .PCout(PCout)
    );

    // Connection of Instruction Memory
    INST_MEM instmem_0(
        .clk(clock),
        .PC(PCout),
        .inst(inst)
    );

    // Connection of Main Control
    Controller main_control(
        .Opcode(inst[31:26]),
        .RegDst(RegDst),
        .ALUSrc(ALUSrc),
        .MemRead(MemRead),
        .MemtoReg(MemtoReg),
        .MemWrite(MemWrite),
        .Branch(Branch),
        .RegWrite(RegWrite),
        .Jump(Jump),
        .ALUOp(ALUOp)
    );

    // Mux for Register File Write Address
    mux #(5) mux_0(
        .i0(inst[20:16]),
        .i1(inst[15:11]),
        .select(RegDst),
        .o(WriteReg)
    );

    // Register File
    registers regfile_0(
        .clk(clock),
        .regwrite(RegWrite),
        .read_reg1(inst[25:21]),
        .read_reg2(inst[20:16]),
        .write_reg(WriteReg),
        .write_data(WriteData_Reg),
        .read_data1(ReadData1),
        .read_data2(ReadData2)
    );

    // Sign Extension
    sign_extend sign_extend_0(
        .i(inst[15:0]),
        .o(Extend32)
    );

    // ALU Input Mux
    mux #(32) mux_1(
        .i0(ReadData2),
        .i1(Extend32),
        .select(ALUSrc),
        .o(ALU_B)
    );

    // Shift Left 2
    shift_left_2 shift_left_0(
        .i(Extend32),
        .o(ShiftOut)
    );

    // ALU Control
    ALU_decoder alu_decode_0(
        .ALUOp(ALUOp),
        .funct(inst[5:0]),
        .opcode(inst[31:26]),
        .ALUControl(ALUCtl)
    );

    // ALU
    ALU alu_0(
        .i_data_A(ReadData1),
        .i_data_B(ALU_B),
        .i_alu_control(ALUCtl),
        .o_result(ALUOut),
        .o_zero_flag(Zero)
    );

    // Add ALU for Branch Target Calculation
    Add_ALU add_alu_0(
        .PCout(PCout),
        .ShiftOut(ShiftOut),
        .Add_ALUOut(Add_ALUOut)
    );

    // AND Gate for Branch Decision
    AndGate and_gate_0(
        .Branch(Branch),
        .Zero(Zero),
        .AndGateOut(AndGateOut)
    );

    // Jump Address Calculation
    wire [31:0] jump_addr;
    jump_addr jump_addr_0(
        .addr(inst[25:0]),
        .PCout(PCout),
        .jump_out(jump_addr)
    );

    // Next Address Mux for Branch and Jump
    wire [31:0] next_addr;
    mux #(32) mux_2(
        .i0(Add_ALUOut),
        .i1(PCout),
        .select(AndGateOut),
        .o(next_addr)
    );

    mux #(32) mux_3(
        .i0(next_addr),
        .i1(jump_addr),
        .select(Jump),
        .o(PCin)
    );

    // Data Memory
    data_memory data_memory_0(
        .clk(clock),
        .memwrite(MemWrite),
        .memread(MemRead),
        .address(ALUOut),
        .write_data(ReadData2),
        .read_data(ReadData)
    );

    // Write Data to Register File
    mux #(32) mux_4(
        .i0(ReadData),
        .i1(ALUOut),
        .select(MemtoReg),
        .o(WriteData_Reg)
    );

endmodule
