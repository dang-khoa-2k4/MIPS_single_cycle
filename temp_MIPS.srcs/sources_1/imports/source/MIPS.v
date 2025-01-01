`timescale 1ns / 1ps

module MIPS(
                clock, reset, 
                PCin,PCout,
                inst,
                RegDst, RegWrite, ALUSrc, MemtoReg, MemRead, MemWrite, Branch, Jump,
                ALUOp,
                WriteReg,
                ReadData1, ReadData2,
                Extend32,
                ALU_B,
                ShiftOut,
                ALUCtl,
                Zero,
                ALUOut,
                Add_ALUOut,
                AndGateOut,
                ReadData,
                WriteData_Reg
            );
    input clock;
	input reset;

    // Connection of PC
    output wire [31:0] PCin;  // Tín hi?u PCin ki?u reg
    output wire [31:0] PCout; // Tín hi?u PCout ki?u wire
        
    assign PCin = reset ? 32'b0 : PCin;  // Gán giá tr? 0 cho PCin

    
	PC pc_0(
		//inputs
		.clock(clock),
		.reset(reset),
		.PCin(PCin),
		//outputs
		.PCout(PCout)	
	);

    //Connection of INST_MEM
	output wire [31:0] inst;
	INST_MEM instmem_0(
		//inputs
		.clk(clock),
		.PC(PCin),
		//outputs
		.inst(inst)	
	);

    //Connection of MainControl
	output wire RegDst, RegWrite, ALUSrc, MemtoReg
                , MemRead, MemWrite, Branch, Jump;
	output wire [1:0] ALUOp;
	 Controller main_control(
	 	//inputs
	 	.opcode(inst[31:26]),
	 	//outputs
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

    //Connection of the Mux between InstMem and RegisterFile
	output wire [4:0]  WriteReg;
	 mux #(5) mux_0 (
	 	//inputs
	 	.i0(inst[20:16]),
	 	.i1(inst[15:11]),
	 	.select(RegDst),
	 	//outputs
	 	.o(WriteReg)	
	 );

    //Connection of RegFile
    output wire[31:0] WriteData_Reg;
	output wire [31:0] ReadData1, ReadData2;
	 registers regfile_0(
	 	//inputs
	 	.clk(clock),
	 	.regwrite(RegWrite),
	 	.read_reg1(inst[25:21]),
	 	.read_reg2(inst[20:16]),
	 	.write_data(WriteData_Reg),
	 	.write_reg(WriteReg),	
	 	//outputs
	 	.read_data1(ReadData1),
	 	.read_data2(ReadData2)	
	 );

    //Connection of Sign Extend
	output wire [31:0] Extend32;
	 sign_extend sign_extend_0(
	 	//inputs
	 	.i(inst[15:0]),
	 	//outputs
	 	.o(Extend32)
	 );

    //Connection of Mux2
	output wire [31:0] ALU_B;
	 mux #(32) mux_1(
	 	//inputs
	 	.i0(ReadData2),
	 	.i1(Extend32),
	 	.select(ALUSrc),
	 	//outputs
	 	.o(ALU_B)	
	 );

    //Connection of ShiftLeft2
	output wire [31:0] ShiftOut;
	 shift_left_2 shift_left_0(
	 	//inputs
	 	.i(Extend32),
	 	//outputs
	 	.o(ShiftOut)
	 );

    //Connection of ALUControl
	output wire [3:0] ALUCtl;
	 ALU_decoder alu_decode_0(
	 	//inputs
	 	.ALUOp(ALUOp),
	 	.funct(inst[5:0]),
         .opcode(inst[31:26]),
	 	//outputs
	 	.ALUControl(ALUCtl)
	 );
	
	//Connection of ALU
	output wire Zero;
	output wire [31:0] ALUOut;
	 ALU alu_0(
	 	//inputs
	 	.i_data_A(ReadData1),
	 	.i_data_B(ALU_B),
	 	.i_alu_control(ALUCtl),
	 	//outputs
	 	.o_result(ALUOut),
	 	.o_zero_flag(Zero)
	 );
	
	//Connection of Add_ALU
	output wire [31:0] Add_ALUOut;
	 Add_ALU add_alu_0(
	 	//inputs
	 	.PCout(PCout),
	 	.ShiftOut(ShiftOut),
	 	//outputs
	 	.Add_ALUOut(Add_ALUOut)	
	 );
	
	//Connection of AndGate
	output wire AndGateOut;
	 AndGate and_gate_0(
	 	//inputs
	 	.Branch(Branch),
	 	.Zero(Zero),
	 	//outputs
	 	.AndGateOut(AndGateOut)
	 );
	
    wire [31:0] jump_addr;
    //  jump_address jump_addr_0(
    //      //input
    //      .addr(inst[25:0]),
    //      .PCout(PCout),
    //      //output
    //      .jump_out(jump_addr)
    //  );

    wire [31 : 0] next_addr;
	// //Connection of Mux2
	//  mux #(32) mux_2(
	//  	//inputs
	//  	.i0(PCout),
	//  	.i1(Add_ALUOut),
	//  	.select(AndGateOut),
	//  	//outputs
	//  	.o(next_addr)
	//  );

    //  mux #(32) mux_3(
    //      //input
    //      .i0(jump_addr),
    //      .i1(next_addr),
    //      .select(Jump),
    //      //output
    //      .o(PCin)
    //  );

	JumpMux jump_mux_0(
		//input
		.addr(inst[25:0]),
		.PCout(PCout),
		.Add_ALUOut(Add_ALUOut),
		.AndGateOut(AndGateOut),
		.Jump(Jump),
		//output 
		.PCin(PCin)
	);

	//Connection of DataMemory
	output wire [31:0] ReadData;
	// data_memory  data_memory_0(
	// 	//inputs
	// 	.clk(clock),
	// 	.memwrite(MemWrite),
	// 	.memread(MemRead),
	// 	.address(ALUOut),
	// 	.write_data(ReadData2),
	// 	//outputs
	// 	.read_data(ReadData)
	// );
	
	// mux #(32) mux_4(
	// //inputs
	// .i0(ReadData),
	// .i1(ALUOut),
    // .select(MemtoReg),
	// //outputs
	// .o(WriteData_Reg)
	// );	
	
endmodule

