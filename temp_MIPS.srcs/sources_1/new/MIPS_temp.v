`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2025 10:19:45 AM
// Design Name: 
// Module Name: MIPS_temp
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module MIPS_temp(i_clk, i_arst, o_instruction);

input i_clk;    // clock signal
input i_arst;   // reset signal
output wire [31:0] o_instruction;

wire [31:0] o_pc_cur;
wire [31:0] o_pc_next;

/* Control Signals */
(* keep *) wire MemtoReg;
(* keep *) wire MemWrite;
(* keep *) wire MemRead;
(* keep *) wire Branch_beq;
(* keep *) wire [3:0] ALUControl;
(* keep *) wire ALUSrc;
(* keep *) wire RegDst;
(* keep *) wire RegWrite;
(* keep *) wire Shift;
(* keep *) wire Jump;
(* keep *) wire Zero;
(* keep *) wire PCSrc;
(* keep *) wire [1:0] ALUop;
assign PCSrc = (Branch_beq & Zero);

/* End of Control Signals */
(* keep *) reg [31:0] pc_next;                     // PC'
(* keep *) wire [31:0] pc_current;                // PC
(* keep *) wire [31:0] pc_plus4;                  // PC + 4
(* keep *) wire [31:0] pc_branch;                 // PCBranch = PC + 4 + (SignedImm * 4)
(* keep *) wire [31:0] pc_jump;                   // jump address

(* keep *) wire [31:0] ROM_A;                     // input Address for Instruction memory
(* keep *) wire [31:0] Instr;                     // read Instruction, from Instruction memory
assign ROM_A = pc_current;                        // PC --> A

assign o_instruction = Instr;
assign o_pc_cur = pc_current;
assign o_pc_next = pc_next;

(* keep *) INST_MEM rom_inst(
    .PC(ROM_A),             /* Instruction Memory, ROM */
    .inst(Instr)
);

(* keep *) wire [31:0] sign_imm;                  // sign extended Immediate (Instr [15:0])
(* keep *) wire [31:0] shifted_sign_imm;          // sign_imm << 2
assign shifted_sign_imm = {sign_imm[29:0], 2'b00};    // sign_imm << 2

assign pc_plus4 = pc_current + 32'd4;             // PC + 4
assign pc_branch = pc_plus4 + shifted_sign_imm;   // PCBranch = PC + 4 + (SignedImm * 4)

assign pc_jump = {pc_plus4[31:28], Instr[25:0], 2'b00}; // jump address

always @(*) begin
    casex(Jump)
        1'b0: begin
            casex(PCSrc)
                1'b0: begin
                    pc_next = pc_plus4;
                end
                1'b1: begin
                    pc_next = pc_branch;
                end
            endcase
        end
        1'b1: begin
            pc_next = pc_jump;
        end
    endcase
end
                            
(* keep *) PC pc_inst(
    .clock(i_clk),         /* Program Counter */
    .reset(i_arst),
    .PCin(pc_next),
    .PCout(pc_current)
);

(* keep *) sign_extend sign_ext_inst(
    .i(Instr[15:0]),       /* Sign Extender */
    .o(sign_imm)
);`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2025 10:19:45 AM
// Design Name: 
// Module Name: MIPS_temp
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module MIPS_temp(i_clk, i_arst, o_instruction);

input i_clk;    // clock signal
input i_arst;   // reset signal
output wire [31:0] o_instruction;

wire [31:0] o_pc_cur;
wire [31:0] o_pc_next;

/* Control Signals */
(* keep *) wire MemtoReg;
(* keep *) wire MemWrite;
(* keep *) wire MemRead;
(* keep *) wire Branch_beq;
(* keep *) wire [3:0] ALUControl;
(* keep *) wire ALUSrc;
(* keep *) wire RegDst;
(* keep *) wire RegWrite;
(* keep *) wire Shift;
(* keep *) wire Jump;
(* keep *) wire Zero;
(* keep *) wire PCSrc;
(* keep *) wire [1:0] ALUop;
assign PCSrc = (Branch_beq & Zero);

/* End of Control Signals */
(* keep *) reg [31:0] pc_next;                     // PC'
(* keep *) wire [31:0] pc_current;                // PC
(* keep *) wire [31:0] pc_plus4;                  // PC + 4
(* keep *) wire [31:0] pc_branch;                 // PCBranch = PC + 4 + (SignedImm * 4)
(* keep *) wire [31:0] pc_jump;                   // jump address

(* keep *) wire [31:0] ROM_A;                     // input Address for Instruction memory
(* keep *) wire [31:0] Instr;                     // read Instruction, from Instruction memory
assign ROM_A = pc_current;                        // PC --> A

assign o_instruction = Instr;
assign o_pc_cur = pc_current;
assign o_pc_next = pc_next;

(* keep *) INST_MEM rom_inst(
    .PC(ROM_A),             /* Instruction Memory, ROM */
    .inst(Instr)
);

(* keep *) wire [31:0] sign_imm;                  // sign extended Immediate (Instr [15:0])
(* keep *) wire [31:0] shifted_sign_imm;          // sign_imm << 2
assign shifted_sign_imm = {sign_imm[29:0], 2'b00};    // sign_imm << 2

assign pc_plus4 = pc_current + 32'd4;             // PC + 4
assign pc_branch = pc_plus4 + shifted_sign_imm;   // PCBranch = PC + 4 + (SignedImm * 4)

assign pc_jump = {pc_plus4[31:28], Instr[25:0], 2'b00}; // jump address

always @(*) begin
    casex(Jump)
        1'b0: begin
            casex(PCSrc)
                1'b0: begin
                    pc_next = pc_plus4;
                end
                1'b1: begin
                    pc_next = pc_branch;
                end
            endcase
        end
        1'b1: begin
            pc_next = pc_jump;
        end
    endcase
end
                            
(* keep *) PC pc_inst(
    .clock(i_clk),         /* Program Counter */
    .reset(i_arst),
    .PCin(pc_next),
    .PCout(pc_current)
);

(* keep *) sign_extend sign_ext_inst(
    .i(Instr[15:0]),       /* Sign Extender */
    .o(sign_imm)
);
(* keep *) Controller main_control_inst(
    .opcode(Instr[31:26]), /* Main Control */
    .RegDst(RegDst),
    .ALUSrc(ALUSrc),
    .MemRead(MemRead),
    .MemtoReg(MemtoReg),
    .MemWrite(MemWrite),
    .Branch(Branch_beq),
    .RegWrite(RegWrite),
    .Jump(Jump),
    .ALUOp(ALUop)
);

(* keep *) ALU_decoder alu_control_inst(
    .ALUOp(ALUop),    
    .funct(Instr[5:0]),
    .opcode(Instr[31:26]),
    .ALUControl(ALUControl)
);

(* keep *) wire [4:0] REGF_A1;    
(* keep *) wire [4:0] REGF_A2;
(* keep *) reg [4:0] REGF_A3;
(* keep *) wire [31:0] REGF_WD3;
(* keep *) wire [31:0] REGF_RD1;
(* keep *) wire [31:0] REGF_RD2;

(* keep *) reg [31:0] result;      // result: controls by MemtoReg: if = [0] -> result = alu_result, if = [1] -> result = RAM_RD

assign REGF_A1 = Instr[25:21];    // rs
assign REGF_A2 = Instr[20:16];    // rt 
assign REGF_WD3 = result;

always @(*) begin
    casex(RegDst)
        1'b0: begin
            REGF_A3 = Instr[20:16]; // rt 
        end
        1'b1: begin
            REGF_A3 = Instr[15:11]; // rd
        end
    endcase
end

(* keep *) registers reg_file_inst(
    .clk(i_clk),         /* Register File */
    .regwrite(RegWrite),
    .read_reg1(REGF_A1),
    .read_reg2(REGF_A2),
    .write_reg(REGF_A3),
    .write_data(REGF_WD3),
    .read_data1(REGF_RD1),
    .read_data2(REGF_RD2)
);

(* keep *) reg [31:0] srcA;
(* keep *) reg [31:0] srcB;
(* keep *) wire [31:0] alu_result;

always @(*) begin    
    srcA = REGF_RD1;
end

always @(*) begin
    casex(ALUSrc)
        1'b0: begin
            srcB = REGF_RD2;
        end
        1'b1: begin
            srcB = sign_imm;
        end
    endcase
end

(* keep *) ALU alu_inst(
    .i_data_A(srcA),                /* ALU */
    .i_data_B(srcB),
    .i_alu_control(ALUControl),
    .o_zero_flag(Zero),
    .o_result(alu_result)
);

(* keep *) wire [31:0] RAM_A;
(* keep *) wire [31:0] RAM_WD;
(* keep *) wire [31:0] RAM_RD;

assign RAM_A = alu_result;
assign RAM_WD = REGF_RD2;

(* keep *) data_memory data_memory_inst(
    .clk(i_clk),        
    .memwrite(MemWrite),
    .address(RAM_A),
    .write_data(RAM_WD),
    .read_data(RAM_RD)
);

always @(*) begin
    casex(MemtoReg)
        1'b0: begin
            result = alu_result;
        end
        1'b1: begin
            result = RAM_RD;
        end
    endcase
end
endmodule(* keep *) Controller main_control_inst(
    .opcode(Instr[31:26]), /* Main Control */
    .RegDst(RegDst),
    .ALUSrc(ALUSrc),
    .MemRead(MemRead),
    .MemtoReg(MemtoReg),
    .MemWrite(MemWrite),
    .Branch(Branch_beq),
    .RegWrite(RegWrite),
    .Jump(Jump),
    .ALUOp(ALUop)
);

(* keep *) ALU_decoder alu_control_inst(
    .ALUOp(ALUop),    
    .funct(Instr[5:0]),
    .opcode(Instr[31:26]),
    .ALUControl(ALUControl)
);

(* keep *) wire [4:0] REGF_A1;    
(* keep *) wire [4:0] REGF_A2;
(* keep *) reg [4:0] REGF_A3;
(* keep *) wire [31:0] REGF_WD3;
(* keep *) wire [31:0] REGF_RD1;
(* keep *) wire [31:0] REGF_RD2;

(* keep *) reg [31:0] result;      // result: controls by MemtoReg: if = [0] -> result = alu_result, if = [1] -> result = RAM_RD

assign REGF_A1 = Instr[25:21];    // rs
assign REGF_A2 = Instr[20:16];    // rt 
assign REGF_WD3 = result;

always @(*) begin
    casex(RegDst)
        1'b0: begin
            REGF_A3 = Instr[20:16]; // rt 
        end
        1'b1: begin
            REGF_A3 = Instr[15:11]; // rd
        end
    endcase
end

(* keep *) registers reg_file_inst(
    .clk(i_clk),         /* Register File */
    .regwrite(RegWrite),
    .read_reg1(REGF_A1),
    .read_reg2(REGF_A2),
    .write_reg(REGF_A3),
    .write_data(REGF_WD3),
    .read_data1(REGF_RD1),
    .read_data2(REGF_RD2)
);

(* keep *) reg [31:0] srcA;
(* keep *) reg [31:0] srcB;
(* keep *) wire [31:0] alu_result;

always @(*) begin    
    srcA = REGF_RD1;
end

always @(*) begin
    casex(ALUSrc)
        1'b0: begin
            srcB = REGF_RD2;
        end
        1'b1: begin
            srcB = sign_imm;
        end
    endcase
end

(* keep *) ALU alu_inst(
    .i_data_A(srcA),                /* ALU */
    .i_data_B(srcB),
    .i_alu_control(ALUControl),
    .o_zero_flag(Zero),
    .o_result(alu_result)
);

(* keep *) wire [31:0] RAM_A;
(* keep *) wire [31:0] RAM_WD;
(* keep *) wire [31:0] RAM_RD;

assign RAM_A = alu_result;
assign RAM_WD = REGF_RD2;

(* keep *) data_memory data_memory_inst(
    .clk(i_clk),        
    .memwrite(MemWrite),
    .address(RAM_A),
    .write_data(RAM_WD),
    .read_data(RAM_RD)
);

always @(*) begin
    casex(MemtoReg)
        1'b0: begin
            result = alu_result;
        end
        1'b1: begin
            result = RAM_RD;
        end
    endcase
end
endmodule