// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Jan  4 20:33:34 2025
// Host        : LAPTOP-50HAP4MO running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/ADMIN/OneDrive -
//               hcmut.edu.vn/University/Junior/Logic design
//               project/single_cycle_MIPS/temp_MIPS.sim/sim_1/synth/timing/xsim/testbench_time_synth.v}
// Design      : MIPS
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM32M_UNIQ_BASE_
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD32
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD33
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD34
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD35
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD36
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD37
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD38
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD39
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD40
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD41
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD42
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM64X1S_UNIQ_BASE_
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD1
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD10
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD11
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD12
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD13
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD14
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD15
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD16
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD17
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD18
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD19
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD2
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD20
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD21
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD22
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD23
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD24
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD25
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD26
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD27
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD28
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD29
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD3
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD30
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD31
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD4
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD5
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD6
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD7
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD8
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module RAM64X1S_HD9
   (O,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    D,
    WCLK,
    WE);
  output O;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input D;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire A5;
  wire D;
  wire O;
  wire WCLK;
  wire WE;
  wire NLW_SP_WADR6_UNCONNECTED;
  wire NLW_SP_WADR7_UNCONNECTED;

  RAMS64E #(
    .INIT(64'h0000000000000000),
    .IS_CLK_INVERTED(1'b0),
    .RAM_ADDRESS_MASK(2'b11),
    .RAM_ADDRESS_SPACE(2'b11)) 
    SP
       (.ADR0(A0),
        .ADR1(A1),
        .ADR2(A2),
        .ADR3(A3),
        .ADR4(A4),
        .ADR5(A5),
        .CLK(WCLK),
        .I(D),
        .O(O),
        .WADR6(NLW_SP_WADR6_UNCONNECTED),
        .WADR7(NLW_SP_WADR7_UNCONNECTED),
        .WE(WE));
endmodule

module ALU
   (in0,
    alu_result,
    out,
    i_clk,
    ALUop_inferred_i_1,
    ALUop_inferred_i_1_0,
    ALUop_inferred_i_1_1,
    ALUop_inferred_i_2,
    ALUop_inferred_i_1_2,
    ALUop_inferred_i_1_3,
    i_clk_0,
    i_clk_1,
    i_clk_2,
    i_clk_3,
    i_clk_4,
    i_clk_5,
    i_clk_6,
    i_clk_7);
  output in0;
  output [31:0]alu_result;
  input [31:0]out;
  input [31:0]i_clk;
  input ALUop_inferred_i_1;
  input ALUop_inferred_i_1_0;
  input ALUop_inferred_i_1_1;
  input ALUop_inferred_i_2;
  input ALUop_inferred_i_1_2;
  input ALUop_inferred_i_1_3;
  input i_clk_0;
  input i_clk_1;
  input i_clk_2;
  input i_clk_3;
  input i_clk_4;
  input i_clk_5;
  input i_clk_6;
  input i_clk_7;

  wire ALUop_inferred_i_1;
  wire ALUop_inferred_i_1_0;
  wire ALUop_inferred_i_1_1;
  wire ALUop_inferred_i_1_2;
  wire ALUop_inferred_i_1_3;
  wire ALUop_inferred_i_2;
  wire Zero_inferred_i_10_n_0;
  wire Zero_inferred_i_11_n_0;
  wire Zero_inferred_i_2_n_0;
  wire Zero_inferred_i_3_n_0;
  wire Zero_inferred_i_4_n_0;
  wire Zero_inferred_i_5_n_0;
  wire Zero_inferred_i_6_n_0;
  wire Zero_inferred_i_7_n_0;
  wire Zero_inferred_i_8_n_0;
  wire Zero_inferred_i_9_n_0;
  wire [31:0]alu_result;
  wire alu_result_inferred_i_33_n_0;
  wire alu_result_inferred_i_36_n_0;
  wire alu_result_inferred_i_37_n_0;
  wire alu_result_inferred_i_38_n_0;
  wire alu_result_inferred_i_39_n_0;
  wire alu_result_inferred_i_40_n_0;
  wire alu_result_inferred_i_41_n_0;
  wire alu_result_inferred_i_42_n_0;
  wire alu_result_inferred_i_43_n_0;
  wire alu_result_inferred_i_44_n_0;
  wire alu_result_inferred_i_45_n_0;
  wire alu_result_inferred_i_46_n_0;
  wire alu_result_inferred_i_47_n_0;
  wire alu_result_inferred_i_48_n_0;
  wire alu_result_inferred_i_49_n_0;
  wire alu_result_inferred_i_50_n_0;
  wire alu_result_inferred_i_51_n_0;
  wire alu_result_inferred_i_52_n_0;
  wire alu_result_inferred_i_53_n_0;
  wire alu_result_inferred_i_54_n_0;
  wire alu_result_inferred_i_55_n_0;
  wire alu_result_inferred_i_56_n_0;
  wire alu_result_inferred_i_57_n_0;
  wire alu_result_inferred_i_58_n_0;
  wire alu_result_inferred_i_59_n_0;
  wire alu_result_inferred_i_60_n_0;
  wire alu_result_inferred_i_61_n_0;
  wire alu_result_inferred_i_62_n_0;
  wire alu_result_inferred_i_63_n_0;
  wire alu_result_inferred_i_64_n_0;
  wire alu_result_inferred_i_65_n_0;
  wire alu_result_inferred_i_66_n_0;
  wire [31:0]data2;
  wire [31:0]data3;
  wire data5;
  wire [31:0]i_clk;
  wire i_clk_0;
  wire i_clk_1;
  wire i_clk_2;
  wire i_clk_3;
  wire i_clk_4;
  wire i_clk_5;
  wire i_clk_6;
  wire i_clk_7;
  wire in0;
  wire o_result0__93_carry__0_i_1_n_0;
  wire o_result0__93_carry__0_i_2_n_0;
  wire o_result0__93_carry__0_i_3_n_0;
  wire o_result0__93_carry__0_i_4_n_0;
  wire o_result0__93_carry__0_n_0;
  wire o_result0__93_carry__0_n_1;
  wire o_result0__93_carry__0_n_2;
  wire o_result0__93_carry__0_n_3;
  wire o_result0__93_carry__1_i_1_n_0;
  wire o_result0__93_carry__1_i_2_n_0;
  wire o_result0__93_carry__1_i_3_n_0;
  wire o_result0__93_carry__1_i_4_n_0;
  wire o_result0__93_carry__1_n_0;
  wire o_result0__93_carry__1_n_1;
  wire o_result0__93_carry__1_n_2;
  wire o_result0__93_carry__1_n_3;
  wire o_result0__93_carry__2_i_1_n_0;
  wire o_result0__93_carry__2_i_2_n_0;
  wire o_result0__93_carry__2_i_3_n_0;
  wire o_result0__93_carry__2_i_4_n_0;
  wire o_result0__93_carry__2_n_0;
  wire o_result0__93_carry__2_n_1;
  wire o_result0__93_carry__2_n_2;
  wire o_result0__93_carry__2_n_3;
  wire o_result0__93_carry__3_i_1_n_0;
  wire o_result0__93_carry__3_i_2_n_0;
  wire o_result0__93_carry__3_i_3_n_0;
  wire o_result0__93_carry__3_i_4_n_0;
  wire o_result0__93_carry__3_n_0;
  wire o_result0__93_carry__3_n_1;
  wire o_result0__93_carry__3_n_2;
  wire o_result0__93_carry__3_n_3;
  wire o_result0__93_carry__4_i_1_n_0;
  wire o_result0__93_carry__4_i_2_n_0;
  wire o_result0__93_carry__4_i_3_n_0;
  wire o_result0__93_carry__4_i_4_n_0;
  wire o_result0__93_carry__4_n_0;
  wire o_result0__93_carry__4_n_1;
  wire o_result0__93_carry__4_n_2;
  wire o_result0__93_carry__4_n_3;
  wire o_result0__93_carry__5_i_1_n_0;
  wire o_result0__93_carry__5_i_2_n_0;
  wire o_result0__93_carry__5_i_3_n_0;
  wire o_result0__93_carry__5_i_4_n_0;
  wire o_result0__93_carry__5_n_0;
  wire o_result0__93_carry__5_n_1;
  wire o_result0__93_carry__5_n_2;
  wire o_result0__93_carry__5_n_3;
  wire o_result0__93_carry__6_i_1_n_0;
  wire o_result0__93_carry__6_i_2_n_0;
  wire o_result0__93_carry__6_i_3_n_0;
  wire o_result0__93_carry__6_i_4_n_0;
  wire o_result0__93_carry__6_n_1;
  wire o_result0__93_carry__6_n_2;
  wire o_result0__93_carry__6_n_3;
  wire o_result0__93_carry_i_1_n_0;
  wire o_result0__93_carry_i_2_n_0;
  wire o_result0__93_carry_i_3_n_0;
  wire o_result0__93_carry_i_4_n_0;
  wire o_result0__93_carry_n_0;
  wire o_result0__93_carry_n_1;
  wire o_result0__93_carry_n_2;
  wire o_result0__93_carry_n_3;
  wire o_result0_carry__0_i_1_n_0;
  wire o_result0_carry__0_i_2_n_0;
  wire o_result0_carry__0_i_3_n_0;
  wire o_result0_carry__0_i_4_n_0;
  wire o_result0_carry__0_n_0;
  wire o_result0_carry__0_n_1;
  wire o_result0_carry__0_n_2;
  wire o_result0_carry__0_n_3;
  wire o_result0_carry__1_i_1_n_0;
  wire o_result0_carry__1_i_2_n_0;
  wire o_result0_carry__1_i_3_n_0;
  wire o_result0_carry__1_i_4_n_0;
  wire o_result0_carry__1_n_0;
  wire o_result0_carry__1_n_1;
  wire o_result0_carry__1_n_2;
  wire o_result0_carry__1_n_3;
  wire o_result0_carry__2_i_1_n_0;
  wire o_result0_carry__2_i_2_n_0;
  wire o_result0_carry__2_i_3_n_0;
  wire o_result0_carry__2_i_4_n_0;
  wire o_result0_carry__2_n_0;
  wire o_result0_carry__2_n_1;
  wire o_result0_carry__2_n_2;
  wire o_result0_carry__2_n_3;
  wire o_result0_carry__3_i_1_n_0;
  wire o_result0_carry__3_i_2_n_0;
  wire o_result0_carry__3_i_3_n_0;
  wire o_result0_carry__3_i_4_n_0;
  wire o_result0_carry__3_n_0;
  wire o_result0_carry__3_n_1;
  wire o_result0_carry__3_n_2;
  wire o_result0_carry__3_n_3;
  wire o_result0_carry__4_i_1_n_0;
  wire o_result0_carry__4_i_2_n_0;
  wire o_result0_carry__4_i_3_n_0;
  wire o_result0_carry__4_i_4_n_0;
  wire o_result0_carry__4_n_0;
  wire o_result0_carry__4_n_1;
  wire o_result0_carry__4_n_2;
  wire o_result0_carry__4_n_3;
  wire o_result0_carry__5_i_1_n_0;
  wire o_result0_carry__5_i_2_n_0;
  wire o_result0_carry__5_i_3_n_0;
  wire o_result0_carry__5_i_4_n_0;
  wire o_result0_carry__5_n_0;
  wire o_result0_carry__5_n_1;
  wire o_result0_carry__5_n_2;
  wire o_result0_carry__5_n_3;
  wire o_result0_carry__6_i_1_n_0;
  wire o_result0_carry__6_i_2_n_0;
  wire o_result0_carry__6_i_3_n_0;
  wire o_result0_carry__6_i_4_n_0;
  wire o_result0_carry__6_n_1;
  wire o_result0_carry__6_n_2;
  wire o_result0_carry__6_n_3;
  wire o_result0_carry_i_1_n_0;
  wire o_result0_carry_i_2_n_0;
  wire o_result0_carry_i_3_n_0;
  wire o_result0_carry_i_4_n_0;
  wire o_result0_carry_n_0;
  wire o_result0_carry_n_1;
  wire o_result0_carry_n_2;
  wire o_result0_carry_n_3;
  wire o_result2_carry__0_i_1_n_0;
  wire o_result2_carry__0_i_2_n_0;
  wire o_result2_carry__0_i_3_n_0;
  wire o_result2_carry__0_i_4_n_0;
  wire o_result2_carry__0_i_5_n_0;
  wire o_result2_carry__0_i_6_n_0;
  wire o_result2_carry__0_i_7_n_0;
  wire o_result2_carry__0_i_8_n_0;
  wire o_result2_carry__0_n_0;
  wire o_result2_carry__0_n_1;
  wire o_result2_carry__0_n_2;
  wire o_result2_carry__0_n_3;
  wire o_result2_carry__1_i_1_n_0;
  wire o_result2_carry__1_i_2_n_0;
  wire o_result2_carry__1_i_3_n_0;
  wire o_result2_carry__1_i_4_n_0;
  wire o_result2_carry__1_i_5_n_0;
  wire o_result2_carry__1_i_6_n_0;
  wire o_result2_carry__1_i_7_n_0;
  wire o_result2_carry__1_i_8_n_0;
  wire o_result2_carry__1_n_0;
  wire o_result2_carry__1_n_1;
  wire o_result2_carry__1_n_2;
  wire o_result2_carry__1_n_3;
  wire o_result2_carry__2_i_1_n_0;
  wire o_result2_carry__2_i_2_n_0;
  wire o_result2_carry__2_i_3_n_0;
  wire o_result2_carry__2_i_4_n_0;
  wire o_result2_carry__2_i_5_n_0;
  wire o_result2_carry__2_i_6_n_0;
  wire o_result2_carry__2_i_7_n_0;
  wire o_result2_carry__2_i_8_n_0;
  wire o_result2_carry__2_n_1;
  wire o_result2_carry__2_n_2;
  wire o_result2_carry__2_n_3;
  wire o_result2_carry_i_1_n_0;
  wire o_result2_carry_i_2_n_0;
  wire o_result2_carry_i_3_n_0;
  wire o_result2_carry_i_4_n_0;
  wire o_result2_carry_i_5_n_0;
  wire o_result2_carry_i_6_n_0;
  wire o_result2_carry_i_7_n_0;
  wire o_result2_carry_i_8_n_0;
  wire o_result2_carry_n_0;
  wire o_result2_carry_n_1;
  wire o_result2_carry_n_2;
  wire o_result2_carry_n_3;
  wire [31:0]out;
  wire [3:3]NLW_o_result0__93_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_o_result0_carry__6_CO_UNCONNECTED;
  wire [3:0]NLW_o_result2_carry_O_UNCONNECTED;
  wire [3:0]NLW_o_result2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_o_result2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_o_result2_carry__2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0000000000008000)) 
    Zero_inferred_i_1
       (.I0(Zero_inferred_i_2_n_0),
        .I1(Zero_inferred_i_3_n_0),
        .I2(Zero_inferred_i_4_n_0),
        .I3(Zero_inferred_i_5_n_0),
        .I4(Zero_inferred_i_6_n_0),
        .I5(Zero_inferred_i_7_n_0),
        .O(in0));
  LUT6 #(
    .INIT(64'hFFFF50F0DCFC50F0)) 
    Zero_inferred_i_10
       (.I0(i_clk_4),
        .I1(alu_result_inferred_i_58_n_0),
        .I2(ALUop_inferred_i_1_0),
        .I3(i_clk_5),
        .I4(ALUop_inferred_i_1),
        .I5(alu_result_inferred_i_57_n_0),
        .O(Zero_inferred_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFFF50F0DCFC50F0)) 
    Zero_inferred_i_11
       (.I0(i_clk_6),
        .I1(alu_result_inferred_i_56_n_0),
        .I2(ALUop_inferred_i_1_0),
        .I3(i_clk_7),
        .I4(ALUop_inferred_i_1),
        .I5(alu_result_inferred_i_55_n_0),
        .O(Zero_inferred_i_11_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    Zero_inferred_i_2
       (.I0(alu_result[31]),
        .I1(alu_result[30]),
        .I2(alu_result[29]),
        .I3(alu_result[28]),
        .O(Zero_inferred_i_2_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    Zero_inferred_i_3
       (.I0(alu_result[27]),
        .I1(alu_result[26]),
        .I2(alu_result[25]),
        .I3(alu_result[24]),
        .O(Zero_inferred_i_3_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    Zero_inferred_i_4
       (.I0(alu_result[17]),
        .I1(alu_result[16]),
        .I2(alu_result[19]),
        .I3(alu_result[18]),
        .O(Zero_inferred_i_4_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    Zero_inferred_i_5
       (.I0(alu_result[23]),
        .I1(alu_result[22]),
        .I2(alu_result[21]),
        .I3(alu_result[20]),
        .O(Zero_inferred_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    Zero_inferred_i_6
       (.I0(Zero_inferred_i_8_n_0),
        .I1(alu_result[6]),
        .I2(alu_result[7]),
        .I3(alu_result[0]),
        .I4(alu_result[1]),
        .I5(Zero_inferred_i_9_n_0),
        .O(Zero_inferred_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    Zero_inferred_i_7
       (.I0(alu_result[12]),
        .I1(alu_result[13]),
        .I2(alu_result[14]),
        .I3(alu_result[15]),
        .I4(Zero_inferred_i_10_n_0),
        .I5(Zero_inferred_i_11_n_0),
        .O(Zero_inferred_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFF50F0DCFC50F0)) 
    Zero_inferred_i_8
       (.I0(i_clk_2),
        .I1(alu_result_inferred_i_62_n_0),
        .I2(ALUop_inferred_i_1_0),
        .I3(i_clk_3),
        .I4(ALUop_inferred_i_1),
        .I5(alu_result_inferred_i_61_n_0),
        .O(Zero_inferred_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFF50F0DCFC50F0)) 
    Zero_inferred_i_9
       (.I0(i_clk_0),
        .I1(alu_result_inferred_i_64_n_0),
        .I2(ALUop_inferred_i_1_0),
        .I3(i_clk_1),
        .I4(ALUop_inferred_i_1),
        .I5(alu_result_inferred_i_63_n_0),
        .O(Zero_inferred_i_9_n_0));
  LUT5 #(
    .INIT(32'h888F8888)) 
    alu_result_inferred_i_1
       (.I0(alu_result_inferred_i_33_n_0),
        .I1(ALUop_inferred_i_1),
        .I2(out[31]),
        .I3(i_clk[31]),
        .I4(ALUop_inferred_i_1_0),
        .O(alu_result[31]));
  LUT5 #(
    .INIT(32'h888F8888)) 
    alu_result_inferred_i_10
       (.I0(alu_result_inferred_i_44_n_0),
        .I1(ALUop_inferred_i_1),
        .I2(out[22]),
        .I3(i_clk[22]),
        .I4(ALUop_inferred_i_1_0),
        .O(alu_result[22]));
  LUT5 #(
    .INIT(32'h888F8888)) 
    alu_result_inferred_i_11
       (.I0(alu_result_inferred_i_45_n_0),
        .I1(ALUop_inferred_i_1),
        .I2(out[21]),
        .I3(i_clk[21]),
        .I4(ALUop_inferred_i_1_0),
        .O(alu_result[21]));
  LUT5 #(
    .INIT(32'h888F8888)) 
    alu_result_inferred_i_12
       (.I0(alu_result_inferred_i_46_n_0),
        .I1(ALUop_inferred_i_1),
        .I2(out[20]),
        .I3(i_clk[20]),
        .I4(ALUop_inferred_i_1_0),
        .O(alu_result[20]));
  LUT5 #(
    .INIT(32'h888F8888)) 
    alu_result_inferred_i_13
       (.I0(alu_result_inferred_i_47_n_0),
        .I1(ALUop_inferred_i_1),
        .I2(out[19]),
        .I3(i_clk[19]),
        .I4(ALUop_inferred_i_1_0),
        .O(alu_result[19]));
  LUT5 #(
    .INIT(32'h888F8888)) 
    alu_result_inferred_i_14
       (.I0(alu_result_inferred_i_48_n_0),
        .I1(ALUop_inferred_i_1),
        .I2(out[18]),
        .I3(i_clk[18]),
        .I4(ALUop_inferred_i_1_0),
        .O(alu_result[18]));
  LUT5 #(
    .INIT(32'h888F8888)) 
    alu_result_inferred_i_15
       (.I0(alu_result_inferred_i_49_n_0),
        .I1(ALUop_inferred_i_1),
        .I2(out[17]),
        .I3(i_clk[17]),
        .I4(ALUop_inferred_i_1_0),
        .O(alu_result[17]));
  LUT5 #(
    .INIT(32'h888F8888)) 
    alu_result_inferred_i_16
       (.I0(alu_result_inferred_i_50_n_0),
        .I1(ALUop_inferred_i_1),
        .I2(out[16]),
        .I3(i_clk[16]),
        .I4(ALUop_inferred_i_1_0),
        .O(alu_result[16]));
  LUT5 #(
    .INIT(32'h888F8888)) 
    alu_result_inferred_i_17
       (.I0(alu_result_inferred_i_51_n_0),
        .I1(ALUop_inferred_i_1),
        .I2(out[15]),
        .I3(i_clk[15]),
        .I4(ALUop_inferred_i_1_0),
        .O(alu_result[15]));
  LUT5 #(
    .INIT(32'h888F8888)) 
    alu_result_inferred_i_18
       (.I0(alu_result_inferred_i_52_n_0),
        .I1(ALUop_inferred_i_1),
        .I2(out[14]),
        .I3(i_clk[14]),
        .I4(ALUop_inferred_i_1_0),
        .O(alu_result[14]));
  LUT5 #(
    .INIT(32'h888F8888)) 
    alu_result_inferred_i_19
       (.I0(alu_result_inferred_i_53_n_0),
        .I1(ALUop_inferred_i_1),
        .I2(out[13]),
        .I3(i_clk[13]),
        .I4(ALUop_inferred_i_1_0),
        .O(alu_result[13]));
  LUT5 #(
    .INIT(32'h888F8888)) 
    alu_result_inferred_i_2
       (.I0(alu_result_inferred_i_36_n_0),
        .I1(ALUop_inferred_i_1),
        .I2(out[30]),
        .I3(i_clk[30]),
        .I4(ALUop_inferred_i_1_0),
        .O(alu_result[30]));
  LUT5 #(
    .INIT(32'h888F8888)) 
    alu_result_inferred_i_20
       (.I0(alu_result_inferred_i_54_n_0),
        .I1(ALUop_inferred_i_1),
        .I2(out[12]),
        .I3(i_clk[12]),
        .I4(ALUop_inferred_i_1_0),
        .O(alu_result[12]));
  LUT5 #(
    .INIT(32'h888F8888)) 
    alu_result_inferred_i_21
       (.I0(alu_result_inferred_i_55_n_0),
        .I1(ALUop_inferred_i_1),
        .I2(out[11]),
        .I3(i_clk[11]),
        .I4(ALUop_inferred_i_1_0),
        .O(alu_result[11]));
  LUT5 #(
    .INIT(32'h888F8888)) 
    alu_result_inferred_i_22
       (.I0(alu_result_inferred_i_56_n_0),
        .I1(ALUop_inferred_i_1),
        .I2(out[10]),
        .I3(i_clk[10]),
        .I4(ALUop_inferred_i_1_0),
        .O(alu_result[10]));
  LUT5 #(
    .INIT(32'h888F8888)) 
    alu_result_inferred_i_23
       (.I0(alu_result_inferred_i_57_n_0),
        .I1(ALUop_inferred_i_1),
        .I2(out[9]),
        .I3(i_clk[9]),
        .I4(ALUop_inferred_i_1_0),
        .O(alu_result[9]));
  LUT5 #(
    .INIT(32'h888F8888)) 
    alu_result_inferred_i_24
       (.I0(alu_result_inferred_i_58_n_0),
        .I1(ALUop_inferred_i_1),
        .I2(out[8]),
        .I3(i_clk[8]),
        .I4(ALUop_inferred_i_1_0),
        .O(alu_result[8]));
  LUT5 #(
    .INIT(32'h888F8888)) 
    alu_result_inferred_i_25
       (.I0(alu_result_inferred_i_59_n_0),
        .I1(ALUop_inferred_i_1),
        .I2(out[7]),
        .I3(i_clk[7]),
        .I4(ALUop_inferred_i_1_0),
        .O(alu_result[7]));
  LUT5 #(
    .INIT(32'h888F8888)) 
    alu_result_inferred_i_26
       (.I0(alu_result_inferred_i_60_n_0),
        .I1(ALUop_inferred_i_1),
        .I2(out[6]),
        .I3(i_clk[6]),
        .I4(ALUop_inferred_i_1_0),
        .O(alu_result[6]));
  LUT5 #(
    .INIT(32'h888F8888)) 
    alu_result_inferred_i_27
       (.I0(alu_result_inferred_i_61_n_0),
        .I1(ALUop_inferred_i_1),
        .I2(out[5]),
        .I3(i_clk[5]),
        .I4(ALUop_inferred_i_1_0),
        .O(alu_result[5]));
  LUT5 #(
    .INIT(32'h888F8888)) 
    alu_result_inferred_i_28
       (.I0(alu_result_inferred_i_62_n_0),
        .I1(ALUop_inferred_i_1),
        .I2(out[4]),
        .I3(i_clk[4]),
        .I4(ALUop_inferred_i_1_0),
        .O(alu_result[4]));
  LUT5 #(
    .INIT(32'h888F8888)) 
    alu_result_inferred_i_29
       (.I0(alu_result_inferred_i_63_n_0),
        .I1(ALUop_inferred_i_1),
        .I2(out[3]),
        .I3(i_clk[3]),
        .I4(ALUop_inferred_i_1_0),
        .O(alu_result[3]));
  LUT5 #(
    .INIT(32'h888F8888)) 
    alu_result_inferred_i_3
       (.I0(alu_result_inferred_i_37_n_0),
        .I1(ALUop_inferred_i_1),
        .I2(out[29]),
        .I3(i_clk[29]),
        .I4(ALUop_inferred_i_1_0),
        .O(alu_result[29]));
  LUT5 #(
    .INIT(32'h888F8888)) 
    alu_result_inferred_i_30
       (.I0(alu_result_inferred_i_64_n_0),
        .I1(ALUop_inferred_i_1),
        .I2(out[2]),
        .I3(i_clk[2]),
        .I4(ALUop_inferred_i_1_0),
        .O(alu_result[2]));
  LUT5 #(
    .INIT(32'h888F8888)) 
    alu_result_inferred_i_31
       (.I0(alu_result_inferred_i_65_n_0),
        .I1(ALUop_inferred_i_1),
        .I2(out[1]),
        .I3(i_clk[1]),
        .I4(ALUop_inferred_i_1_0),
        .O(alu_result[1]));
  LUT6 #(
    .INIT(64'hFF00F0F000001111)) 
    alu_result_inferred_i_32
       (.I0(i_clk[0]),
        .I1(out[0]),
        .I2(data5),
        .I3(alu_result_inferred_i_66_n_0),
        .I4(ALUop_inferred_i_1_2),
        .I5(ALUop_inferred_i_1_3),
        .O(alu_result[0]));
  LUT6 #(
    .INIT(64'hAAFFFCC0AA00FCC0)) 
    alu_result_inferred_i_33
       (.I0(data3[31]),
        .I1(i_clk[31]),
        .I2(out[31]),
        .I3(ALUop_inferred_i_1_1),
        .I4(ALUop_inferred_i_2),
        .I5(data2[31]),
        .O(alu_result_inferred_i_33_n_0));
  LUT6 #(
    .INIT(64'hAAFFFCC0AA00FCC0)) 
    alu_result_inferred_i_36
       (.I0(data3[30]),
        .I1(i_clk[30]),
        .I2(out[30]),
        .I3(ALUop_inferred_i_1_1),
        .I4(ALUop_inferred_i_2),
        .I5(data2[30]),
        .O(alu_result_inferred_i_36_n_0));
  LUT6 #(
    .INIT(64'hAAFFFCC0AA00FCC0)) 
    alu_result_inferred_i_37
       (.I0(data3[29]),
        .I1(i_clk[29]),
        .I2(out[29]),
        .I3(ALUop_inferred_i_1_1),
        .I4(ALUop_inferred_i_2),
        .I5(data2[29]),
        .O(alu_result_inferred_i_37_n_0));
  LUT6 #(
    .INIT(64'hAAFFFCC0AA00FCC0)) 
    alu_result_inferred_i_38
       (.I0(data3[28]),
        .I1(i_clk[28]),
        .I2(out[28]),
        .I3(ALUop_inferred_i_1_1),
        .I4(ALUop_inferred_i_2),
        .I5(data2[28]),
        .O(alu_result_inferred_i_38_n_0));
  LUT6 #(
    .INIT(64'hAAFFFCC0AA00FCC0)) 
    alu_result_inferred_i_39
       (.I0(data3[27]),
        .I1(i_clk[27]),
        .I2(out[27]),
        .I3(ALUop_inferred_i_1_1),
        .I4(ALUop_inferred_i_2),
        .I5(data2[27]),
        .O(alu_result_inferred_i_39_n_0));
  LUT5 #(
    .INIT(32'h888F8888)) 
    alu_result_inferred_i_4
       (.I0(alu_result_inferred_i_38_n_0),
        .I1(ALUop_inferred_i_1),
        .I2(out[28]),
        .I3(i_clk[28]),
        .I4(ALUop_inferred_i_1_0),
        .O(alu_result[28]));
  LUT6 #(
    .INIT(64'hAAFFFCC0AA00FCC0)) 
    alu_result_inferred_i_40
       (.I0(data3[26]),
        .I1(i_clk[26]),
        .I2(out[26]),
        .I3(ALUop_inferred_i_1_1),
        .I4(ALUop_inferred_i_2),
        .I5(data2[26]),
        .O(alu_result_inferred_i_40_n_0));
  LUT6 #(
    .INIT(64'hAAFFFCC0AA00FCC0)) 
    alu_result_inferred_i_41
       (.I0(data3[25]),
        .I1(i_clk[25]),
        .I2(out[25]),
        .I3(ALUop_inferred_i_1_1),
        .I4(ALUop_inferred_i_2),
        .I5(data2[25]),
        .O(alu_result_inferred_i_41_n_0));
  LUT6 #(
    .INIT(64'hAAFFFCC0AA00FCC0)) 
    alu_result_inferred_i_42
       (.I0(data3[24]),
        .I1(i_clk[24]),
        .I2(out[24]),
        .I3(ALUop_inferred_i_1_1),
        .I4(ALUop_inferred_i_2),
        .I5(data2[24]),
        .O(alu_result_inferred_i_42_n_0));
  LUT6 #(
    .INIT(64'hAAFFFCC0AA00FCC0)) 
    alu_result_inferred_i_43
       (.I0(data3[23]),
        .I1(i_clk[23]),
        .I2(out[23]),
        .I3(ALUop_inferred_i_1_1),
        .I4(ALUop_inferred_i_2),
        .I5(data2[23]),
        .O(alu_result_inferred_i_43_n_0));
  LUT6 #(
    .INIT(64'hAAFFFCC0AA00FCC0)) 
    alu_result_inferred_i_44
       (.I0(data3[22]),
        .I1(i_clk[22]),
        .I2(out[22]),
        .I3(ALUop_inferred_i_1_1),
        .I4(ALUop_inferred_i_2),
        .I5(data2[22]),
        .O(alu_result_inferred_i_44_n_0));
  LUT6 #(
    .INIT(64'hAAFFFCC0AA00FCC0)) 
    alu_result_inferred_i_45
       (.I0(data3[21]),
        .I1(i_clk[21]),
        .I2(out[21]),
        .I3(ALUop_inferred_i_1_1),
        .I4(ALUop_inferred_i_2),
        .I5(data2[21]),
        .O(alu_result_inferred_i_45_n_0));
  LUT6 #(
    .INIT(64'hAAFFFCC0AA00FCC0)) 
    alu_result_inferred_i_46
       (.I0(data3[20]),
        .I1(i_clk[20]),
        .I2(out[20]),
        .I3(ALUop_inferred_i_1_1),
        .I4(ALUop_inferred_i_2),
        .I5(data2[20]),
        .O(alu_result_inferred_i_46_n_0));
  LUT6 #(
    .INIT(64'hAAFFFCC0AA00FCC0)) 
    alu_result_inferred_i_47
       (.I0(data3[19]),
        .I1(i_clk[19]),
        .I2(out[19]),
        .I3(ALUop_inferred_i_1_1),
        .I4(ALUop_inferred_i_2),
        .I5(data2[19]),
        .O(alu_result_inferred_i_47_n_0));
  LUT6 #(
    .INIT(64'hAAFFFCC0AA00FCC0)) 
    alu_result_inferred_i_48
       (.I0(data3[18]),
        .I1(i_clk[18]),
        .I2(out[18]),
        .I3(ALUop_inferred_i_1_1),
        .I4(ALUop_inferred_i_2),
        .I5(data2[18]),
        .O(alu_result_inferred_i_48_n_0));
  LUT6 #(
    .INIT(64'hAAFFFCC0AA00FCC0)) 
    alu_result_inferred_i_49
       (.I0(data3[17]),
        .I1(i_clk[17]),
        .I2(out[17]),
        .I3(ALUop_inferred_i_1_1),
        .I4(ALUop_inferred_i_2),
        .I5(data2[17]),
        .O(alu_result_inferred_i_49_n_0));
  LUT5 #(
    .INIT(32'h888F8888)) 
    alu_result_inferred_i_5
       (.I0(alu_result_inferred_i_39_n_0),
        .I1(ALUop_inferred_i_1),
        .I2(out[27]),
        .I3(i_clk[27]),
        .I4(ALUop_inferred_i_1_0),
        .O(alu_result[27]));
  LUT6 #(
    .INIT(64'hAAFFFCC0AA00FCC0)) 
    alu_result_inferred_i_50
       (.I0(data3[16]),
        .I1(i_clk[16]),
        .I2(out[16]),
        .I3(ALUop_inferred_i_1_1),
        .I4(ALUop_inferred_i_2),
        .I5(data2[16]),
        .O(alu_result_inferred_i_50_n_0));
  LUT6 #(
    .INIT(64'hAAFFFCC0AA00FCC0)) 
    alu_result_inferred_i_51
       (.I0(data3[15]),
        .I1(i_clk[15]),
        .I2(out[15]),
        .I3(ALUop_inferred_i_1_1),
        .I4(ALUop_inferred_i_2),
        .I5(data2[15]),
        .O(alu_result_inferred_i_51_n_0));
  LUT6 #(
    .INIT(64'hAAFFFCC0AA00FCC0)) 
    alu_result_inferred_i_52
       (.I0(data3[14]),
        .I1(i_clk[14]),
        .I2(out[14]),
        .I3(ALUop_inferred_i_1_1),
        .I4(ALUop_inferred_i_2),
        .I5(data2[14]),
        .O(alu_result_inferred_i_52_n_0));
  LUT6 #(
    .INIT(64'hAAFFFCC0AA00FCC0)) 
    alu_result_inferred_i_53
       (.I0(data3[13]),
        .I1(i_clk[13]),
        .I2(out[13]),
        .I3(ALUop_inferred_i_1_1),
        .I4(ALUop_inferred_i_2),
        .I5(data2[13]),
        .O(alu_result_inferred_i_53_n_0));
  LUT6 #(
    .INIT(64'hAAFFFCC0AA00FCC0)) 
    alu_result_inferred_i_54
       (.I0(data3[12]),
        .I1(i_clk[12]),
        .I2(out[12]),
        .I3(ALUop_inferred_i_1_1),
        .I4(ALUop_inferred_i_2),
        .I5(data2[12]),
        .O(alu_result_inferred_i_54_n_0));
  LUT6 #(
    .INIT(64'hAAFFFCC0AA00FCC0)) 
    alu_result_inferred_i_55
       (.I0(data3[11]),
        .I1(i_clk[11]),
        .I2(out[11]),
        .I3(ALUop_inferred_i_1_1),
        .I4(ALUop_inferred_i_2),
        .I5(data2[11]),
        .O(alu_result_inferred_i_55_n_0));
  LUT6 #(
    .INIT(64'hAAFFFCC0AA00FCC0)) 
    alu_result_inferred_i_56
       (.I0(data3[10]),
        .I1(i_clk[10]),
        .I2(out[10]),
        .I3(ALUop_inferred_i_1_1),
        .I4(ALUop_inferred_i_2),
        .I5(data2[10]),
        .O(alu_result_inferred_i_56_n_0));
  LUT6 #(
    .INIT(64'hAAFFFCC0AA00FCC0)) 
    alu_result_inferred_i_57
       (.I0(data3[9]),
        .I1(i_clk[9]),
        .I2(out[9]),
        .I3(ALUop_inferred_i_1_1),
        .I4(ALUop_inferred_i_2),
        .I5(data2[9]),
        .O(alu_result_inferred_i_57_n_0));
  LUT6 #(
    .INIT(64'hAAFFFCC0AA00FCC0)) 
    alu_result_inferred_i_58
       (.I0(data3[8]),
        .I1(i_clk[8]),
        .I2(out[8]),
        .I3(ALUop_inferred_i_1_1),
        .I4(ALUop_inferred_i_2),
        .I5(data2[8]),
        .O(alu_result_inferred_i_58_n_0));
  LUT6 #(
    .INIT(64'hAAFFFCC0AA00FCC0)) 
    alu_result_inferred_i_59
       (.I0(data3[7]),
        .I1(i_clk[7]),
        .I2(out[7]),
        .I3(ALUop_inferred_i_1_1),
        .I4(ALUop_inferred_i_2),
        .I5(data2[7]),
        .O(alu_result_inferred_i_59_n_0));
  LUT5 #(
    .INIT(32'h888F8888)) 
    alu_result_inferred_i_6
       (.I0(alu_result_inferred_i_40_n_0),
        .I1(ALUop_inferred_i_1),
        .I2(out[26]),
        .I3(i_clk[26]),
        .I4(ALUop_inferred_i_1_0),
        .O(alu_result[26]));
  LUT6 #(
    .INIT(64'hAAFFFCC0AA00FCC0)) 
    alu_result_inferred_i_60
       (.I0(data3[6]),
        .I1(i_clk[6]),
        .I2(out[6]),
        .I3(ALUop_inferred_i_1_1),
        .I4(ALUop_inferred_i_2),
        .I5(data2[6]),
        .O(alu_result_inferred_i_60_n_0));
  LUT6 #(
    .INIT(64'hAAFFFCC0AA00FCC0)) 
    alu_result_inferred_i_61
       (.I0(data3[5]),
        .I1(i_clk[5]),
        .I2(out[5]),
        .I3(ALUop_inferred_i_1_1),
        .I4(ALUop_inferred_i_2),
        .I5(data2[5]),
        .O(alu_result_inferred_i_61_n_0));
  LUT6 #(
    .INIT(64'hAAFFFCC0AA00FCC0)) 
    alu_result_inferred_i_62
       (.I0(data3[4]),
        .I1(i_clk[4]),
        .I2(out[4]),
        .I3(ALUop_inferred_i_1_1),
        .I4(ALUop_inferred_i_2),
        .I5(data2[4]),
        .O(alu_result_inferred_i_62_n_0));
  LUT6 #(
    .INIT(64'hAAFFFCC0AA00FCC0)) 
    alu_result_inferred_i_63
       (.I0(data3[3]),
        .I1(i_clk[3]),
        .I2(out[3]),
        .I3(ALUop_inferred_i_1_1),
        .I4(ALUop_inferred_i_2),
        .I5(data2[3]),
        .O(alu_result_inferred_i_63_n_0));
  LUT6 #(
    .INIT(64'hAAFFFCC0AA00FCC0)) 
    alu_result_inferred_i_64
       (.I0(data3[2]),
        .I1(i_clk[2]),
        .I2(out[2]),
        .I3(ALUop_inferred_i_1_1),
        .I4(ALUop_inferred_i_2),
        .I5(data2[2]),
        .O(alu_result_inferred_i_64_n_0));
  LUT6 #(
    .INIT(64'hAAFFFCC0AA00FCC0)) 
    alu_result_inferred_i_65
       (.I0(data3[1]),
        .I1(i_clk[1]),
        .I2(out[1]),
        .I3(ALUop_inferred_i_1_1),
        .I4(ALUop_inferred_i_2),
        .I5(data2[1]),
        .O(alu_result_inferred_i_65_n_0));
  LUT6 #(
    .INIT(64'hAAFFFCC0AA00FCC0)) 
    alu_result_inferred_i_66
       (.I0(data3[0]),
        .I1(i_clk[0]),
        .I2(out[0]),
        .I3(ALUop_inferred_i_1_1),
        .I4(ALUop_inferred_i_2),
        .I5(data2[0]),
        .O(alu_result_inferred_i_66_n_0));
  LUT5 #(
    .INIT(32'h888F8888)) 
    alu_result_inferred_i_7
       (.I0(alu_result_inferred_i_41_n_0),
        .I1(ALUop_inferred_i_1),
        .I2(out[25]),
        .I3(i_clk[25]),
        .I4(ALUop_inferred_i_1_0),
        .O(alu_result[25]));
  LUT5 #(
    .INIT(32'h888F8888)) 
    alu_result_inferred_i_8
       (.I0(alu_result_inferred_i_42_n_0),
        .I1(ALUop_inferred_i_1),
        .I2(out[24]),
        .I3(i_clk[24]),
        .I4(ALUop_inferred_i_1_0),
        .O(alu_result[24]));
  LUT5 #(
    .INIT(32'h888F8888)) 
    alu_result_inferred_i_9
       (.I0(alu_result_inferred_i_43_n_0),
        .I1(ALUop_inferred_i_1),
        .I2(out[23]),
        .I3(i_clk[23]),
        .I4(ALUop_inferred_i_1_0),
        .O(alu_result[23]));
  CARRY4 o_result0__93_carry
       (.CI(1'b0),
        .CO({o_result0__93_carry_n_0,o_result0__93_carry_n_1,o_result0__93_carry_n_2,o_result0__93_carry_n_3}),
        .CYINIT(1'b1),
        .DI(out[3:0]),
        .O(data3[3:0]),
        .S({o_result0__93_carry_i_1_n_0,o_result0__93_carry_i_2_n_0,o_result0__93_carry_i_3_n_0,o_result0__93_carry_i_4_n_0}));
  CARRY4 o_result0__93_carry__0
       (.CI(o_result0__93_carry_n_0),
        .CO({o_result0__93_carry__0_n_0,o_result0__93_carry__0_n_1,o_result0__93_carry__0_n_2,o_result0__93_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(out[7:4]),
        .O(data3[7:4]),
        .S({o_result0__93_carry__0_i_1_n_0,o_result0__93_carry__0_i_2_n_0,o_result0__93_carry__0_i_3_n_0,o_result0__93_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    o_result0__93_carry__0_i_1
       (.I0(out[7]),
        .I1(i_clk[7]),
        .O(o_result0__93_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    o_result0__93_carry__0_i_2
       (.I0(out[6]),
        .I1(i_clk[6]),
        .O(o_result0__93_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    o_result0__93_carry__0_i_3
       (.I0(out[5]),
        .I1(i_clk[5]),
        .O(o_result0__93_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    o_result0__93_carry__0_i_4
       (.I0(out[4]),
        .I1(i_clk[4]),
        .O(o_result0__93_carry__0_i_4_n_0));
  CARRY4 o_result0__93_carry__1
       (.CI(o_result0__93_carry__0_n_0),
        .CO({o_result0__93_carry__1_n_0,o_result0__93_carry__1_n_1,o_result0__93_carry__1_n_2,o_result0__93_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(out[11:8]),
        .O(data3[11:8]),
        .S({o_result0__93_carry__1_i_1_n_0,o_result0__93_carry__1_i_2_n_0,o_result0__93_carry__1_i_3_n_0,o_result0__93_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    o_result0__93_carry__1_i_1
       (.I0(out[11]),
        .I1(i_clk[11]),
        .O(o_result0__93_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    o_result0__93_carry__1_i_2
       (.I0(out[10]),
        .I1(i_clk[10]),
        .O(o_result0__93_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    o_result0__93_carry__1_i_3
       (.I0(out[9]),
        .I1(i_clk[9]),
        .O(o_result0__93_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    o_result0__93_carry__1_i_4
       (.I0(out[8]),
        .I1(i_clk[8]),
        .O(o_result0__93_carry__1_i_4_n_0));
  CARRY4 o_result0__93_carry__2
       (.CI(o_result0__93_carry__1_n_0),
        .CO({o_result0__93_carry__2_n_0,o_result0__93_carry__2_n_1,o_result0__93_carry__2_n_2,o_result0__93_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(out[15:12]),
        .O(data3[15:12]),
        .S({o_result0__93_carry__2_i_1_n_0,o_result0__93_carry__2_i_2_n_0,o_result0__93_carry__2_i_3_n_0,o_result0__93_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    o_result0__93_carry__2_i_1
       (.I0(out[15]),
        .I1(i_clk[15]),
        .O(o_result0__93_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    o_result0__93_carry__2_i_2
       (.I0(out[14]),
        .I1(i_clk[14]),
        .O(o_result0__93_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    o_result0__93_carry__2_i_3
       (.I0(out[13]),
        .I1(i_clk[13]),
        .O(o_result0__93_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    o_result0__93_carry__2_i_4
       (.I0(out[12]),
        .I1(i_clk[12]),
        .O(o_result0__93_carry__2_i_4_n_0));
  CARRY4 o_result0__93_carry__3
       (.CI(o_result0__93_carry__2_n_0),
        .CO({o_result0__93_carry__3_n_0,o_result0__93_carry__3_n_1,o_result0__93_carry__3_n_2,o_result0__93_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(out[19:16]),
        .O(data3[19:16]),
        .S({o_result0__93_carry__3_i_1_n_0,o_result0__93_carry__3_i_2_n_0,o_result0__93_carry__3_i_3_n_0,o_result0__93_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    o_result0__93_carry__3_i_1
       (.I0(out[19]),
        .I1(i_clk[19]),
        .O(o_result0__93_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    o_result0__93_carry__3_i_2
       (.I0(out[18]),
        .I1(i_clk[18]),
        .O(o_result0__93_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    o_result0__93_carry__3_i_3
       (.I0(out[17]),
        .I1(i_clk[17]),
        .O(o_result0__93_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    o_result0__93_carry__3_i_4
       (.I0(out[16]),
        .I1(i_clk[16]),
        .O(o_result0__93_carry__3_i_4_n_0));
  CARRY4 o_result0__93_carry__4
       (.CI(o_result0__93_carry__3_n_0),
        .CO({o_result0__93_carry__4_n_0,o_result0__93_carry__4_n_1,o_result0__93_carry__4_n_2,o_result0__93_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(out[23:20]),
        .O(data3[23:20]),
        .S({o_result0__93_carry__4_i_1_n_0,o_result0__93_carry__4_i_2_n_0,o_result0__93_carry__4_i_3_n_0,o_result0__93_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    o_result0__93_carry__4_i_1
       (.I0(out[23]),
        .I1(i_clk[23]),
        .O(o_result0__93_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    o_result0__93_carry__4_i_2
       (.I0(out[22]),
        .I1(i_clk[22]),
        .O(o_result0__93_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    o_result0__93_carry__4_i_3
       (.I0(out[21]),
        .I1(i_clk[21]),
        .O(o_result0__93_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    o_result0__93_carry__4_i_4
       (.I0(out[20]),
        .I1(i_clk[20]),
        .O(o_result0__93_carry__4_i_4_n_0));
  CARRY4 o_result0__93_carry__5
       (.CI(o_result0__93_carry__4_n_0),
        .CO({o_result0__93_carry__5_n_0,o_result0__93_carry__5_n_1,o_result0__93_carry__5_n_2,o_result0__93_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(out[27:24]),
        .O(data3[27:24]),
        .S({o_result0__93_carry__5_i_1_n_0,o_result0__93_carry__5_i_2_n_0,o_result0__93_carry__5_i_3_n_0,o_result0__93_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    o_result0__93_carry__5_i_1
       (.I0(out[27]),
        .I1(i_clk[27]),
        .O(o_result0__93_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    o_result0__93_carry__5_i_2
       (.I0(out[26]),
        .I1(i_clk[26]),
        .O(o_result0__93_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    o_result0__93_carry__5_i_3
       (.I0(out[25]),
        .I1(i_clk[25]),
        .O(o_result0__93_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    o_result0__93_carry__5_i_4
       (.I0(out[24]),
        .I1(i_clk[24]),
        .O(o_result0__93_carry__5_i_4_n_0));
  CARRY4 o_result0__93_carry__6
       (.CI(o_result0__93_carry__5_n_0),
        .CO({NLW_o_result0__93_carry__6_CO_UNCONNECTED[3],o_result0__93_carry__6_n_1,o_result0__93_carry__6_n_2,o_result0__93_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,out[30:28]}),
        .O(data3[31:28]),
        .S({o_result0__93_carry__6_i_1_n_0,o_result0__93_carry__6_i_2_n_0,o_result0__93_carry__6_i_3_n_0,o_result0__93_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    o_result0__93_carry__6_i_1
       (.I0(out[31]),
        .I1(i_clk[31]),
        .O(o_result0__93_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    o_result0__93_carry__6_i_2
       (.I0(out[30]),
        .I1(i_clk[30]),
        .O(o_result0__93_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    o_result0__93_carry__6_i_3
       (.I0(out[29]),
        .I1(i_clk[29]),
        .O(o_result0__93_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    o_result0__93_carry__6_i_4
       (.I0(out[28]),
        .I1(i_clk[28]),
        .O(o_result0__93_carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    o_result0__93_carry_i_1
       (.I0(out[3]),
        .I1(i_clk[3]),
        .O(o_result0__93_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    o_result0__93_carry_i_2
       (.I0(out[2]),
        .I1(i_clk[2]),
        .O(o_result0__93_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    o_result0__93_carry_i_3
       (.I0(out[1]),
        .I1(i_clk[1]),
        .O(o_result0__93_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    o_result0__93_carry_i_4
       (.I0(out[0]),
        .I1(i_clk[0]),
        .O(o_result0__93_carry_i_4_n_0));
  CARRY4 o_result0_carry
       (.CI(1'b0),
        .CO({o_result0_carry_n_0,o_result0_carry_n_1,o_result0_carry_n_2,o_result0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(out[3:0]),
        .O(data2[3:0]),
        .S({o_result0_carry_i_1_n_0,o_result0_carry_i_2_n_0,o_result0_carry_i_3_n_0,o_result0_carry_i_4_n_0}));
  CARRY4 o_result0_carry__0
       (.CI(o_result0_carry_n_0),
        .CO({o_result0_carry__0_n_0,o_result0_carry__0_n_1,o_result0_carry__0_n_2,o_result0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(out[7:4]),
        .O(data2[7:4]),
        .S({o_result0_carry__0_i_1_n_0,o_result0_carry__0_i_2_n_0,o_result0_carry__0_i_3_n_0,o_result0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    o_result0_carry__0_i_1
       (.I0(out[7]),
        .I1(i_clk[7]),
        .O(o_result0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    o_result0_carry__0_i_2
       (.I0(out[6]),
        .I1(i_clk[6]),
        .O(o_result0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    o_result0_carry__0_i_3
       (.I0(out[5]),
        .I1(i_clk[5]),
        .O(o_result0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    o_result0_carry__0_i_4
       (.I0(out[4]),
        .I1(i_clk[4]),
        .O(o_result0_carry__0_i_4_n_0));
  CARRY4 o_result0_carry__1
       (.CI(o_result0_carry__0_n_0),
        .CO({o_result0_carry__1_n_0,o_result0_carry__1_n_1,o_result0_carry__1_n_2,o_result0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(out[11:8]),
        .O(data2[11:8]),
        .S({o_result0_carry__1_i_1_n_0,o_result0_carry__1_i_2_n_0,o_result0_carry__1_i_3_n_0,o_result0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    o_result0_carry__1_i_1
       (.I0(out[11]),
        .I1(i_clk[11]),
        .O(o_result0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    o_result0_carry__1_i_2
       (.I0(out[10]),
        .I1(i_clk[10]),
        .O(o_result0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    o_result0_carry__1_i_3
       (.I0(out[9]),
        .I1(i_clk[9]),
        .O(o_result0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    o_result0_carry__1_i_4
       (.I0(out[8]),
        .I1(i_clk[8]),
        .O(o_result0_carry__1_i_4_n_0));
  CARRY4 o_result0_carry__2
       (.CI(o_result0_carry__1_n_0),
        .CO({o_result0_carry__2_n_0,o_result0_carry__2_n_1,o_result0_carry__2_n_2,o_result0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(out[15:12]),
        .O(data2[15:12]),
        .S({o_result0_carry__2_i_1_n_0,o_result0_carry__2_i_2_n_0,o_result0_carry__2_i_3_n_0,o_result0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    o_result0_carry__2_i_1
       (.I0(out[15]),
        .I1(i_clk[15]),
        .O(o_result0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    o_result0_carry__2_i_2
       (.I0(out[14]),
        .I1(i_clk[14]),
        .O(o_result0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    o_result0_carry__2_i_3
       (.I0(out[13]),
        .I1(i_clk[13]),
        .O(o_result0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    o_result0_carry__2_i_4
       (.I0(out[12]),
        .I1(i_clk[12]),
        .O(o_result0_carry__2_i_4_n_0));
  CARRY4 o_result0_carry__3
       (.CI(o_result0_carry__2_n_0),
        .CO({o_result0_carry__3_n_0,o_result0_carry__3_n_1,o_result0_carry__3_n_2,o_result0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(out[19:16]),
        .O(data2[19:16]),
        .S({o_result0_carry__3_i_1_n_0,o_result0_carry__3_i_2_n_0,o_result0_carry__3_i_3_n_0,o_result0_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    o_result0_carry__3_i_1
       (.I0(out[19]),
        .I1(i_clk[19]),
        .O(o_result0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    o_result0_carry__3_i_2
       (.I0(out[18]),
        .I1(i_clk[18]),
        .O(o_result0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    o_result0_carry__3_i_3
       (.I0(out[17]),
        .I1(i_clk[17]),
        .O(o_result0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    o_result0_carry__3_i_4
       (.I0(out[16]),
        .I1(i_clk[16]),
        .O(o_result0_carry__3_i_4_n_0));
  CARRY4 o_result0_carry__4
       (.CI(o_result0_carry__3_n_0),
        .CO({o_result0_carry__4_n_0,o_result0_carry__4_n_1,o_result0_carry__4_n_2,o_result0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(out[23:20]),
        .O(data2[23:20]),
        .S({o_result0_carry__4_i_1_n_0,o_result0_carry__4_i_2_n_0,o_result0_carry__4_i_3_n_0,o_result0_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    o_result0_carry__4_i_1
       (.I0(out[23]),
        .I1(i_clk[23]),
        .O(o_result0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    o_result0_carry__4_i_2
       (.I0(out[22]),
        .I1(i_clk[22]),
        .O(o_result0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    o_result0_carry__4_i_3
       (.I0(out[21]),
        .I1(i_clk[21]),
        .O(o_result0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    o_result0_carry__4_i_4
       (.I0(out[20]),
        .I1(i_clk[20]),
        .O(o_result0_carry__4_i_4_n_0));
  CARRY4 o_result0_carry__5
       (.CI(o_result0_carry__4_n_0),
        .CO({o_result0_carry__5_n_0,o_result0_carry__5_n_1,o_result0_carry__5_n_2,o_result0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(out[27:24]),
        .O(data2[27:24]),
        .S({o_result0_carry__5_i_1_n_0,o_result0_carry__5_i_2_n_0,o_result0_carry__5_i_3_n_0,o_result0_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    o_result0_carry__5_i_1
       (.I0(out[27]),
        .I1(i_clk[27]),
        .O(o_result0_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    o_result0_carry__5_i_2
       (.I0(out[26]),
        .I1(i_clk[26]),
        .O(o_result0_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    o_result0_carry__5_i_3
       (.I0(out[25]),
        .I1(i_clk[25]),
        .O(o_result0_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    o_result0_carry__5_i_4
       (.I0(out[24]),
        .I1(i_clk[24]),
        .O(o_result0_carry__5_i_4_n_0));
  CARRY4 o_result0_carry__6
       (.CI(o_result0_carry__5_n_0),
        .CO({NLW_o_result0_carry__6_CO_UNCONNECTED[3],o_result0_carry__6_n_1,o_result0_carry__6_n_2,o_result0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,out[30:28]}),
        .O(data2[31:28]),
        .S({o_result0_carry__6_i_1_n_0,o_result0_carry__6_i_2_n_0,o_result0_carry__6_i_3_n_0,o_result0_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    o_result0_carry__6_i_1
       (.I0(out[31]),
        .I1(i_clk[31]),
        .O(o_result0_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    o_result0_carry__6_i_2
       (.I0(out[30]),
        .I1(i_clk[30]),
        .O(o_result0_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    o_result0_carry__6_i_3
       (.I0(out[29]),
        .I1(i_clk[29]),
        .O(o_result0_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    o_result0_carry__6_i_4
       (.I0(out[28]),
        .I1(i_clk[28]),
        .O(o_result0_carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    o_result0_carry_i_1
       (.I0(out[3]),
        .I1(i_clk[3]),
        .O(o_result0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    o_result0_carry_i_2
       (.I0(out[2]),
        .I1(i_clk[2]),
        .O(o_result0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    o_result0_carry_i_3
       (.I0(out[1]),
        .I1(i_clk[1]),
        .O(o_result0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    o_result0_carry_i_4
       (.I0(out[0]),
        .I1(i_clk[0]),
        .O(o_result0_carry_i_4_n_0));
  CARRY4 o_result2_carry
       (.CI(1'b0),
        .CO({o_result2_carry_n_0,o_result2_carry_n_1,o_result2_carry_n_2,o_result2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({o_result2_carry_i_1_n_0,o_result2_carry_i_2_n_0,o_result2_carry_i_3_n_0,o_result2_carry_i_4_n_0}),
        .O(NLW_o_result2_carry_O_UNCONNECTED[3:0]),
        .S({o_result2_carry_i_5_n_0,o_result2_carry_i_6_n_0,o_result2_carry_i_7_n_0,o_result2_carry_i_8_n_0}));
  CARRY4 o_result2_carry__0
       (.CI(o_result2_carry_n_0),
        .CO({o_result2_carry__0_n_0,o_result2_carry__0_n_1,o_result2_carry__0_n_2,o_result2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({o_result2_carry__0_i_1_n_0,o_result2_carry__0_i_2_n_0,o_result2_carry__0_i_3_n_0,o_result2_carry__0_i_4_n_0}),
        .O(NLW_o_result2_carry__0_O_UNCONNECTED[3:0]),
        .S({o_result2_carry__0_i_5_n_0,o_result2_carry__0_i_6_n_0,o_result2_carry__0_i_7_n_0,o_result2_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_result2_carry__0_i_1
       (.I0(i_clk[14]),
        .I1(out[14]),
        .I2(out[15]),
        .I3(i_clk[15]),
        .O(o_result2_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_result2_carry__0_i_2
       (.I0(i_clk[12]),
        .I1(out[12]),
        .I2(out[13]),
        .I3(i_clk[13]),
        .O(o_result2_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_result2_carry__0_i_3
       (.I0(i_clk[10]),
        .I1(out[10]),
        .I2(out[11]),
        .I3(i_clk[11]),
        .O(o_result2_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_result2_carry__0_i_4
       (.I0(i_clk[8]),
        .I1(out[8]),
        .I2(out[9]),
        .I3(i_clk[9]),
        .O(o_result2_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    o_result2_carry__0_i_5
       (.I0(out[15]),
        .I1(i_clk[15]),
        .I2(out[14]),
        .I3(i_clk[14]),
        .O(o_result2_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    o_result2_carry__0_i_6
       (.I0(out[13]),
        .I1(i_clk[13]),
        .I2(out[12]),
        .I3(i_clk[12]),
        .O(o_result2_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    o_result2_carry__0_i_7
       (.I0(out[11]),
        .I1(i_clk[11]),
        .I2(out[10]),
        .I3(i_clk[10]),
        .O(o_result2_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    o_result2_carry__0_i_8
       (.I0(out[9]),
        .I1(i_clk[9]),
        .I2(out[8]),
        .I3(i_clk[8]),
        .O(o_result2_carry__0_i_8_n_0));
  CARRY4 o_result2_carry__1
       (.CI(o_result2_carry__0_n_0),
        .CO({o_result2_carry__1_n_0,o_result2_carry__1_n_1,o_result2_carry__1_n_2,o_result2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({o_result2_carry__1_i_1_n_0,o_result2_carry__1_i_2_n_0,o_result2_carry__1_i_3_n_0,o_result2_carry__1_i_4_n_0}),
        .O(NLW_o_result2_carry__1_O_UNCONNECTED[3:0]),
        .S({o_result2_carry__1_i_5_n_0,o_result2_carry__1_i_6_n_0,o_result2_carry__1_i_7_n_0,o_result2_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_result2_carry__1_i_1
       (.I0(i_clk[22]),
        .I1(out[22]),
        .I2(out[23]),
        .I3(i_clk[23]),
        .O(o_result2_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_result2_carry__1_i_2
       (.I0(i_clk[20]),
        .I1(out[20]),
        .I2(out[21]),
        .I3(i_clk[21]),
        .O(o_result2_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_result2_carry__1_i_3
       (.I0(i_clk[18]),
        .I1(out[18]),
        .I2(out[19]),
        .I3(i_clk[19]),
        .O(o_result2_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_result2_carry__1_i_4
       (.I0(i_clk[16]),
        .I1(out[16]),
        .I2(out[17]),
        .I3(i_clk[17]),
        .O(o_result2_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    o_result2_carry__1_i_5
       (.I0(out[23]),
        .I1(i_clk[23]),
        .I2(out[22]),
        .I3(i_clk[22]),
        .O(o_result2_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    o_result2_carry__1_i_6
       (.I0(out[21]),
        .I1(i_clk[21]),
        .I2(out[20]),
        .I3(i_clk[20]),
        .O(o_result2_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    o_result2_carry__1_i_7
       (.I0(out[19]),
        .I1(i_clk[19]),
        .I2(out[18]),
        .I3(i_clk[18]),
        .O(o_result2_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    o_result2_carry__1_i_8
       (.I0(out[17]),
        .I1(i_clk[17]),
        .I2(out[16]),
        .I3(i_clk[16]),
        .O(o_result2_carry__1_i_8_n_0));
  CARRY4 o_result2_carry__2
       (.CI(o_result2_carry__1_n_0),
        .CO({data5,o_result2_carry__2_n_1,o_result2_carry__2_n_2,o_result2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({o_result2_carry__2_i_1_n_0,o_result2_carry__2_i_2_n_0,o_result2_carry__2_i_3_n_0,o_result2_carry__2_i_4_n_0}),
        .O(NLW_o_result2_carry__2_O_UNCONNECTED[3:0]),
        .S({o_result2_carry__2_i_5_n_0,o_result2_carry__2_i_6_n_0,o_result2_carry__2_i_7_n_0,o_result2_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_result2_carry__2_i_1
       (.I0(i_clk[30]),
        .I1(out[30]),
        .I2(out[31]),
        .I3(i_clk[31]),
        .O(o_result2_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_result2_carry__2_i_2
       (.I0(i_clk[28]),
        .I1(out[28]),
        .I2(out[29]),
        .I3(i_clk[29]),
        .O(o_result2_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_result2_carry__2_i_3
       (.I0(i_clk[26]),
        .I1(out[26]),
        .I2(out[27]),
        .I3(i_clk[27]),
        .O(o_result2_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_result2_carry__2_i_4
       (.I0(i_clk[24]),
        .I1(out[24]),
        .I2(out[25]),
        .I3(i_clk[25]),
        .O(o_result2_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    o_result2_carry__2_i_5
       (.I0(out[31]),
        .I1(i_clk[31]),
        .I2(out[30]),
        .I3(i_clk[30]),
        .O(o_result2_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    o_result2_carry__2_i_6
       (.I0(out[29]),
        .I1(i_clk[29]),
        .I2(out[28]),
        .I3(i_clk[28]),
        .O(o_result2_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    o_result2_carry__2_i_7
       (.I0(out[27]),
        .I1(i_clk[27]),
        .I2(out[26]),
        .I3(i_clk[26]),
        .O(o_result2_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    o_result2_carry__2_i_8
       (.I0(out[25]),
        .I1(i_clk[25]),
        .I2(out[24]),
        .I3(i_clk[24]),
        .O(o_result2_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_result2_carry_i_1
       (.I0(i_clk[6]),
        .I1(out[6]),
        .I2(out[7]),
        .I3(i_clk[7]),
        .O(o_result2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_result2_carry_i_2
       (.I0(i_clk[4]),
        .I1(out[4]),
        .I2(out[5]),
        .I3(i_clk[5]),
        .O(o_result2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_result2_carry_i_3
       (.I0(i_clk[2]),
        .I1(out[2]),
        .I2(out[3]),
        .I3(i_clk[3]),
        .O(o_result2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_result2_carry_i_4
       (.I0(i_clk[0]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(i_clk[1]),
        .O(o_result2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    o_result2_carry_i_5
       (.I0(out[7]),
        .I1(i_clk[7]),
        .I2(out[6]),
        .I3(i_clk[6]),
        .O(o_result2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    o_result2_carry_i_6
       (.I0(out[5]),
        .I1(i_clk[5]),
        .I2(out[4]),
        .I3(i_clk[4]),
        .O(o_result2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    o_result2_carry_i_7
       (.I0(out[3]),
        .I1(i_clk[3]),
        .I2(out[2]),
        .I3(i_clk[2]),
        .O(o_result2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    o_result2_carry_i_8
       (.I0(out[1]),
        .I1(i_clk[1]),
        .I2(out[0]),
        .I3(i_clk[0]),
        .O(o_result2_carry_i_8_n_0));
endmodule

(* NotValidForBitStream *)
module MIPS
   (i_clk,
    i_arst,
    o_instruction);
  input i_clk;
  input i_arst;
  output [31:0]o_instruction;

  (* RTL_KEEP = "true" *) wire [3:0]ALUControl;
  wire ALUControl_inferred_i_5_n_0;
  (* RTL_KEEP = "true" *) wire ALUSrc;
  (* RTL_KEEP = "true" *) wire [1:0]ALUop;
  (* RTL_KEEP = "true" *) wire Branch_beq;
  (* RTL_KEEP = "true" *) wire Branch_bne;
  (* RTL_KEEP = "true" *) wire [31:0]Instr;
  (* RTL_KEEP = "true" *) wire Jump;
  (* RTL_KEEP = "true" *) wire LuiSig;
  (* RTL_KEEP = "true" *) wire MemRead;
  (* RTL_KEEP = "true" *) wire MemWrite;
  (* RTL_KEEP = "true" *) wire MemtoReg;
  (* RTL_KEEP = "true" *) wire PCSrc;
  (* RTL_KEEP = "true" *) wire [31:0]RAM_A;
  (* RTL_KEEP = "true" *) wire [31:0]RAM_RD;
  (* RTL_KEEP = "true" *) wire [31:0]RAM_WD;
  (* RTL_KEEP = "true" *) wire [4:0]REGF_A1;
  (* RTL_KEEP = "true" *) wire [4:0]REGF_A2;
  (* RTL_KEEP = "true" *) wire [4:0]REGF_A3;
  (* RTL_KEEP = "true" *) wire [31:0]REGF_RD1;
  (* RTL_KEEP = "true" *) wire [31:0]REGF_RD2;
  (* RTL_KEEP = "true" *) wire [31:0]REGF_WD3;
  (* RTL_KEEP = "true" *) wire [31:0]ROM_A;
  (* RTL_KEEP = "true" *) wire RegDst;
  (* RTL_KEEP = "true" *) wire RegWrite;
  (* RTL_KEEP = "true" *) wire Zero;
  wire Zero_inferred_i_12_n_0;
  wire Zero_inferred_i_13_n_0;
  wire Zero_inferred_i_14_n_0;
  wire Zero_inferred_i_15_n_0;
  wire Zero_inferred_i_16_n_0;
  wire Zero_inferred_i_17_n_0;
  wire Zero_inferred_i_18_n_0;
  wire Zero_inferred_i_19_n_0;
  (* RTL_KEEP = "true" *) wire [31:0]alu_result;
  wire alu_result_inferred_i_34_n_0;
  wire alu_result_inferred_i_35_n_0;
  wire alu_result_inferred_i_67_n_0;
  wire alu_result_inferred_i_68_n_0;
  wire alu_result_inferred_i_69_n_0;
  wire alu_result_inferred_i_70_n_0;
  wire i_arst;
  wire i_arst_IBUF;
  wire i_clk;
  wire i_clk_IBUF;
  wire i_clk_IBUF_BUFG;
  wire [31:0]o_instruction;
  (* RTL_KEEP = "true" *) wire [31:0]pc_branch;
  wire pc_branch_inferred_i_10_n_0;
  wire pc_branch_inferred_i_11_n_0;
  wire pc_branch_inferred_i_12_n_0;
  wire pc_branch_inferred_i_13_n_0;
  wire pc_branch_inferred_i_14_n_0;
  wire pc_branch_inferred_i_15_n_0;
  wire pc_branch_inferred_i_16_n_0;
  wire pc_branch_inferred_i_17_n_0;
  wire pc_branch_inferred_i_18_n_0;
  wire pc_branch_inferred_i_19_n_0;
  wire pc_branch_inferred_i_1_n_1;
  wire pc_branch_inferred_i_1_n_2;
  wire pc_branch_inferred_i_1_n_3;
  wire pc_branch_inferred_i_20_n_0;
  wire pc_branch_inferred_i_21_n_0;
  wire pc_branch_inferred_i_22_n_0;
  wire pc_branch_inferred_i_23_n_0;
  wire pc_branch_inferred_i_24_n_0;
  wire pc_branch_inferred_i_25_n_0;
  wire pc_branch_inferred_i_26_n_0;
  wire pc_branch_inferred_i_27_n_0;
  wire pc_branch_inferred_i_28_n_0;
  wire pc_branch_inferred_i_29_n_0;
  wire pc_branch_inferred_i_2_n_0;
  wire pc_branch_inferred_i_2_n_1;
  wire pc_branch_inferred_i_2_n_2;
  wire pc_branch_inferred_i_2_n_3;
  wire pc_branch_inferred_i_30_n_0;
  wire pc_branch_inferred_i_31_n_0;
  wire pc_branch_inferred_i_32_n_0;
  wire pc_branch_inferred_i_33_n_0;
  wire pc_branch_inferred_i_34_n_0;
  wire pc_branch_inferred_i_35_n_0;
  wire pc_branch_inferred_i_36_n_0;
  wire pc_branch_inferred_i_37_n_0;
  wire pc_branch_inferred_i_38_n_0;
  wire pc_branch_inferred_i_39_n_0;
  wire pc_branch_inferred_i_3_n_0;
  wire pc_branch_inferred_i_3_n_1;
  wire pc_branch_inferred_i_3_n_2;
  wire pc_branch_inferred_i_3_n_3;
  wire pc_branch_inferred_i_40_n_0;
  wire pc_branch_inferred_i_4_n_0;
  wire pc_branch_inferred_i_4_n_1;
  wire pc_branch_inferred_i_4_n_2;
  wire pc_branch_inferred_i_4_n_3;
  wire pc_branch_inferred_i_5_n_0;
  wire pc_branch_inferred_i_5_n_1;
  wire pc_branch_inferred_i_5_n_2;
  wire pc_branch_inferred_i_5_n_3;
  wire pc_branch_inferred_i_6_n_0;
  wire pc_branch_inferred_i_6_n_1;
  wire pc_branch_inferred_i_6_n_2;
  wire pc_branch_inferred_i_6_n_3;
  wire pc_branch_inferred_i_7_n_0;
  wire pc_branch_inferred_i_7_n_1;
  wire pc_branch_inferred_i_7_n_2;
  wire pc_branch_inferred_i_7_n_3;
  wire pc_branch_inferred_i_8_n_0;
  wire pc_branch_inferred_i_8_n_1;
  wire pc_branch_inferred_i_8_n_2;
  wire pc_branch_inferred_i_8_n_3;
  wire pc_branch_inferred_i_9_n_0;
  (* RTL_KEEP = "true" *) wire [31:0]pc_current;
  (* RTL_KEEP = "true" *) wire [31:0]pc_jump;
  (* RTL_KEEP = "true" *) wire [31:0]pc_next;
  (* RTL_KEEP = "true" *) wire [31:0]pc_plus4;
  wire pc_plus4_inferred_i_1_n_2;
  wire pc_plus4_inferred_i_1_n_3;
  wire pc_plus4_inferred_i_2_n_0;
  wire pc_plus4_inferred_i_2_n_1;
  wire pc_plus4_inferred_i_2_n_2;
  wire pc_plus4_inferred_i_2_n_3;
  wire pc_plus4_inferred_i_3_n_0;
  wire pc_plus4_inferred_i_3_n_1;
  wire pc_plus4_inferred_i_3_n_2;
  wire pc_plus4_inferred_i_3_n_3;
  wire pc_plus4_inferred_i_4_n_0;
  wire pc_plus4_inferred_i_4_n_1;
  wire pc_plus4_inferred_i_4_n_2;
  wire pc_plus4_inferred_i_4_n_3;
  wire pc_plus4_inferred_i_5_n_0;
  wire pc_plus4_inferred_i_5_n_1;
  wire pc_plus4_inferred_i_5_n_2;
  wire pc_plus4_inferred_i_5_n_3;
  wire pc_plus4_inferred_i_6_n_0;
  wire pc_plus4_inferred_i_6_n_1;
  wire pc_plus4_inferred_i_6_n_2;
  wire pc_plus4_inferred_i_6_n_3;
  wire pc_plus4_inferred_i_7_n_0;
  wire pc_plus4_inferred_i_7_n_1;
  wire pc_plus4_inferred_i_7_n_2;
  wire pc_plus4_inferred_i_7_n_3;
  wire pc_plus4_inferred_i_8_n_0;
  wire pc_plus4_inferred_i_8_n_1;
  wire pc_plus4_inferred_i_8_n_2;
  wire pc_plus4_inferred_i_8_n_3;
  wire pc_plus4_inferred_i_9_n_0;
  (* RTL_KEEP = "true" *) wire [31:0]result;
  (* RTL_KEEP = "true" *) wire [31:0]shifted_sign_imm;
  (* RTL_KEEP = "true" *) wire [31:0]sign_imm;
  (* RTL_KEEP = "true" *) wire [31:0]srcA;
  (* RTL_KEEP = "true" *) wire [31:0]srcB;
  wire [3:3]NLW_pc_branch_inferred_i_1_CO_UNCONNECTED;
  wire [3:2]NLW_pc_plus4_inferred_i_1_CO_UNCONNECTED;
  wire [3:3]NLW_pc_plus4_inferred_i_1_O_UNCONNECTED;

initial begin
 $sdf_annotate("testbench_time_synth.sdf",,,,"tool_control");
end
  LUT5 #(
    .INIT(32'h08000B00)) 
    ALUControl_inferred_i_1
       (.I0(pc_jump[3]),
        .I1(pc_jump[2]),
        .I2(ALUop[0]),
        .I3(ALUop[1]),
        .I4(pc_jump[7]),
        .O(ALUControl[3]));
  LUT5 #(
    .INIT(32'h7444CCCC)) 
    ALUControl_inferred_i_2
       (.I0(Instr[28]),
        .I1(ALUop[0]),
        .I2(pc_jump[7]),
        .I3(pc_jump[3]),
        .I4(ALUop[1]),
        .O(ALUControl[2]));
  LUT5 #(
    .INIT(32'h04F4FFFF)) 
    ALUControl_inferred_i_3
       (.I0(pc_jump[4]),
        .I1(pc_jump[7]),
        .I2(ALUop[0]),
        .I3(Instr[28]),
        .I4(ALUop[1]),
        .O(ALUControl[1]));
  LUT5 #(
    .INIT(32'hA8A8A808)) 
    ALUControl_inferred_i_4
       (.I0(ALUop[1]),
        .I1(ALUControl_inferred_i_5_n_0),
        .I2(ALUop[0]),
        .I3(Instr[27]),
        .I4(Instr[26]),
        .O(ALUControl[0]));
  LUT4 #(
    .INIT(16'h6626)) 
    ALUControl_inferred_i_5
       (.I0(pc_jump[2]),
        .I1(pc_jump[3]),
        .I2(pc_jump[7]),
        .I3(pc_jump[5]),
        .O(ALUControl_inferred_i_5_n_0));
  LUT6 #(
    .INIT(64'h0004500000040044)) 
    ALUSrc_inferred_i_1
       (.I0(Instr[30]),
        .I1(Instr[29]),
        .I2(Instr[27]),
        .I3(Instr[31]),
        .I4(Instr[28]),
        .I5(Instr[26]),
        .O(ALUSrc));
  LUT6 #(
    .INIT(64'h0100010000001001)) 
    ALUop_inferred_i_1
       (.I0(Instr[31]),
        .I1(Instr[30]),
        .I2(Instr[27]),
        .I3(Instr[29]),
        .I4(Instr[26]),
        .I5(Instr[28]),
        .O(ALUop[1]));
  LUT6 #(
    .INIT(64'h0000110000101100)) 
    ALUop_inferred_i_2
       (.I0(Instr[30]),
        .I1(Instr[31]),
        .I2(Instr[29]),
        .I3(Instr[28]),
        .I4(Instr[27]),
        .I5(Instr[26]),
        .O(ALUop[0]));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    Branch_beq_inferred_i_1
       (.I0(Instr[31]),
        .I1(Instr[30]),
        .I2(Instr[27]),
        .I3(Instr[28]),
        .I4(Instr[29]),
        .I5(Instr[26]),
        .O(Branch_beq));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    Branch_bne_inferred_i_1
       (.I0(Instr[31]),
        .I1(Instr[30]),
        .I2(Instr[28]),
        .I3(Instr[26]),
        .I4(Instr[29]),
        .I5(Instr[27]),
        .O(Branch_bne));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    Jump_inferred_i_1
       (.I0(Instr[31]),
        .I1(Instr[30]),
        .I2(Instr[26]),
        .I3(Instr[27]),
        .I4(Instr[29]),
        .I5(Instr[28]),
        .O(Jump));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    LuiSig_inferred_i_1
       (.I0(Instr[31]),
        .I1(Instr[30]),
        .I2(Instr[27]),
        .I3(Instr[26]),
        .I4(Instr[29]),
        .I5(Instr[28]),
        .O(LuiSig));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    MemWrite_inferred_i_1
       (.I0(Instr[28]),
        .I1(Instr[30]),
        .I2(Instr[27]),
        .I3(Instr[26]),
        .I4(Instr[31]),
        .I5(Instr[29]),
        .O(MemWrite));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    MemtoReg_inferred_i_1
       (.I0(Instr[28]),
        .I1(Instr[30]),
        .I2(Instr[27]),
        .I3(Instr[26]),
        .I4(Instr[29]),
        .I5(Instr[31]),
        .O(MemRead));
  LUT3 #(
    .INIT(8'hB8)) 
    PCSrc_inferred_i_1
       (.I0(Branch_beq),
        .I1(Zero),
        .I2(Branch_bne),
        .O(PCSrc));
  LUT3 #(
    .INIT(8'hAC)) 
    REGF_A3_inferred_i_1
       (.I0(pc_jump[17]),
        .I1(REGF_A2[4]),
        .I2(RegDst),
        .O(REGF_A3[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    REGF_A3_inferred_i_2
       (.I0(pc_jump[16]),
        .I1(REGF_A2[3]),
        .I2(RegDst),
        .O(REGF_A3[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    REGF_A3_inferred_i_3
       (.I0(pc_jump[15]),
        .I1(REGF_A2[2]),
        .I2(RegDst),
        .O(REGF_A3[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    REGF_A3_inferred_i_4
       (.I0(pc_jump[14]),
        .I1(REGF_A2[1]),
        .I2(RegDst),
        .O(REGF_A3[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    REGF_A3_inferred_i_5
       (.I0(pc_jump[13]),
        .I1(REGF_A2[0]),
        .I2(RegDst),
        .O(REGF_A3[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    REGF_WD3_inferred_i_1
       (.I0(pc_jump[17]),
        .I1(LuiSig),
        .I2(result[31]),
        .O(REGF_WD3[31]));
  LUT3 #(
    .INIT(8'hB8)) 
    REGF_WD3_inferred_i_10
       (.I0(pc_jump[8]),
        .I1(LuiSig),
        .I2(result[22]),
        .O(REGF_WD3[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    REGF_WD3_inferred_i_11
       (.I0(pc_jump[7]),
        .I1(LuiSig),
        .I2(result[21]),
        .O(REGF_WD3[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    REGF_WD3_inferred_i_12
       (.I0(pc_jump[6]),
        .I1(LuiSig),
        .I2(result[20]),
        .O(REGF_WD3[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    REGF_WD3_inferred_i_13
       (.I0(pc_jump[5]),
        .I1(LuiSig),
        .I2(result[19]),
        .O(REGF_WD3[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    REGF_WD3_inferred_i_14
       (.I0(pc_jump[4]),
        .I1(LuiSig),
        .I2(result[18]),
        .O(REGF_WD3[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    REGF_WD3_inferred_i_15
       (.I0(pc_jump[3]),
        .I1(LuiSig),
        .I2(result[17]),
        .O(REGF_WD3[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    REGF_WD3_inferred_i_16
       (.I0(pc_jump[2]),
        .I1(LuiSig),
        .I2(result[16]),
        .O(REGF_WD3[16]));
  LUT2 #(
    .INIT(4'h2)) 
    REGF_WD3_inferred_i_17
       (.I0(result[15]),
        .I1(LuiSig),
        .O(REGF_WD3[15]));
  LUT2 #(
    .INIT(4'h2)) 
    REGF_WD3_inferred_i_18
       (.I0(result[14]),
        .I1(LuiSig),
        .O(REGF_WD3[14]));
  LUT2 #(
    .INIT(4'h2)) 
    REGF_WD3_inferred_i_19
       (.I0(result[13]),
        .I1(LuiSig),
        .O(REGF_WD3[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    REGF_WD3_inferred_i_2
       (.I0(pc_jump[16]),
        .I1(LuiSig),
        .I2(result[30]),
        .O(REGF_WD3[30]));
  LUT2 #(
    .INIT(4'h2)) 
    REGF_WD3_inferred_i_20
       (.I0(result[12]),
        .I1(LuiSig),
        .O(REGF_WD3[12]));
  LUT2 #(
    .INIT(4'h2)) 
    REGF_WD3_inferred_i_21
       (.I0(result[11]),
        .I1(LuiSig),
        .O(REGF_WD3[11]));
  LUT2 #(
    .INIT(4'h2)) 
    REGF_WD3_inferred_i_22
       (.I0(result[10]),
        .I1(LuiSig),
        .O(REGF_WD3[10]));
  LUT2 #(
    .INIT(4'h2)) 
    REGF_WD3_inferred_i_23
       (.I0(result[9]),
        .I1(LuiSig),
        .O(REGF_WD3[9]));
  LUT2 #(
    .INIT(4'h2)) 
    REGF_WD3_inferred_i_24
       (.I0(result[8]),
        .I1(LuiSig),
        .O(REGF_WD3[8]));
  LUT2 #(
    .INIT(4'h2)) 
    REGF_WD3_inferred_i_25
       (.I0(result[7]),
        .I1(LuiSig),
        .O(REGF_WD3[7]));
  LUT2 #(
    .INIT(4'h2)) 
    REGF_WD3_inferred_i_26
       (.I0(result[6]),
        .I1(LuiSig),
        .O(REGF_WD3[6]));
  LUT2 #(
    .INIT(4'h2)) 
    REGF_WD3_inferred_i_27
       (.I0(result[5]),
        .I1(LuiSig),
        .O(REGF_WD3[5]));
  LUT2 #(
    .INIT(4'h2)) 
    REGF_WD3_inferred_i_28
       (.I0(result[4]),
        .I1(LuiSig),
        .O(REGF_WD3[4]));
  LUT2 #(
    .INIT(4'h2)) 
    REGF_WD3_inferred_i_29
       (.I0(result[3]),
        .I1(LuiSig),
        .O(REGF_WD3[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    REGF_WD3_inferred_i_3
       (.I0(pc_jump[15]),
        .I1(LuiSig),
        .I2(result[29]),
        .O(REGF_WD3[29]));
  LUT2 #(
    .INIT(4'h2)) 
    REGF_WD3_inferred_i_30
       (.I0(result[2]),
        .I1(LuiSig),
        .O(REGF_WD3[2]));
  LUT2 #(
    .INIT(4'h2)) 
    REGF_WD3_inferred_i_31
       (.I0(result[1]),
        .I1(LuiSig),
        .O(REGF_WD3[1]));
  LUT2 #(
    .INIT(4'h2)) 
    REGF_WD3_inferred_i_32
       (.I0(result[0]),
        .I1(LuiSig),
        .O(REGF_WD3[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    REGF_WD3_inferred_i_4
       (.I0(pc_jump[14]),
        .I1(LuiSig),
        .I2(result[28]),
        .O(REGF_WD3[28]));
  LUT3 #(
    .INIT(8'hB8)) 
    REGF_WD3_inferred_i_5
       (.I0(pc_jump[13]),
        .I1(LuiSig),
        .I2(result[27]),
        .O(REGF_WD3[27]));
  LUT3 #(
    .INIT(8'hB8)) 
    REGF_WD3_inferred_i_6
       (.I0(pc_jump[12]),
        .I1(LuiSig),
        .I2(result[26]),
        .O(REGF_WD3[26]));
  LUT3 #(
    .INIT(8'hB8)) 
    REGF_WD3_inferred_i_7
       (.I0(pc_jump[11]),
        .I1(LuiSig),
        .I2(result[25]),
        .O(REGF_WD3[25]));
  LUT3 #(
    .INIT(8'hB8)) 
    REGF_WD3_inferred_i_8
       (.I0(pc_jump[10]),
        .I1(LuiSig),
        .I2(result[24]),
        .O(REGF_WD3[24]));
  LUT3 #(
    .INIT(8'hB8)) 
    REGF_WD3_inferred_i_9
       (.I0(pc_jump[9]),
        .I1(LuiSig),
        .I2(result[23]),
        .O(REGF_WD3[23]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    RegDst_inferred_i_1
       (.I0(Instr[31]),
        .I1(Instr[30]),
        .I2(Instr[27]),
        .I3(Instr[26]),
        .I4(Instr[29]),
        .I5(Instr[28]),
        .O(RegDst));
  LUT6 #(
    .INIT(64'h0004000050001051)) 
    RegWrite_inferred_i_1
       (.I0(Instr[30]),
        .I1(Instr[27]),
        .I2(Instr[29]),
        .I3(Instr[28]),
        .I4(Instr[26]),
        .I5(Instr[31]),
        .O(RegWrite));
  LUT2 #(
    .INIT(4'hE)) 
    Zero_inferred_i_12
       (.I0(srcA[4]),
        .I1(srcB[4]),
        .O(Zero_inferred_i_12_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Zero_inferred_i_13
       (.I0(srcA[5]),
        .I1(srcB[5]),
        .O(Zero_inferred_i_13_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Zero_inferred_i_14
       (.I0(srcA[2]),
        .I1(srcB[2]),
        .O(Zero_inferred_i_14_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Zero_inferred_i_15
       (.I0(srcA[3]),
        .I1(srcB[3]),
        .O(Zero_inferred_i_15_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Zero_inferred_i_16
       (.I0(srcA[8]),
        .I1(srcB[8]),
        .O(Zero_inferred_i_16_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Zero_inferred_i_17
       (.I0(srcA[9]),
        .I1(srcB[9]),
        .O(Zero_inferred_i_17_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Zero_inferred_i_18
       (.I0(srcA[10]),
        .I1(srcB[10]),
        .O(Zero_inferred_i_18_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Zero_inferred_i_19
       (.I0(srcA[11]),
        .I1(srcB[11]),
        .O(Zero_inferred_i_19_n_0));
  ALU alu_inst
       (.ALUop_inferred_i_1(alu_result_inferred_i_34_n_0),
        .ALUop_inferred_i_1_0(alu_result_inferred_i_35_n_0),
        .ALUop_inferred_i_1_1(alu_result_inferred_i_69_n_0),
        .ALUop_inferred_i_1_2(alu_result_inferred_i_67_n_0),
        .ALUop_inferred_i_1_3(alu_result_inferred_i_68_n_0),
        .ALUop_inferred_i_2(alu_result_inferred_i_70_n_0),
        .alu_result(alu_result),
        .i_clk(srcB),
        .i_clk_0(Zero_inferred_i_14_n_0),
        .i_clk_1(Zero_inferred_i_15_n_0),
        .i_clk_2(Zero_inferred_i_12_n_0),
        .i_clk_3(Zero_inferred_i_13_n_0),
        .i_clk_4(Zero_inferred_i_16_n_0),
        .i_clk_5(Zero_inferred_i_17_n_0),
        .i_clk_6(Zero_inferred_i_18_n_0),
        .i_clk_7(Zero_inferred_i_19_n_0),
        .in0(Zero),
        .out(srcA));
  LUT4 #(
    .INIT(16'h0311)) 
    alu_result_inferred_i_34
       (.I0(ALUControl[2]),
        .I1(ALUControl[3]),
        .I2(ALUControl[0]),
        .I3(ALUControl[1]),
        .O(alu_result_inferred_i_34_n_0));
  LUT4 #(
    .INIT(16'h0008)) 
    alu_result_inferred_i_35
       (.I0(ALUControl[2]),
        .I1(ALUControl[3]),
        .I2(ALUControl[0]),
        .I3(ALUControl[1]),
        .O(alu_result_inferred_i_35_n_0));
  LUT4 #(
    .INIT(16'hE7FF)) 
    alu_result_inferred_i_67
       (.I0(ALUControl[1]),
        .I1(ALUControl[0]),
        .I2(ALUControl[3]),
        .I3(ALUControl[2]),
        .O(alu_result_inferred_i_67_n_0));
  LUT4 #(
    .INIT(16'h0A07)) 
    alu_result_inferred_i_68
       (.I0(ALUControl[1]),
        .I1(ALUControl[0]),
        .I2(ALUControl[3]),
        .I3(ALUControl[2]),
        .O(alu_result_inferred_i_68_n_0));
  LUT4 #(
    .INIT(16'h3002)) 
    alu_result_inferred_i_69
       (.I0(ALUControl[0]),
        .I1(ALUControl[3]),
        .I2(ALUControl[1]),
        .I3(ALUControl[2]),
        .O(alu_result_inferred_i_69_n_0));
  LUT4 #(
    .INIT(16'hF6DE)) 
    alu_result_inferred_i_70
       (.I0(ALUControl[2]),
        .I1(ALUControl[1]),
        .I2(ALUControl[3]),
        .I3(ALUControl[0]),
        .O(alu_result_inferred_i_70_n_0));
  data_memory data_memory_inst
       (.i_clk(RAM_A[31:2]),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .in0(RAM_RD),
        .out(MemWrite),
        .write_data(RAM_WD));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(Instr[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(Instr[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(Instr[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_100
       (.I0(pc_jump[17]),
        .O(sign_imm[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_101
       (.I0(pc_jump[17]),
        .O(sign_imm[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_102
       (.I0(pc_jump[17]),
        .O(sign_imm[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_103
       (.I0(pc_jump[17]),
        .O(sign_imm[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_104
       (.I0(pc_jump[17]),
        .O(sign_imm[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_105
       (.I0(pc_jump[17]),
        .O(sign_imm[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_106
       (.I0(pc_jump[17]),
        .O(sign_imm[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_107
       (.I0(pc_jump[17]),
        .O(sign_imm[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_108
       (.I0(pc_jump[16]),
        .O(sign_imm[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_109
       (.I0(pc_jump[15]),
        .O(sign_imm[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(Instr[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_110
       (.I0(pc_jump[14]),
        .O(sign_imm[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_111
       (.I0(pc_jump[13]),
        .O(sign_imm[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_112
       (.I0(pc_jump[12]),
        .O(sign_imm[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_113
       (.I0(pc_jump[11]),
        .O(sign_imm[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_114
       (.I0(pc_jump[10]),
        .O(sign_imm[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_115
       (.I0(pc_jump[9]),
        .O(sign_imm[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_116
       (.I0(pc_jump[8]),
        .O(sign_imm[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_117
       (.I0(pc_jump[7]),
        .O(sign_imm[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_118
       (.I0(pc_jump[6]),
        .O(sign_imm[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_119
       (.I0(pc_jump[5]),
        .O(sign_imm[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(Instr[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_120
       (.I0(pc_jump[4]),
        .O(sign_imm[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_121
       (.I0(pc_jump[3]),
        .O(sign_imm[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_122
       (.I0(pc_jump[2]),
        .O(sign_imm[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_123
       (.I0(sign_imm[29]),
        .O(shifted_sign_imm[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_124
       (.I0(sign_imm[28]),
        .O(shifted_sign_imm[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_125
       (.I0(sign_imm[27]),
        .O(shifted_sign_imm[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_126
       (.I0(sign_imm[26]),
        .O(shifted_sign_imm[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_127
       (.I0(sign_imm[25]),
        .O(shifted_sign_imm[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_128
       (.I0(sign_imm[24]),
        .O(shifted_sign_imm[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_129
       (.I0(sign_imm[23]),
        .O(shifted_sign_imm[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(Instr[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_130
       (.I0(sign_imm[22]),
        .O(shifted_sign_imm[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_131
       (.I0(sign_imm[21]),
        .O(shifted_sign_imm[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_132
       (.I0(sign_imm[20]),
        .O(shifted_sign_imm[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_133
       (.I0(sign_imm[19]),
        .O(shifted_sign_imm[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_134
       (.I0(sign_imm[18]),
        .O(shifted_sign_imm[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_135
       (.I0(sign_imm[17]),
        .O(shifted_sign_imm[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_136
       (.I0(sign_imm[16]),
        .O(shifted_sign_imm[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_137
       (.I0(sign_imm[15]),
        .O(shifted_sign_imm[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_138
       (.I0(sign_imm[14]),
        .O(shifted_sign_imm[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_139
       (.I0(sign_imm[13]),
        .O(shifted_sign_imm[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(Instr[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_140
       (.I0(sign_imm[12]),
        .O(shifted_sign_imm[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_141
       (.I0(sign_imm[11]),
        .O(shifted_sign_imm[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_142
       (.I0(sign_imm[10]),
        .O(shifted_sign_imm[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_143
       (.I0(sign_imm[9]),
        .O(shifted_sign_imm[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_144
       (.I0(sign_imm[8]),
        .O(shifted_sign_imm[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_145
       (.I0(sign_imm[7]),
        .O(shifted_sign_imm[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_146
       (.I0(sign_imm[6]),
        .O(shifted_sign_imm[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_147
       (.I0(sign_imm[5]),
        .O(shifted_sign_imm[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_148
       (.I0(sign_imm[4]),
        .O(shifted_sign_imm[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_149
       (.I0(sign_imm[3]),
        .O(shifted_sign_imm[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(Instr[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_150
       (.I0(sign_imm[2]),
        .O(shifted_sign_imm[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_151
       (.I0(sign_imm[1]),
        .O(shifted_sign_imm[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_152
       (.I0(sign_imm[0]),
        .O(shifted_sign_imm[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_153
       (.I0(1'b0),
        .O(shifted_sign_imm[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_154
       (.I0(1'b0),
        .O(shifted_sign_imm[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_155
       (.I0(pc_plus4[31]),
        .O(pc_jump[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_156
       (.I0(pc_plus4[30]),
        .O(pc_jump[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_157
       (.I0(pc_plus4[29]),
        .O(pc_jump[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_158
       (.I0(pc_plus4[28]),
        .O(pc_jump[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_159
       (.I0(REGF_A1[4]),
        .O(pc_jump[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(Instr[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_160
       (.I0(REGF_A1[3]),
        .O(pc_jump[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_161
       (.I0(REGF_A1[2]),
        .O(pc_jump[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_162
       (.I0(REGF_A1[1]),
        .O(pc_jump[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_163
       (.I0(REGF_A1[0]),
        .O(pc_jump[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_164
       (.I0(REGF_A2[4]),
        .O(pc_jump[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_165
       (.I0(REGF_A2[3]),
        .O(pc_jump[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_166
       (.I0(REGF_A2[2]),
        .O(pc_jump[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_167
       (.I0(REGF_A2[1]),
        .O(pc_jump[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_168
       (.I0(REGF_A2[0]),
        .O(pc_jump[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_169
       (.I0(1'b0),
        .O(pc_jump[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(Instr[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_170
       (.I0(1'b0),
        .O(pc_jump[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_171
       (.I0(REGF_RD1[31]),
        .O(srcA[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_172
       (.I0(REGF_RD1[30]),
        .O(srcA[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_173
       (.I0(REGF_RD1[29]),
        .O(srcA[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_174
       (.I0(REGF_RD1[28]),
        .O(srcA[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_175
       (.I0(REGF_RD1[27]),
        .O(srcA[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_176
       (.I0(REGF_RD1[26]),
        .O(srcA[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_177
       (.I0(REGF_RD1[25]),
        .O(srcA[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_178
       (.I0(REGF_RD1[24]),
        .O(srcA[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_179
       (.I0(REGF_RD1[23]),
        .O(srcA[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(Instr[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_180
       (.I0(REGF_RD1[22]),
        .O(srcA[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_181
       (.I0(REGF_RD1[21]),
        .O(srcA[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_182
       (.I0(REGF_RD1[20]),
        .O(srcA[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_183
       (.I0(REGF_RD1[19]),
        .O(srcA[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_184
       (.I0(REGF_RD1[18]),
        .O(srcA[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_185
       (.I0(REGF_RD1[17]),
        .O(srcA[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_186
       (.I0(REGF_RD1[16]),
        .O(srcA[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_187
       (.I0(REGF_RD1[15]),
        .O(srcA[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_188
       (.I0(REGF_RD1[14]),
        .O(srcA[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_189
       (.I0(REGF_RD1[13]),
        .O(srcA[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(Instr[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_190
       (.I0(REGF_RD1[12]),
        .O(srcA[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_191
       (.I0(REGF_RD1[11]),
        .O(srcA[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_192
       (.I0(REGF_RD1[10]),
        .O(srcA[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_193
       (.I0(REGF_RD1[9]),
        .O(srcA[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_194
       (.I0(REGF_RD1[8]),
        .O(srcA[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_195
       (.I0(REGF_RD1[7]),
        .O(srcA[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_196
       (.I0(REGF_RD1[6]),
        .O(srcA[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_197
       (.I0(REGF_RD1[5]),
        .O(srcA[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_198
       (.I0(REGF_RD1[4]),
        .O(srcA[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_199
       (.I0(REGF_RD1[3]),
        .O(srcA[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(Instr[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(Instr[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_200
       (.I0(REGF_RD1[2]),
        .O(srcA[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_201
       (.I0(REGF_RD1[1]),
        .O(srcA[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_202
       (.I0(REGF_RD1[0]),
        .O(srcA[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_203
       (.I0(REGF_RD2[31]),
        .O(RAM_WD[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_204
       (.I0(REGF_RD2[30]),
        .O(RAM_WD[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_205
       (.I0(REGF_RD2[29]),
        .O(RAM_WD[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_206
       (.I0(REGF_RD2[28]),
        .O(RAM_WD[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_207
       (.I0(REGF_RD2[27]),
        .O(RAM_WD[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_208
       (.I0(REGF_RD2[26]),
        .O(RAM_WD[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_209
       (.I0(REGF_RD2[25]),
        .O(RAM_WD[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_21
       (.I0(1'b0),
        .O(Instr[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_210
       (.I0(REGF_RD2[24]),
        .O(RAM_WD[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_211
       (.I0(REGF_RD2[23]),
        .O(RAM_WD[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_212
       (.I0(REGF_RD2[22]),
        .O(RAM_WD[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_213
       (.I0(REGF_RD2[21]),
        .O(RAM_WD[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_214
       (.I0(REGF_RD2[20]),
        .O(RAM_WD[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_215
       (.I0(REGF_RD2[19]),
        .O(RAM_WD[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_216
       (.I0(REGF_RD2[18]),
        .O(RAM_WD[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_217
       (.I0(REGF_RD2[17]),
        .O(RAM_WD[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_218
       (.I0(REGF_RD2[16]),
        .O(RAM_WD[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_219
       (.I0(REGF_RD2[15]),
        .O(RAM_WD[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_22
       (.I0(1'b0),
        .O(Instr[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_220
       (.I0(REGF_RD2[14]),
        .O(RAM_WD[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_221
       (.I0(REGF_RD2[13]),
        .O(RAM_WD[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_222
       (.I0(REGF_RD2[12]),
        .O(RAM_WD[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_223
       (.I0(REGF_RD2[11]),
        .O(RAM_WD[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_224
       (.I0(REGF_RD2[10]),
        .O(RAM_WD[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_225
       (.I0(REGF_RD2[9]),
        .O(RAM_WD[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_226
       (.I0(REGF_RD2[8]),
        .O(RAM_WD[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_227
       (.I0(REGF_RD2[7]),
        .O(RAM_WD[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_228
       (.I0(REGF_RD2[6]),
        .O(RAM_WD[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_229
       (.I0(REGF_RD2[5]),
        .O(RAM_WD[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_23
       (.I0(1'b0),
        .O(Instr[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_230
       (.I0(REGF_RD2[4]),
        .O(RAM_WD[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_231
       (.I0(REGF_RD2[3]),
        .O(RAM_WD[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_232
       (.I0(REGF_RD2[2]),
        .O(RAM_WD[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_233
       (.I0(REGF_RD2[1]),
        .O(RAM_WD[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_234
       (.I0(REGF_RD2[0]),
        .O(RAM_WD[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_235
       (.I0(MemRead),
        .O(MemtoReg));
  LUT1 #(
    .INIT(2'h2)) 
    i_236
       (.I0(alu_result[31]),
        .O(RAM_A[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_237
       (.I0(alu_result[30]),
        .O(RAM_A[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_238
       (.I0(alu_result[29]),
        .O(RAM_A[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_239
       (.I0(alu_result[28]),
        .O(RAM_A[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_24
       (.I0(1'b0),
        .O(Instr[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_240
       (.I0(alu_result[27]),
        .O(RAM_A[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_241
       (.I0(alu_result[26]),
        .O(RAM_A[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_242
       (.I0(alu_result[25]),
        .O(RAM_A[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_243
       (.I0(alu_result[24]),
        .O(RAM_A[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_244
       (.I0(alu_result[23]),
        .O(RAM_A[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_245
       (.I0(alu_result[22]),
        .O(RAM_A[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_246
       (.I0(alu_result[21]),
        .O(RAM_A[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_247
       (.I0(alu_result[20]),
        .O(RAM_A[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_248
       (.I0(alu_result[19]),
        .O(RAM_A[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_249
       (.I0(alu_result[18]),
        .O(RAM_A[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_25
       (.I0(1'b0),
        .O(Instr[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_250
       (.I0(alu_result[17]),
        .O(RAM_A[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_251
       (.I0(alu_result[16]),
        .O(RAM_A[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_252
       (.I0(alu_result[15]),
        .O(RAM_A[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_253
       (.I0(alu_result[14]),
        .O(RAM_A[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_254
       (.I0(alu_result[13]),
        .O(RAM_A[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_255
       (.I0(alu_result[12]),
        .O(RAM_A[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_256
       (.I0(alu_result[11]),
        .O(RAM_A[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_257
       (.I0(alu_result[10]),
        .O(RAM_A[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_258
       (.I0(alu_result[9]),
        .O(RAM_A[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_259
       (.I0(alu_result[8]),
        .O(RAM_A[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_26
       (.I0(1'b0),
        .O(Instr[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_260
       (.I0(alu_result[7]),
        .O(RAM_A[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_261
       (.I0(alu_result[6]),
        .O(RAM_A[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_262
       (.I0(alu_result[5]),
        .O(RAM_A[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_263
       (.I0(alu_result[4]),
        .O(RAM_A[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_264
       (.I0(alu_result[3]),
        .O(RAM_A[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_265
       (.I0(alu_result[2]),
        .O(RAM_A[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_266
       (.I0(alu_result[1]),
        .O(RAM_A[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_267
       (.I0(alu_result[0]),
        .O(RAM_A[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_27
       (.I0(1'b0),
        .O(Instr[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_28
       (.I0(1'b0),
        .O(Instr[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_29
       (.I0(1'b0),
        .O(Instr[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(Instr[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_30
       (.I0(1'b0),
        .O(Instr[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_31
       (.I0(1'b0),
        .O(Instr[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_32
       (.I0(Instr[25]),
        .O(REGF_A1[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_33
       (.I0(Instr[24]),
        .O(REGF_A1[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_34
       (.I0(Instr[23]),
        .O(REGF_A1[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_35
       (.I0(Instr[22]),
        .O(REGF_A1[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_36
       (.I0(Instr[21]),
        .O(REGF_A1[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_37
       (.I0(Instr[20]),
        .O(REGF_A2[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_38
       (.I0(Instr[19]),
        .O(REGF_A2[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_39
       (.I0(Instr[18]),
        .O(REGF_A2[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(Instr[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_40
       (.I0(Instr[17]),
        .O(REGF_A2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_41
       (.I0(Instr[16]),
        .O(REGF_A2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_42
       (.I0(Instr[15]),
        .O(pc_jump[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_43
       (.I0(Instr[14]),
        .O(pc_jump[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_44
       (.I0(Instr[13]),
        .O(pc_jump[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_45
       (.I0(Instr[12]),
        .O(pc_jump[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_46
       (.I0(Instr[11]),
        .O(pc_jump[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_47
       (.I0(Instr[10]),
        .O(pc_jump[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_48
       (.I0(Instr[9]),
        .O(pc_jump[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_49
       (.I0(Instr[8]),
        .O(pc_jump[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(Instr[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_50
       (.I0(Instr[7]),
        .O(pc_jump[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_51
       (.I0(Instr[6]),
        .O(pc_jump[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_52
       (.I0(Instr[5]),
        .O(pc_jump[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_53
       (.I0(Instr[4]),
        .O(pc_jump[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_54
       (.I0(Instr[3]),
        .O(pc_jump[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_55
       (.I0(Instr[2]),
        .O(pc_jump[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_56
       (.I0(Instr[1]),
        .O(pc_jump[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_57
       (.I0(Instr[0]),
        .O(pc_jump[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_58
       (.I0(pc_current[31]),
        .O(ROM_A[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_59
       (.I0(pc_current[30]),
        .O(ROM_A[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(Instr[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_60
       (.I0(pc_current[29]),
        .O(ROM_A[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_61
       (.I0(pc_current[28]),
        .O(ROM_A[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_62
       (.I0(pc_current[27]),
        .O(ROM_A[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_63
       (.I0(pc_current[26]),
        .O(ROM_A[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_64
       (.I0(pc_current[25]),
        .O(ROM_A[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_65
       (.I0(pc_current[24]),
        .O(ROM_A[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_66
       (.I0(pc_current[23]),
        .O(ROM_A[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_67
       (.I0(pc_current[22]),
        .O(ROM_A[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_68
       (.I0(pc_current[21]),
        .O(ROM_A[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_69
       (.I0(pc_current[20]),
        .O(ROM_A[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(Instr[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_70
       (.I0(pc_current[19]),
        .O(ROM_A[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_71
       (.I0(pc_current[18]),
        .O(ROM_A[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_72
       (.I0(pc_current[17]),
        .O(ROM_A[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_73
       (.I0(pc_current[16]),
        .O(ROM_A[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_74
       (.I0(pc_current[15]),
        .O(ROM_A[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_75
       (.I0(pc_current[14]),
        .O(ROM_A[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_76
       (.I0(pc_current[13]),
        .O(ROM_A[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_77
       (.I0(pc_current[12]),
        .O(ROM_A[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_78
       (.I0(pc_current[11]),
        .O(ROM_A[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_79
       (.I0(pc_current[10]),
        .O(ROM_A[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(Instr[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_80
       (.I0(pc_current[9]),
        .O(ROM_A[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_81
       (.I0(pc_current[8]),
        .O(ROM_A[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_82
       (.I0(pc_current[7]),
        .O(ROM_A[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_83
       (.I0(pc_current[6]),
        .O(ROM_A[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_84
       (.I0(pc_current[5]),
        .O(ROM_A[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_85
       (.I0(pc_current[4]),
        .O(ROM_A[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_86
       (.I0(pc_current[3]),
        .O(ROM_A[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_87
       (.I0(pc_current[2]),
        .O(ROM_A[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_88
       (.I0(pc_current[1]),
        .O(ROM_A[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_89
       (.I0(pc_current[0]),
        .O(pc_plus4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(Instr[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_90
       (.I0(pc_plus4[0]),
        .O(ROM_A[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_91
       (.I0(pc_jump[17]),
        .O(sign_imm[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_92
       (.I0(pc_jump[17]),
        .O(sign_imm[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_93
       (.I0(pc_jump[17]),
        .O(sign_imm[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_94
       (.I0(pc_jump[17]),
        .O(sign_imm[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_95
       (.I0(pc_jump[17]),
        .O(sign_imm[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_96
       (.I0(pc_jump[17]),
        .O(sign_imm[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_97
       (.I0(pc_jump[17]),
        .O(sign_imm[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_98
       (.I0(pc_jump[17]),
        .O(sign_imm[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_99
       (.I0(pc_jump[17]),
        .O(sign_imm[23]));
  IBUF i_arst_IBUF_inst
       (.I(i_arst),
        .O(i_arst_IBUF));
  BUFG i_clk_IBUF_BUFG_inst
       (.I(i_clk_IBUF),
        .O(i_clk_IBUF_BUFG));
  IBUF i_clk_IBUF_inst
       (.I(i_clk),
        .O(i_clk_IBUF));
  OBUF \o_instruction_OBUF[0]_inst 
       (.I(pc_jump[2]),
        .O(o_instruction[0]));
  OBUF \o_instruction_OBUF[10]_inst 
       (.I(pc_jump[12]),
        .O(o_instruction[10]));
  OBUF \o_instruction_OBUF[11]_inst 
       (.I(pc_jump[13]),
        .O(o_instruction[11]));
  OBUF \o_instruction_OBUF[12]_inst 
       (.I(pc_jump[14]),
        .O(o_instruction[12]));
  OBUF \o_instruction_OBUF[13]_inst 
       (.I(pc_jump[15]),
        .O(o_instruction[13]));
  OBUF \o_instruction_OBUF[14]_inst 
       (.I(pc_jump[16]),
        .O(o_instruction[14]));
  OBUF \o_instruction_OBUF[15]_inst 
       (.I(pc_jump[17]),
        .O(o_instruction[15]));
  OBUF \o_instruction_OBUF[16]_inst 
       (.I(REGF_A2[0]),
        .O(o_instruction[16]));
  OBUF \o_instruction_OBUF[17]_inst 
       (.I(REGF_A2[1]),
        .O(o_instruction[17]));
  OBUF \o_instruction_OBUF[18]_inst 
       (.I(REGF_A2[2]),
        .O(o_instruction[18]));
  OBUF \o_instruction_OBUF[19]_inst 
       (.I(REGF_A2[3]),
        .O(o_instruction[19]));
  OBUF \o_instruction_OBUF[1]_inst 
       (.I(pc_jump[3]),
        .O(o_instruction[1]));
  OBUF \o_instruction_OBUF[20]_inst 
       (.I(REGF_A2[4]),
        .O(o_instruction[20]));
  OBUF \o_instruction_OBUF[21]_inst 
       (.I(REGF_A1[0]),
        .O(o_instruction[21]));
  OBUF \o_instruction_OBUF[22]_inst 
       (.I(REGF_A1[1]),
        .O(o_instruction[22]));
  OBUF \o_instruction_OBUF[23]_inst 
       (.I(REGF_A1[2]),
        .O(o_instruction[23]));
  OBUF \o_instruction_OBUF[24]_inst 
       (.I(REGF_A1[3]),
        .O(o_instruction[24]));
  OBUF \o_instruction_OBUF[25]_inst 
       (.I(REGF_A1[4]),
        .O(o_instruction[25]));
  OBUF \o_instruction_OBUF[26]_inst 
       (.I(Instr[26]),
        .O(o_instruction[26]));
  OBUF \o_instruction_OBUF[27]_inst 
       (.I(Instr[27]),
        .O(o_instruction[27]));
  OBUF \o_instruction_OBUF[28]_inst 
       (.I(Instr[28]),
        .O(o_instruction[28]));
  OBUF \o_instruction_OBUF[29]_inst 
       (.I(Instr[29]),
        .O(o_instruction[29]));
  OBUF \o_instruction_OBUF[2]_inst 
       (.I(pc_jump[4]),
        .O(o_instruction[2]));
  OBUF \o_instruction_OBUF[30]_inst 
       (.I(Instr[30]),
        .O(o_instruction[30]));
  OBUF \o_instruction_OBUF[31]_inst 
       (.I(Instr[31]),
        .O(o_instruction[31]));
  OBUF \o_instruction_OBUF[3]_inst 
       (.I(pc_jump[5]),
        .O(o_instruction[3]));
  OBUF \o_instruction_OBUF[4]_inst 
       (.I(pc_jump[6]),
        .O(o_instruction[4]));
  OBUF \o_instruction_OBUF[5]_inst 
       (.I(pc_jump[7]),
        .O(o_instruction[5]));
  OBUF \o_instruction_OBUF[6]_inst 
       (.I(pc_jump[8]),
        .O(o_instruction[6]));
  OBUF \o_instruction_OBUF[7]_inst 
       (.I(pc_jump[9]),
        .O(o_instruction[7]));
  OBUF \o_instruction_OBUF[8]_inst 
       (.I(pc_jump[10]),
        .O(o_instruction[8]));
  OBUF \o_instruction_OBUF[9]_inst 
       (.I(pc_jump[11]),
        .O(o_instruction[9]));
  CARRY4 pc_branch_inferred_i_1
       (.CI(pc_branch_inferred_i_2_n_0),
        .CO({NLW_pc_branch_inferred_i_1_CO_UNCONNECTED[3],pc_branch_inferred_i_1_n_1,pc_branch_inferred_i_1_n_2,pc_branch_inferred_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,pc_jump[30:28]}),
        .O(pc_branch[31:28]),
        .S({pc_branch_inferred_i_9_n_0,pc_branch_inferred_i_10_n_0,pc_branch_inferred_i_11_n_0,pc_branch_inferred_i_12_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    pc_branch_inferred_i_10
       (.I0(pc_jump[30]),
        .I1(shifted_sign_imm[30]),
        .O(pc_branch_inferred_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pc_branch_inferred_i_11
       (.I0(pc_jump[29]),
        .I1(shifted_sign_imm[29]),
        .O(pc_branch_inferred_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pc_branch_inferred_i_12
       (.I0(pc_jump[28]),
        .I1(shifted_sign_imm[28]),
        .O(pc_branch_inferred_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pc_branch_inferred_i_13
       (.I0(pc_plus4[27]),
        .I1(shifted_sign_imm[27]),
        .O(pc_branch_inferred_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pc_branch_inferred_i_14
       (.I0(pc_plus4[26]),
        .I1(shifted_sign_imm[26]),
        .O(pc_branch_inferred_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pc_branch_inferred_i_15
       (.I0(pc_plus4[25]),
        .I1(shifted_sign_imm[25]),
        .O(pc_branch_inferred_i_15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pc_branch_inferred_i_16
       (.I0(pc_plus4[24]),
        .I1(shifted_sign_imm[24]),
        .O(pc_branch_inferred_i_16_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pc_branch_inferred_i_17
       (.I0(pc_plus4[23]),
        .I1(shifted_sign_imm[23]),
        .O(pc_branch_inferred_i_17_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pc_branch_inferred_i_18
       (.I0(pc_plus4[22]),
        .I1(shifted_sign_imm[22]),
        .O(pc_branch_inferred_i_18_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pc_branch_inferred_i_19
       (.I0(pc_plus4[21]),
        .I1(shifted_sign_imm[21]),
        .O(pc_branch_inferred_i_19_n_0));
  CARRY4 pc_branch_inferred_i_2
       (.CI(pc_branch_inferred_i_3_n_0),
        .CO({pc_branch_inferred_i_2_n_0,pc_branch_inferred_i_2_n_1,pc_branch_inferred_i_2_n_2,pc_branch_inferred_i_2_n_3}),
        .CYINIT(1'b0),
        .DI(pc_plus4[27:24]),
        .O(pc_branch[27:24]),
        .S({pc_branch_inferred_i_13_n_0,pc_branch_inferred_i_14_n_0,pc_branch_inferred_i_15_n_0,pc_branch_inferred_i_16_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    pc_branch_inferred_i_20
       (.I0(pc_plus4[20]),
        .I1(shifted_sign_imm[20]),
        .O(pc_branch_inferred_i_20_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pc_branch_inferred_i_21
       (.I0(pc_plus4[19]),
        .I1(shifted_sign_imm[19]),
        .O(pc_branch_inferred_i_21_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pc_branch_inferred_i_22
       (.I0(pc_plus4[18]),
        .I1(shifted_sign_imm[18]),
        .O(pc_branch_inferred_i_22_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pc_branch_inferred_i_23
       (.I0(pc_plus4[17]),
        .I1(shifted_sign_imm[17]),
        .O(pc_branch_inferred_i_23_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pc_branch_inferred_i_24
       (.I0(pc_plus4[16]),
        .I1(shifted_sign_imm[16]),
        .O(pc_branch_inferred_i_24_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pc_branch_inferred_i_25
       (.I0(pc_plus4[15]),
        .I1(shifted_sign_imm[15]),
        .O(pc_branch_inferred_i_25_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pc_branch_inferred_i_26
       (.I0(pc_plus4[14]),
        .I1(shifted_sign_imm[14]),
        .O(pc_branch_inferred_i_26_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pc_branch_inferred_i_27
       (.I0(pc_plus4[13]),
        .I1(shifted_sign_imm[13]),
        .O(pc_branch_inferred_i_27_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pc_branch_inferred_i_28
       (.I0(pc_plus4[12]),
        .I1(shifted_sign_imm[12]),
        .O(pc_branch_inferred_i_28_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pc_branch_inferred_i_29
       (.I0(pc_plus4[11]),
        .I1(shifted_sign_imm[11]),
        .O(pc_branch_inferred_i_29_n_0));
  CARRY4 pc_branch_inferred_i_3
       (.CI(pc_branch_inferred_i_4_n_0),
        .CO({pc_branch_inferred_i_3_n_0,pc_branch_inferred_i_3_n_1,pc_branch_inferred_i_3_n_2,pc_branch_inferred_i_3_n_3}),
        .CYINIT(1'b0),
        .DI(pc_plus4[23:20]),
        .O(pc_branch[23:20]),
        .S({pc_branch_inferred_i_17_n_0,pc_branch_inferred_i_18_n_0,pc_branch_inferred_i_19_n_0,pc_branch_inferred_i_20_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    pc_branch_inferred_i_30
       (.I0(pc_plus4[10]),
        .I1(shifted_sign_imm[10]),
        .O(pc_branch_inferred_i_30_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pc_branch_inferred_i_31
       (.I0(pc_plus4[9]),
        .I1(shifted_sign_imm[9]),
        .O(pc_branch_inferred_i_31_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pc_branch_inferred_i_32
       (.I0(pc_plus4[8]),
        .I1(shifted_sign_imm[8]),
        .O(pc_branch_inferred_i_32_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pc_branch_inferred_i_33
       (.I0(pc_plus4[7]),
        .I1(shifted_sign_imm[7]),
        .O(pc_branch_inferred_i_33_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pc_branch_inferred_i_34
       (.I0(pc_plus4[6]),
        .I1(shifted_sign_imm[6]),
        .O(pc_branch_inferred_i_34_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pc_branch_inferred_i_35
       (.I0(pc_plus4[5]),
        .I1(shifted_sign_imm[5]),
        .O(pc_branch_inferred_i_35_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pc_branch_inferred_i_36
       (.I0(pc_plus4[4]),
        .I1(shifted_sign_imm[4]),
        .O(pc_branch_inferred_i_36_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pc_branch_inferred_i_37
       (.I0(pc_plus4[3]),
        .I1(shifted_sign_imm[3]),
        .O(pc_branch_inferred_i_37_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pc_branch_inferred_i_38
       (.I0(pc_plus4[2]),
        .I1(shifted_sign_imm[2]),
        .O(pc_branch_inferred_i_38_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pc_branch_inferred_i_39
       (.I0(pc_plus4[1]),
        .I1(shifted_sign_imm[1]),
        .O(pc_branch_inferred_i_39_n_0));
  CARRY4 pc_branch_inferred_i_4
       (.CI(pc_branch_inferred_i_5_n_0),
        .CO({pc_branch_inferred_i_4_n_0,pc_branch_inferred_i_4_n_1,pc_branch_inferred_i_4_n_2,pc_branch_inferred_i_4_n_3}),
        .CYINIT(1'b0),
        .DI(pc_plus4[19:16]),
        .O(pc_branch[19:16]),
        .S({pc_branch_inferred_i_21_n_0,pc_branch_inferred_i_22_n_0,pc_branch_inferred_i_23_n_0,pc_branch_inferred_i_24_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    pc_branch_inferred_i_40
       (.I0(pc_plus4[0]),
        .I1(shifted_sign_imm[0]),
        .O(pc_branch_inferred_i_40_n_0));
  CARRY4 pc_branch_inferred_i_5
       (.CI(pc_branch_inferred_i_6_n_0),
        .CO({pc_branch_inferred_i_5_n_0,pc_branch_inferred_i_5_n_1,pc_branch_inferred_i_5_n_2,pc_branch_inferred_i_5_n_3}),
        .CYINIT(1'b0),
        .DI(pc_plus4[15:12]),
        .O(pc_branch[15:12]),
        .S({pc_branch_inferred_i_25_n_0,pc_branch_inferred_i_26_n_0,pc_branch_inferred_i_27_n_0,pc_branch_inferred_i_28_n_0}));
  CARRY4 pc_branch_inferred_i_6
       (.CI(pc_branch_inferred_i_7_n_0),
        .CO({pc_branch_inferred_i_6_n_0,pc_branch_inferred_i_6_n_1,pc_branch_inferred_i_6_n_2,pc_branch_inferred_i_6_n_3}),
        .CYINIT(1'b0),
        .DI(pc_plus4[11:8]),
        .O(pc_branch[11:8]),
        .S({pc_branch_inferred_i_29_n_0,pc_branch_inferred_i_30_n_0,pc_branch_inferred_i_31_n_0,pc_branch_inferred_i_32_n_0}));
  CARRY4 pc_branch_inferred_i_7
       (.CI(pc_branch_inferred_i_8_n_0),
        .CO({pc_branch_inferred_i_7_n_0,pc_branch_inferred_i_7_n_1,pc_branch_inferred_i_7_n_2,pc_branch_inferred_i_7_n_3}),
        .CYINIT(1'b0),
        .DI(pc_plus4[7:4]),
        .O(pc_branch[7:4]),
        .S({pc_branch_inferred_i_33_n_0,pc_branch_inferred_i_34_n_0,pc_branch_inferred_i_35_n_0,pc_branch_inferred_i_36_n_0}));
  CARRY4 pc_branch_inferred_i_8
       (.CI(1'b0),
        .CO({pc_branch_inferred_i_8_n_0,pc_branch_inferred_i_8_n_1,pc_branch_inferred_i_8_n_2,pc_branch_inferred_i_8_n_3}),
        .CYINIT(1'b0),
        .DI(pc_plus4[3:0]),
        .O(pc_branch[3:0]),
        .S({pc_branch_inferred_i_37_n_0,pc_branch_inferred_i_38_n_0,pc_branch_inferred_i_39_n_0,pc_branch_inferred_i_40_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    pc_branch_inferred_i_9
       (.I0(pc_jump[31]),
        .I1(shifted_sign_imm[31]),
        .O(pc_branch_inferred_i_9_n_0));
  PC pc_inst
       (.AR(i_arst_IBUF),
        .D(pc_next),
        .Q(pc_current),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    pc_next_inferred_i_1
       (.I0(pc_jump[31]),
        .I1(Jump),
        .I2(pc_branch[31]),
        .I3(PCSrc),
        .I4(pc_jump[31]),
        .O(pc_next[31]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    pc_next_inferred_i_10
       (.I0(pc_jump[22]),
        .I1(Jump),
        .I2(pc_branch[22]),
        .I3(PCSrc),
        .I4(pc_plus4[22]),
        .O(pc_next[22]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    pc_next_inferred_i_11
       (.I0(pc_jump[21]),
        .I1(Jump),
        .I2(pc_branch[21]),
        .I3(PCSrc),
        .I4(pc_plus4[21]),
        .O(pc_next[21]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    pc_next_inferred_i_12
       (.I0(pc_jump[20]),
        .I1(Jump),
        .I2(pc_branch[20]),
        .I3(PCSrc),
        .I4(pc_plus4[20]),
        .O(pc_next[20]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    pc_next_inferred_i_13
       (.I0(pc_jump[19]),
        .I1(Jump),
        .I2(pc_branch[19]),
        .I3(PCSrc),
        .I4(pc_plus4[19]),
        .O(pc_next[19]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    pc_next_inferred_i_14
       (.I0(pc_jump[18]),
        .I1(Jump),
        .I2(pc_branch[18]),
        .I3(PCSrc),
        .I4(pc_plus4[18]),
        .O(pc_next[18]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    pc_next_inferred_i_15
       (.I0(pc_jump[17]),
        .I1(Jump),
        .I2(pc_branch[17]),
        .I3(PCSrc),
        .I4(pc_plus4[17]),
        .O(pc_next[17]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    pc_next_inferred_i_16
       (.I0(pc_jump[16]),
        .I1(Jump),
        .I2(pc_branch[16]),
        .I3(PCSrc),
        .I4(pc_plus4[16]),
        .O(pc_next[16]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    pc_next_inferred_i_17
       (.I0(pc_jump[15]),
        .I1(Jump),
        .I2(pc_branch[15]),
        .I3(PCSrc),
        .I4(pc_plus4[15]),
        .O(pc_next[15]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    pc_next_inferred_i_18
       (.I0(pc_jump[14]),
        .I1(Jump),
        .I2(pc_branch[14]),
        .I3(PCSrc),
        .I4(pc_plus4[14]),
        .O(pc_next[14]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    pc_next_inferred_i_19
       (.I0(pc_jump[13]),
        .I1(Jump),
        .I2(pc_branch[13]),
        .I3(PCSrc),
        .I4(pc_plus4[13]),
        .O(pc_next[13]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    pc_next_inferred_i_2
       (.I0(pc_jump[30]),
        .I1(Jump),
        .I2(pc_branch[30]),
        .I3(PCSrc),
        .I4(pc_jump[30]),
        .O(pc_next[30]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    pc_next_inferred_i_20
       (.I0(pc_jump[12]),
        .I1(Jump),
        .I2(pc_branch[12]),
        .I3(PCSrc),
        .I4(pc_plus4[12]),
        .O(pc_next[12]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    pc_next_inferred_i_21
       (.I0(pc_jump[11]),
        .I1(Jump),
        .I2(pc_branch[11]),
        .I3(PCSrc),
        .I4(pc_plus4[11]),
        .O(pc_next[11]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    pc_next_inferred_i_22
       (.I0(pc_jump[10]),
        .I1(Jump),
        .I2(pc_branch[10]),
        .I3(PCSrc),
        .I4(pc_plus4[10]),
        .O(pc_next[10]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    pc_next_inferred_i_23
       (.I0(pc_jump[9]),
        .I1(Jump),
        .I2(pc_branch[9]),
        .I3(PCSrc),
        .I4(pc_plus4[9]),
        .O(pc_next[9]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    pc_next_inferred_i_24
       (.I0(pc_jump[8]),
        .I1(Jump),
        .I2(pc_branch[8]),
        .I3(PCSrc),
        .I4(pc_plus4[8]),
        .O(pc_next[8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    pc_next_inferred_i_25
       (.I0(pc_jump[7]),
        .I1(Jump),
        .I2(pc_branch[7]),
        .I3(PCSrc),
        .I4(pc_plus4[7]),
        .O(pc_next[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    pc_next_inferred_i_26
       (.I0(pc_jump[6]),
        .I1(Jump),
        .I2(pc_branch[6]),
        .I3(PCSrc),
        .I4(pc_plus4[6]),
        .O(pc_next[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    pc_next_inferred_i_27
       (.I0(pc_jump[5]),
        .I1(Jump),
        .I2(pc_branch[5]),
        .I3(PCSrc),
        .I4(pc_plus4[5]),
        .O(pc_next[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    pc_next_inferred_i_28
       (.I0(pc_jump[4]),
        .I1(Jump),
        .I2(pc_branch[4]),
        .I3(PCSrc),
        .I4(pc_plus4[4]),
        .O(pc_next[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    pc_next_inferred_i_29
       (.I0(pc_jump[3]),
        .I1(Jump),
        .I2(pc_branch[3]),
        .I3(PCSrc),
        .I4(pc_plus4[3]),
        .O(pc_next[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    pc_next_inferred_i_3
       (.I0(pc_jump[29]),
        .I1(Jump),
        .I2(pc_branch[29]),
        .I3(PCSrc),
        .I4(pc_jump[29]),
        .O(pc_next[29]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    pc_next_inferred_i_30
       (.I0(pc_jump[2]),
        .I1(Jump),
        .I2(pc_branch[2]),
        .I3(PCSrc),
        .I4(pc_plus4[2]),
        .O(pc_next[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    pc_next_inferred_i_31
       (.I0(pc_jump[1]),
        .I1(Jump),
        .I2(pc_branch[1]),
        .I3(PCSrc),
        .I4(pc_plus4[1]),
        .O(pc_next[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    pc_next_inferred_i_32
       (.I0(pc_jump[0]),
        .I1(Jump),
        .I2(pc_branch[0]),
        .I3(PCSrc),
        .I4(pc_plus4[0]),
        .O(pc_next[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    pc_next_inferred_i_4
       (.I0(pc_jump[28]),
        .I1(Jump),
        .I2(pc_branch[28]),
        .I3(PCSrc),
        .I4(pc_jump[28]),
        .O(pc_next[28]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    pc_next_inferred_i_5
       (.I0(pc_jump[27]),
        .I1(Jump),
        .I2(pc_branch[27]),
        .I3(PCSrc),
        .I4(pc_plus4[27]),
        .O(pc_next[27]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    pc_next_inferred_i_6
       (.I0(pc_jump[26]),
        .I1(Jump),
        .I2(pc_branch[26]),
        .I3(PCSrc),
        .I4(pc_plus4[26]),
        .O(pc_next[26]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    pc_next_inferred_i_7
       (.I0(pc_jump[25]),
        .I1(Jump),
        .I2(pc_branch[25]),
        .I3(PCSrc),
        .I4(pc_plus4[25]),
        .O(pc_next[25]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    pc_next_inferred_i_8
       (.I0(pc_jump[24]),
        .I1(Jump),
        .I2(pc_branch[24]),
        .I3(PCSrc),
        .I4(pc_plus4[24]),
        .O(pc_next[24]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    pc_next_inferred_i_9
       (.I0(pc_jump[23]),
        .I1(Jump),
        .I2(pc_branch[23]),
        .I3(PCSrc),
        .I4(pc_plus4[23]),
        .O(pc_next[23]));
  CARRY4 pc_plus4_inferred_i_1
       (.CI(pc_plus4_inferred_i_2_n_0),
        .CO({NLW_pc_plus4_inferred_i_1_CO_UNCONNECTED[3:2],pc_plus4_inferred_i_1_n_2,pc_plus4_inferred_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_pc_plus4_inferred_i_1_O_UNCONNECTED[3],pc_plus4[31:29]}),
        .S({1'b0,ROM_A[31:29]}));
  CARRY4 pc_plus4_inferred_i_2
       (.CI(pc_plus4_inferred_i_3_n_0),
        .CO({pc_plus4_inferred_i_2_n_0,pc_plus4_inferred_i_2_n_1,pc_plus4_inferred_i_2_n_2,pc_plus4_inferred_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_plus4[28:25]),
        .S(ROM_A[28:25]));
  CARRY4 pc_plus4_inferred_i_3
       (.CI(pc_plus4_inferred_i_4_n_0),
        .CO({pc_plus4_inferred_i_3_n_0,pc_plus4_inferred_i_3_n_1,pc_plus4_inferred_i_3_n_2,pc_plus4_inferred_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_plus4[24:21]),
        .S(ROM_A[24:21]));
  CARRY4 pc_plus4_inferred_i_4
       (.CI(pc_plus4_inferred_i_5_n_0),
        .CO({pc_plus4_inferred_i_4_n_0,pc_plus4_inferred_i_4_n_1,pc_plus4_inferred_i_4_n_2,pc_plus4_inferred_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_plus4[20:17]),
        .S(ROM_A[20:17]));
  CARRY4 pc_plus4_inferred_i_5
       (.CI(pc_plus4_inferred_i_6_n_0),
        .CO({pc_plus4_inferred_i_5_n_0,pc_plus4_inferred_i_5_n_1,pc_plus4_inferred_i_5_n_2,pc_plus4_inferred_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_plus4[16:13]),
        .S(ROM_A[16:13]));
  CARRY4 pc_plus4_inferred_i_6
       (.CI(pc_plus4_inferred_i_7_n_0),
        .CO({pc_plus4_inferred_i_6_n_0,pc_plus4_inferred_i_6_n_1,pc_plus4_inferred_i_6_n_2,pc_plus4_inferred_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_plus4[12:9]),
        .S(ROM_A[12:9]));
  CARRY4 pc_plus4_inferred_i_7
       (.CI(pc_plus4_inferred_i_8_n_0),
        .CO({pc_plus4_inferred_i_7_n_0,pc_plus4_inferred_i_7_n_1,pc_plus4_inferred_i_7_n_2,pc_plus4_inferred_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_plus4[8:5]),
        .S(ROM_A[8:5]));
  CARRY4 pc_plus4_inferred_i_8
       (.CI(1'b0),
        .CO({pc_plus4_inferred_i_8_n_0,pc_plus4_inferred_i_8_n_1,pc_plus4_inferred_i_8_n_2,pc_plus4_inferred_i_8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,ROM_A[2],1'b0}),
        .O(pc_plus4[4:1]),
        .S({ROM_A[4:3],pc_plus4_inferred_i_9_n_0,ROM_A[1]}));
  LUT1 #(
    .INIT(2'h1)) 
    pc_plus4_inferred_i_9
       (.I0(ROM_A[2]),
        .O(pc_plus4_inferred_i_9_n_0));
  registers reg_file_inst
       (.I4(RegWrite),
        .REGF_RD2(REGF_RD2),
        .RegDst_inferred_i_1(REGF_A3),
        .UNCONN_IN(REGF_A2),
        .i_clk(REGF_WD3),
        .i_clk_IBUF_BUFG(i_clk_IBUF_BUFG),
        .in0(REGF_RD1),
        .out(REGF_A1));
  LUT3 #(
    .INIT(8'hAC)) 
    result_inferred_i_1
       (.I0(RAM_RD[31]),
        .I1(RAM_A[31]),
        .I2(MemtoReg),
        .O(result[31]));
  LUT3 #(
    .INIT(8'hAC)) 
    result_inferred_i_10
       (.I0(RAM_RD[22]),
        .I1(RAM_A[22]),
        .I2(MemtoReg),
        .O(result[22]));
  LUT3 #(
    .INIT(8'hAC)) 
    result_inferred_i_11
       (.I0(RAM_RD[21]),
        .I1(RAM_A[21]),
        .I2(MemtoReg),
        .O(result[21]));
  LUT3 #(
    .INIT(8'hAC)) 
    result_inferred_i_12
       (.I0(RAM_RD[20]),
        .I1(RAM_A[20]),
        .I2(MemtoReg),
        .O(result[20]));
  LUT3 #(
    .INIT(8'hAC)) 
    result_inferred_i_13
       (.I0(RAM_RD[19]),
        .I1(RAM_A[19]),
        .I2(MemtoReg),
        .O(result[19]));
  LUT3 #(
    .INIT(8'hAC)) 
    result_inferred_i_14
       (.I0(RAM_RD[18]),
        .I1(RAM_A[18]),
        .I2(MemtoReg),
        .O(result[18]));
  LUT3 #(
    .INIT(8'hAC)) 
    result_inferred_i_15
       (.I0(RAM_RD[17]),
        .I1(RAM_A[17]),
        .I2(MemtoReg),
        .O(result[17]));
  LUT3 #(
    .INIT(8'hAC)) 
    result_inferred_i_16
       (.I0(RAM_RD[16]),
        .I1(RAM_A[16]),
        .I2(MemtoReg),
        .O(result[16]));
  LUT3 #(
    .INIT(8'hAC)) 
    result_inferred_i_17
       (.I0(RAM_RD[15]),
        .I1(RAM_A[15]),
        .I2(MemtoReg),
        .O(result[15]));
  LUT3 #(
    .INIT(8'hAC)) 
    result_inferred_i_18
       (.I0(RAM_RD[14]),
        .I1(RAM_A[14]),
        .I2(MemtoReg),
        .O(result[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    result_inferred_i_19
       (.I0(RAM_RD[13]),
        .I1(RAM_A[13]),
        .I2(MemtoReg),
        .O(result[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    result_inferred_i_2
       (.I0(RAM_RD[30]),
        .I1(RAM_A[30]),
        .I2(MemtoReg),
        .O(result[30]));
  LUT3 #(
    .INIT(8'hAC)) 
    result_inferred_i_20
       (.I0(RAM_RD[12]),
        .I1(RAM_A[12]),
        .I2(MemtoReg),
        .O(result[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    result_inferred_i_21
       (.I0(RAM_RD[11]),
        .I1(RAM_A[11]),
        .I2(MemtoReg),
        .O(result[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    result_inferred_i_22
       (.I0(RAM_RD[10]),
        .I1(RAM_A[10]),
        .I2(MemtoReg),
        .O(result[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    result_inferred_i_23
       (.I0(RAM_RD[9]),
        .I1(RAM_A[9]),
        .I2(MemtoReg),
        .O(result[9]));
  LUT3 #(
    .INIT(8'hAC)) 
    result_inferred_i_24
       (.I0(RAM_RD[8]),
        .I1(RAM_A[8]),
        .I2(MemtoReg),
        .O(result[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    result_inferred_i_25
       (.I0(RAM_RD[7]),
        .I1(RAM_A[7]),
        .I2(MemtoReg),
        .O(result[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    result_inferred_i_26
       (.I0(RAM_RD[6]),
        .I1(RAM_A[6]),
        .I2(MemtoReg),
        .O(result[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    result_inferred_i_27
       (.I0(RAM_RD[5]),
        .I1(RAM_A[5]),
        .I2(MemtoReg),
        .O(result[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    result_inferred_i_28
       (.I0(RAM_RD[4]),
        .I1(RAM_A[4]),
        .I2(MemtoReg),
        .O(result[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    result_inferred_i_29
       (.I0(RAM_RD[3]),
        .I1(RAM_A[3]),
        .I2(MemtoReg),
        .O(result[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    result_inferred_i_3
       (.I0(RAM_RD[29]),
        .I1(RAM_A[29]),
        .I2(MemtoReg),
        .O(result[29]));
  LUT3 #(
    .INIT(8'hAC)) 
    result_inferred_i_30
       (.I0(RAM_RD[2]),
        .I1(RAM_A[2]),
        .I2(MemtoReg),
        .O(result[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    result_inferred_i_31
       (.I0(RAM_RD[1]),
        .I1(RAM_A[1]),
        .I2(MemtoReg),
        .O(result[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    result_inferred_i_32
       (.I0(RAM_RD[0]),
        .I1(RAM_A[0]),
        .I2(MemtoReg),
        .O(result[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    result_inferred_i_4
       (.I0(RAM_RD[28]),
        .I1(RAM_A[28]),
        .I2(MemtoReg),
        .O(result[28]));
  LUT3 #(
    .INIT(8'hAC)) 
    result_inferred_i_5
       (.I0(RAM_RD[27]),
        .I1(RAM_A[27]),
        .I2(MemtoReg),
        .O(result[27]));
  LUT3 #(
    .INIT(8'hAC)) 
    result_inferred_i_6
       (.I0(RAM_RD[26]),
        .I1(RAM_A[26]),
        .I2(MemtoReg),
        .O(result[26]));
  LUT3 #(
    .INIT(8'hAC)) 
    result_inferred_i_7
       (.I0(RAM_RD[25]),
        .I1(RAM_A[25]),
        .I2(MemtoReg),
        .O(result[25]));
  LUT3 #(
    .INIT(8'hAC)) 
    result_inferred_i_8
       (.I0(RAM_RD[24]),
        .I1(RAM_A[24]),
        .I2(MemtoReg),
        .O(result[24]));
  LUT3 #(
    .INIT(8'hAC)) 
    result_inferred_i_9
       (.I0(RAM_RD[23]),
        .I1(RAM_A[23]),
        .I2(MemtoReg),
        .O(result[23]));
  LUT3 #(
    .INIT(8'hAC)) 
    srcB_inferred_i_1
       (.I0(sign_imm[31]),
        .I1(RAM_WD[31]),
        .I2(ALUSrc),
        .O(srcB[31]));
  LUT3 #(
    .INIT(8'hAC)) 
    srcB_inferred_i_10
       (.I0(shifted_sign_imm[24]),
        .I1(RAM_WD[22]),
        .I2(ALUSrc),
        .O(srcB[22]));
  LUT3 #(
    .INIT(8'hAC)) 
    srcB_inferred_i_11
       (.I0(shifted_sign_imm[23]),
        .I1(RAM_WD[21]),
        .I2(ALUSrc),
        .O(srcB[21]));
  LUT3 #(
    .INIT(8'hAC)) 
    srcB_inferred_i_12
       (.I0(shifted_sign_imm[22]),
        .I1(RAM_WD[20]),
        .I2(ALUSrc),
        .O(srcB[20]));
  LUT3 #(
    .INIT(8'hAC)) 
    srcB_inferred_i_13
       (.I0(shifted_sign_imm[21]),
        .I1(RAM_WD[19]),
        .I2(ALUSrc),
        .O(srcB[19]));
  LUT3 #(
    .INIT(8'hAC)) 
    srcB_inferred_i_14
       (.I0(shifted_sign_imm[20]),
        .I1(RAM_WD[18]),
        .I2(ALUSrc),
        .O(srcB[18]));
  LUT3 #(
    .INIT(8'hAC)) 
    srcB_inferred_i_15
       (.I0(shifted_sign_imm[19]),
        .I1(RAM_WD[17]),
        .I2(ALUSrc),
        .O(srcB[17]));
  LUT3 #(
    .INIT(8'hAC)) 
    srcB_inferred_i_16
       (.I0(shifted_sign_imm[18]),
        .I1(RAM_WD[16]),
        .I2(ALUSrc),
        .O(srcB[16]));
  LUT3 #(
    .INIT(8'hAC)) 
    srcB_inferred_i_17
       (.I0(shifted_sign_imm[17]),
        .I1(RAM_WD[15]),
        .I2(ALUSrc),
        .O(srcB[15]));
  LUT3 #(
    .INIT(8'hAC)) 
    srcB_inferred_i_18
       (.I0(shifted_sign_imm[16]),
        .I1(RAM_WD[14]),
        .I2(ALUSrc),
        .O(srcB[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    srcB_inferred_i_19
       (.I0(shifted_sign_imm[15]),
        .I1(RAM_WD[13]),
        .I2(ALUSrc),
        .O(srcB[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    srcB_inferred_i_2
       (.I0(sign_imm[30]),
        .I1(RAM_WD[30]),
        .I2(ALUSrc),
        .O(srcB[30]));
  LUT3 #(
    .INIT(8'hAC)) 
    srcB_inferred_i_20
       (.I0(shifted_sign_imm[14]),
        .I1(RAM_WD[12]),
        .I2(ALUSrc),
        .O(srcB[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    srcB_inferred_i_21
       (.I0(shifted_sign_imm[13]),
        .I1(RAM_WD[11]),
        .I2(ALUSrc),
        .O(srcB[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    srcB_inferred_i_22
       (.I0(shifted_sign_imm[12]),
        .I1(RAM_WD[10]),
        .I2(ALUSrc),
        .O(srcB[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    srcB_inferred_i_23
       (.I0(shifted_sign_imm[11]),
        .I1(RAM_WD[9]),
        .I2(ALUSrc),
        .O(srcB[9]));
  LUT3 #(
    .INIT(8'hAC)) 
    srcB_inferred_i_24
       (.I0(shifted_sign_imm[10]),
        .I1(RAM_WD[8]),
        .I2(ALUSrc),
        .O(srcB[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    srcB_inferred_i_25
       (.I0(shifted_sign_imm[9]),
        .I1(RAM_WD[7]),
        .I2(ALUSrc),
        .O(srcB[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    srcB_inferred_i_26
       (.I0(shifted_sign_imm[8]),
        .I1(RAM_WD[6]),
        .I2(ALUSrc),
        .O(srcB[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    srcB_inferred_i_27
       (.I0(shifted_sign_imm[7]),
        .I1(RAM_WD[5]),
        .I2(ALUSrc),
        .O(srcB[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    srcB_inferred_i_28
       (.I0(shifted_sign_imm[6]),
        .I1(RAM_WD[4]),
        .I2(ALUSrc),
        .O(srcB[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    srcB_inferred_i_29
       (.I0(shifted_sign_imm[5]),
        .I1(RAM_WD[3]),
        .I2(ALUSrc),
        .O(srcB[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    srcB_inferred_i_3
       (.I0(shifted_sign_imm[31]),
        .I1(RAM_WD[29]),
        .I2(ALUSrc),
        .O(srcB[29]));
  LUT3 #(
    .INIT(8'hAC)) 
    srcB_inferred_i_30
       (.I0(shifted_sign_imm[4]),
        .I1(RAM_WD[2]),
        .I2(ALUSrc),
        .O(srcB[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    srcB_inferred_i_31
       (.I0(shifted_sign_imm[3]),
        .I1(RAM_WD[1]),
        .I2(ALUSrc),
        .O(srcB[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    srcB_inferred_i_32
       (.I0(shifted_sign_imm[2]),
        .I1(RAM_WD[0]),
        .I2(ALUSrc),
        .O(srcB[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    srcB_inferred_i_4
       (.I0(shifted_sign_imm[30]),
        .I1(RAM_WD[28]),
        .I2(ALUSrc),
        .O(srcB[28]));
  LUT3 #(
    .INIT(8'hAC)) 
    srcB_inferred_i_5
       (.I0(shifted_sign_imm[29]),
        .I1(RAM_WD[27]),
        .I2(ALUSrc),
        .O(srcB[27]));
  LUT3 #(
    .INIT(8'hAC)) 
    srcB_inferred_i_6
       (.I0(shifted_sign_imm[28]),
        .I1(RAM_WD[26]),
        .I2(ALUSrc),
        .O(srcB[26]));
  LUT3 #(
    .INIT(8'hAC)) 
    srcB_inferred_i_7
       (.I0(shifted_sign_imm[27]),
        .I1(RAM_WD[25]),
        .I2(ALUSrc),
        .O(srcB[25]));
  LUT3 #(
    .INIT(8'hAC)) 
    srcB_inferred_i_8
       (.I0(shifted_sign_imm[26]),
        .I1(RAM_WD[24]),
        .I2(ALUSrc),
        .O(srcB[24]));
  LUT3 #(
    .INIT(8'hAC)) 
    srcB_inferred_i_9
       (.I0(shifted_sign_imm[25]),
        .I1(RAM_WD[23]),
        .I2(ALUSrc),
        .O(srcB[23]));
endmodule

module PC
   (Q,
    D,
    i_clk_IBUF_BUFG,
    AR);
  output [31:0]Q;
  input [31:0]D;
  input i_clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [31:0]D;
  wire [31:0]Q;
  wire i_clk_IBUF_BUFG;

  FDCE #(
    .INIT(1'b0)) 
    \PCout_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \PCout_reg[10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \PCout_reg[11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \PCout_reg[12] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \PCout_reg[13] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \PCout_reg[14] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \PCout_reg[15] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \PCout_reg[16] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \PCout_reg[17] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \PCout_reg[18] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \PCout_reg[19] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \PCout_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \PCout_reg[20] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \PCout_reg[21] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \PCout_reg[22] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \PCout_reg[23] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \PCout_reg[24] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \PCout_reg[25] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \PCout_reg[26] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[26]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \PCout_reg[27] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[27]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \PCout_reg[28] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[28]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \PCout_reg[29] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[29]),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \PCout_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \PCout_reg[30] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[30]),
        .Q(Q[30]));
  FDCE #(
    .INIT(1'b0)) 
    \PCout_reg[31] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[31]),
        .Q(Q[31]));
  FDCE #(
    .INIT(1'b0)) 
    \PCout_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \PCout_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \PCout_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \PCout_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \PCout_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \PCout_reg[8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \PCout_reg[9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[9]),
        .Q(Q[9]));
endmodule

module data_memory
   (in0,
    out,
    i_clk_IBUF_BUFG,
    write_data,
    i_clk);
  output [31:0]in0;
  input out;
  input i_clk_IBUF_BUFG;
  input [31:0]write_data;
  input [29:0]i_clk;

  wire RAM_RD_inferred_i_33_n_0;
  wire RAM_RD_inferred_i_34_n_0;
  wire RAM_RD_inferred_i_35_n_0;
  wire RAM_RD_inferred_i_36_n_0;
  wire [29:0]i_clk;
  wire i_clk_IBUF_BUFG;
  wire [31:0]in0;
  wire out;
  wire p_0_in0_out;
  wire [31:0]read_data0;
  wire [31:0]write_data;

  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_RD_inferred_i_1
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(read_data0[31]),
        .O(in0[31]));
  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_RD_inferred_i_10
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(read_data0[22]),
        .O(in0[22]));
  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_RD_inferred_i_11
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(read_data0[21]),
        .O(in0[21]));
  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_RD_inferred_i_12
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(read_data0[20]),
        .O(in0[20]));
  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_RD_inferred_i_13
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(read_data0[19]),
        .O(in0[19]));
  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_RD_inferred_i_14
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(read_data0[18]),
        .O(in0[18]));
  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_RD_inferred_i_15
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(read_data0[17]),
        .O(in0[17]));
  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_RD_inferred_i_16
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(read_data0[16]),
        .O(in0[16]));
  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_RD_inferred_i_17
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(read_data0[15]),
        .O(in0[15]));
  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_RD_inferred_i_18
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(read_data0[14]),
        .O(in0[14]));
  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_RD_inferred_i_19
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(read_data0[13]),
        .O(in0[13]));
  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_RD_inferred_i_2
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(read_data0[30]),
        .O(in0[30]));
  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_RD_inferred_i_20
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(read_data0[12]),
        .O(in0[12]));
  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_RD_inferred_i_21
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(read_data0[11]),
        .O(in0[11]));
  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_RD_inferred_i_22
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(read_data0[10]),
        .O(in0[10]));
  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_RD_inferred_i_23
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(read_data0[9]),
        .O(in0[9]));
  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_RD_inferred_i_24
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(read_data0[8]),
        .O(in0[8]));
  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_RD_inferred_i_25
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(read_data0[7]),
        .O(in0[7]));
  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_RD_inferred_i_26
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(read_data0[6]),
        .O(in0[6]));
  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_RD_inferred_i_27
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(read_data0[5]),
        .O(in0[5]));
  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_RD_inferred_i_28
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(read_data0[4]),
        .O(in0[4]));
  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_RD_inferred_i_29
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(read_data0[3]),
        .O(in0[3]));
  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_RD_inferred_i_3
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(read_data0[29]),
        .O(in0[29]));
  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_RD_inferred_i_30
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(read_data0[2]),
        .O(in0[2]));
  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_RD_inferred_i_31
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(read_data0[1]),
        .O(in0[1]));
  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_RD_inferred_i_32
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(read_data0[0]),
        .O(in0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    RAM_RD_inferred_i_33
       (.I0(i_clk[20]),
        .I1(i_clk[18]),
        .I2(i_clk[19]),
        .I3(i_clk[23]),
        .I4(i_clk[21]),
        .I5(i_clk[22]),
        .O(RAM_RD_inferred_i_33_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    RAM_RD_inferred_i_34
       (.I0(i_clk[28]),
        .I1(i_clk[27]),
        .I2(i_clk[29]),
        .I3(i_clk[24]),
        .I4(i_clk[25]),
        .I5(i_clk[26]),
        .O(RAM_RD_inferred_i_34_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    RAM_RD_inferred_i_35
       (.I0(i_clk[17]),
        .I1(i_clk[15]),
        .I2(i_clk[16]),
        .I3(i_clk[12]),
        .I4(i_clk[13]),
        .I5(i_clk[14]),
        .O(RAM_RD_inferred_i_35_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    RAM_RD_inferred_i_36
       (.I0(i_clk[11]),
        .I1(i_clk[9]),
        .I2(i_clk[10]),
        .I3(i_clk[6]),
        .I4(i_clk[7]),
        .I5(i_clk[8]),
        .O(RAM_RD_inferred_i_36_n_0));
  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_RD_inferred_i_4
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(read_data0[28]),
        .O(in0[28]));
  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_RD_inferred_i_5
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(read_data0[27]),
        .O(in0[27]));
  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_RD_inferred_i_6
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(read_data0[26]),
        .O(in0[26]));
  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_RD_inferred_i_7
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(read_data0[25]),
        .O(in0[25]));
  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_RD_inferred_i_8
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(read_data0[24]),
        .O(in0[24]));
  LUT5 #(
    .INIT(32'h40000000)) 
    RAM_RD_inferred_i_9
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(read_data0[23]),
        .O(in0[23]));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_UNIQ_BASE_ memory_reg_0_63_0_0
       (.A0(i_clk[0]),
        .A1(i_clk[1]),
        .A2(i_clk[2]),
        .A3(i_clk[3]),
        .A4(i_clk[4]),
        .A5(i_clk[5]),
        .D(write_data[0]),
        .O(read_data0[0]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in0_out));
  LUT5 #(
    .INIT(32'h40000000)) 
    memory_reg_0_63_0_0_i_1
       (.I0(RAM_RD_inferred_i_33_n_0),
        .I1(RAM_RD_inferred_i_34_n_0),
        .I2(RAM_RD_inferred_i_35_n_0),
        .I3(RAM_RD_inferred_i_36_n_0),
        .I4(out),
        .O(p_0_in0_out));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD1 memory_reg_0_63_10_10
       (.A0(i_clk[0]),
        .A1(i_clk[1]),
        .A2(i_clk[2]),
        .A3(i_clk[3]),
        .A4(i_clk[4]),
        .A5(i_clk[5]),
        .D(write_data[10]),
        .O(read_data0[10]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD2 memory_reg_0_63_11_11
       (.A0(i_clk[0]),
        .A1(i_clk[1]),
        .A2(i_clk[2]),
        .A3(i_clk[3]),
        .A4(i_clk[4]),
        .A5(i_clk[5]),
        .D(write_data[11]),
        .O(read_data0[11]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD3 memory_reg_0_63_12_12
       (.A0(i_clk[0]),
        .A1(i_clk[1]),
        .A2(i_clk[2]),
        .A3(i_clk[3]),
        .A4(i_clk[4]),
        .A5(i_clk[5]),
        .D(write_data[12]),
        .O(read_data0[12]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD4 memory_reg_0_63_13_13
       (.A0(i_clk[0]),
        .A1(i_clk[1]),
        .A2(i_clk[2]),
        .A3(i_clk[3]),
        .A4(i_clk[4]),
        .A5(i_clk[5]),
        .D(write_data[13]),
        .O(read_data0[13]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD5 memory_reg_0_63_14_14
       (.A0(i_clk[0]),
        .A1(i_clk[1]),
        .A2(i_clk[2]),
        .A3(i_clk[3]),
        .A4(i_clk[4]),
        .A5(i_clk[5]),
        .D(write_data[14]),
        .O(read_data0[14]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD6 memory_reg_0_63_15_15
       (.A0(i_clk[0]),
        .A1(i_clk[1]),
        .A2(i_clk[2]),
        .A3(i_clk[3]),
        .A4(i_clk[4]),
        .A5(i_clk[5]),
        .D(write_data[15]),
        .O(read_data0[15]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD7 memory_reg_0_63_16_16
       (.A0(i_clk[0]),
        .A1(i_clk[1]),
        .A2(i_clk[2]),
        .A3(i_clk[3]),
        .A4(i_clk[4]),
        .A5(i_clk[5]),
        .D(write_data[16]),
        .O(read_data0[16]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD8 memory_reg_0_63_17_17
       (.A0(i_clk[0]),
        .A1(i_clk[1]),
        .A2(i_clk[2]),
        .A3(i_clk[3]),
        .A4(i_clk[4]),
        .A5(i_clk[5]),
        .D(write_data[17]),
        .O(read_data0[17]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD9 memory_reg_0_63_18_18
       (.A0(i_clk[0]),
        .A1(i_clk[1]),
        .A2(i_clk[2]),
        .A3(i_clk[3]),
        .A4(i_clk[4]),
        .A5(i_clk[5]),
        .D(write_data[18]),
        .O(read_data0[18]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD10 memory_reg_0_63_19_19
       (.A0(i_clk[0]),
        .A1(i_clk[1]),
        .A2(i_clk[2]),
        .A3(i_clk[3]),
        .A4(i_clk[4]),
        .A5(i_clk[5]),
        .D(write_data[19]),
        .O(read_data0[19]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD11 memory_reg_0_63_1_1
       (.A0(i_clk[0]),
        .A1(i_clk[1]),
        .A2(i_clk[2]),
        .A3(i_clk[3]),
        .A4(i_clk[4]),
        .A5(i_clk[5]),
        .D(write_data[1]),
        .O(read_data0[1]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD12 memory_reg_0_63_20_20
       (.A0(i_clk[0]),
        .A1(i_clk[1]),
        .A2(i_clk[2]),
        .A3(i_clk[3]),
        .A4(i_clk[4]),
        .A5(i_clk[5]),
        .D(write_data[20]),
        .O(read_data0[20]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD13 memory_reg_0_63_21_21
       (.A0(i_clk[0]),
        .A1(i_clk[1]),
        .A2(i_clk[2]),
        .A3(i_clk[3]),
        .A4(i_clk[4]),
        .A5(i_clk[5]),
        .D(write_data[21]),
        .O(read_data0[21]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD14 memory_reg_0_63_22_22
       (.A0(i_clk[0]),
        .A1(i_clk[1]),
        .A2(i_clk[2]),
        .A3(i_clk[3]),
        .A4(i_clk[4]),
        .A5(i_clk[5]),
        .D(write_data[22]),
        .O(read_data0[22]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD15 memory_reg_0_63_23_23
       (.A0(i_clk[0]),
        .A1(i_clk[1]),
        .A2(i_clk[2]),
        .A3(i_clk[3]),
        .A4(i_clk[4]),
        .A5(i_clk[5]),
        .D(write_data[23]),
        .O(read_data0[23]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD16 memory_reg_0_63_24_24
       (.A0(i_clk[0]),
        .A1(i_clk[1]),
        .A2(i_clk[2]),
        .A3(i_clk[3]),
        .A4(i_clk[4]),
        .A5(i_clk[5]),
        .D(write_data[24]),
        .O(read_data0[24]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD17 memory_reg_0_63_25_25
       (.A0(i_clk[0]),
        .A1(i_clk[1]),
        .A2(i_clk[2]),
        .A3(i_clk[3]),
        .A4(i_clk[4]),
        .A5(i_clk[5]),
        .D(write_data[25]),
        .O(read_data0[25]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD18 memory_reg_0_63_26_26
       (.A0(i_clk[0]),
        .A1(i_clk[1]),
        .A2(i_clk[2]),
        .A3(i_clk[3]),
        .A4(i_clk[4]),
        .A5(i_clk[5]),
        .D(write_data[26]),
        .O(read_data0[26]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD19 memory_reg_0_63_27_27
       (.A0(i_clk[0]),
        .A1(i_clk[1]),
        .A2(i_clk[2]),
        .A3(i_clk[3]),
        .A4(i_clk[4]),
        .A5(i_clk[5]),
        .D(write_data[27]),
        .O(read_data0[27]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD20 memory_reg_0_63_28_28
       (.A0(i_clk[0]),
        .A1(i_clk[1]),
        .A2(i_clk[2]),
        .A3(i_clk[3]),
        .A4(i_clk[4]),
        .A5(i_clk[5]),
        .D(write_data[28]),
        .O(read_data0[28]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD21 memory_reg_0_63_29_29
       (.A0(i_clk[0]),
        .A1(i_clk[1]),
        .A2(i_clk[2]),
        .A3(i_clk[3]),
        .A4(i_clk[4]),
        .A5(i_clk[5]),
        .D(write_data[29]),
        .O(read_data0[29]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD22 memory_reg_0_63_2_2
       (.A0(i_clk[0]),
        .A1(i_clk[1]),
        .A2(i_clk[2]),
        .A3(i_clk[3]),
        .A4(i_clk[4]),
        .A5(i_clk[5]),
        .D(write_data[2]),
        .O(read_data0[2]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD23 memory_reg_0_63_30_30
       (.A0(i_clk[0]),
        .A1(i_clk[1]),
        .A2(i_clk[2]),
        .A3(i_clk[3]),
        .A4(i_clk[4]),
        .A5(i_clk[5]),
        .D(write_data[30]),
        .O(read_data0[30]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD24 memory_reg_0_63_31_31
       (.A0(i_clk[0]),
        .A1(i_clk[1]),
        .A2(i_clk[2]),
        .A3(i_clk[3]),
        .A4(i_clk[4]),
        .A5(i_clk[5]),
        .D(write_data[31]),
        .O(read_data0[31]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD25 memory_reg_0_63_3_3
       (.A0(i_clk[0]),
        .A1(i_clk[1]),
        .A2(i_clk[2]),
        .A3(i_clk[3]),
        .A4(i_clk[4]),
        .A5(i_clk[5]),
        .D(write_data[3]),
        .O(read_data0[3]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD26 memory_reg_0_63_4_4
       (.A0(i_clk[0]),
        .A1(i_clk[1]),
        .A2(i_clk[2]),
        .A3(i_clk[3]),
        .A4(i_clk[4]),
        .A5(i_clk[5]),
        .D(write_data[4]),
        .O(read_data0[4]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD27 memory_reg_0_63_5_5
       (.A0(i_clk[0]),
        .A1(i_clk[1]),
        .A2(i_clk[2]),
        .A3(i_clk[3]),
        .A4(i_clk[4]),
        .A5(i_clk[5]),
        .D(write_data[5]),
        .O(read_data0[5]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD28 memory_reg_0_63_6_6
       (.A0(i_clk[0]),
        .A1(i_clk[1]),
        .A2(i_clk[2]),
        .A3(i_clk[3]),
        .A4(i_clk[4]),
        .A5(i_clk[5]),
        .D(write_data[6]),
        .O(read_data0[6]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD29 memory_reg_0_63_7_7
       (.A0(i_clk[0]),
        .A1(i_clk[1]),
        .A2(i_clk[2]),
        .A3(i_clk[3]),
        .A4(i_clk[4]),
        .A5(i_clk[5]),
        .D(write_data[7]),
        .O(read_data0[7]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD30 memory_reg_0_63_8_8
       (.A0(i_clk[0]),
        .A1(i_clk[1]),
        .A2(i_clk[2]),
        .A3(i_clk[3]),
        .A4(i_clk[4]),
        .A5(i_clk[5]),
        .D(write_data[8]),
        .O(read_data0[8]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in0_out));
  (* INIT = "64'h0000000000000000" *) 
  RAM64X1S_HD31 memory_reg_0_63_9_9
       (.A0(i_clk[0]),
        .A1(i_clk[1]),
        .A2(i_clk[2]),
        .A3(i_clk[3]),
        .A4(i_clk[4]),
        .A5(i_clk[5]),
        .D(write_data[9]),
        .O(read_data0[9]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(p_0_in0_out));
endmodule

module registers
   (in0,
    REGF_RD2,
    out,
    UNCONN_IN,
    RegDst_inferred_i_1,
    i_clk,
    i_clk_IBUF_BUFG,
    I4);
  output [31:0]in0;
  output [31:0]REGF_RD2;
  input [4:0]out;
  input [4:0]UNCONN_IN;
  input [4:0]RegDst_inferred_i_1;
  input [31:0]i_clk;
  input i_clk_IBUF_BUFG;
  input I4;

  wire I4;
  wire [31:0]REGF_RD2;
  wire [4:0]RegDst_inferred_i_1;
  wire [4:0]UNCONN_IN;
  wire [31:0]i_clk;
  wire i_clk_IBUF_BUFG;
  wire [31:0]in0;
  wire [4:0]out;
  wire [31:0]p_0_in;
  wire [31:0]read_data10;
  wire [31:0]read_data20;
  wire [1:0]NLW_registers_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r1_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r1_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r1_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r1_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r1_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r1_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r1_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r2_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r2_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r2_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r2_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r2_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r2_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r2_0_31_6_11_DOD_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD1_inferred_i_1
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(read_data10[31]),
        .O(in0[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD1_inferred_i_10
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(read_data10[22]),
        .O(in0[22]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD1_inferred_i_11
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(read_data10[21]),
        .O(in0[21]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD1_inferred_i_12
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(read_data10[20]),
        .O(in0[20]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD1_inferred_i_13
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(read_data10[19]),
        .O(in0[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD1_inferred_i_14
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(read_data10[18]),
        .O(in0[18]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD1_inferred_i_15
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(read_data10[17]),
        .O(in0[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD1_inferred_i_16
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(read_data10[16]),
        .O(in0[16]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD1_inferred_i_17
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(read_data10[15]),
        .O(in0[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD1_inferred_i_18
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(read_data10[14]),
        .O(in0[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD1_inferred_i_19
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(read_data10[13]),
        .O(in0[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD1_inferred_i_2
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(read_data10[30]),
        .O(in0[30]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD1_inferred_i_20
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(read_data10[12]),
        .O(in0[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD1_inferred_i_21
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(read_data10[11]),
        .O(in0[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD1_inferred_i_22
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(read_data10[10]),
        .O(in0[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD1_inferred_i_23
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(read_data10[9]),
        .O(in0[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD1_inferred_i_24
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(read_data10[8]),
        .O(in0[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD1_inferred_i_25
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(read_data10[7]),
        .O(in0[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD1_inferred_i_26
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(read_data10[6]),
        .O(in0[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD1_inferred_i_27
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(read_data10[5]),
        .O(in0[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD1_inferred_i_28
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(read_data10[4]),
        .O(in0[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD1_inferred_i_29
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(read_data10[3]),
        .O(in0[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD1_inferred_i_3
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(read_data10[29]),
        .O(in0[29]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD1_inferred_i_30
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(read_data10[2]),
        .O(in0[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD1_inferred_i_31
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(read_data10[1]),
        .O(in0[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD1_inferred_i_32
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(read_data10[0]),
        .O(in0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD1_inferred_i_4
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(read_data10[28]),
        .O(in0[28]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD1_inferred_i_5
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(read_data10[27]),
        .O(in0[27]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD1_inferred_i_6
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(read_data10[26]),
        .O(in0[26]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD1_inferred_i_7
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(read_data10[25]),
        .O(in0[25]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD1_inferred_i_8
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(read_data10[24]),
        .O(in0[24]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD1_inferred_i_9
       (.I0(out[4]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(read_data10[23]),
        .O(in0[23]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD2_inferred_i_1
       (.I0(UNCONN_IN[4]),
        .I1(UNCONN_IN[3]),
        .I2(UNCONN_IN[1]),
        .I3(UNCONN_IN[0]),
        .I4(UNCONN_IN[2]),
        .I5(read_data20[31]),
        .O(REGF_RD2[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD2_inferred_i_10
       (.I0(UNCONN_IN[4]),
        .I1(UNCONN_IN[3]),
        .I2(UNCONN_IN[1]),
        .I3(UNCONN_IN[0]),
        .I4(UNCONN_IN[2]),
        .I5(read_data20[22]),
        .O(REGF_RD2[22]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD2_inferred_i_11
       (.I0(UNCONN_IN[4]),
        .I1(UNCONN_IN[3]),
        .I2(UNCONN_IN[1]),
        .I3(UNCONN_IN[0]),
        .I4(UNCONN_IN[2]),
        .I5(read_data20[21]),
        .O(REGF_RD2[21]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD2_inferred_i_12
       (.I0(UNCONN_IN[4]),
        .I1(UNCONN_IN[3]),
        .I2(UNCONN_IN[1]),
        .I3(UNCONN_IN[0]),
        .I4(UNCONN_IN[2]),
        .I5(read_data20[20]),
        .O(REGF_RD2[20]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD2_inferred_i_13
       (.I0(UNCONN_IN[4]),
        .I1(UNCONN_IN[3]),
        .I2(UNCONN_IN[1]),
        .I3(UNCONN_IN[0]),
        .I4(UNCONN_IN[2]),
        .I5(read_data20[19]),
        .O(REGF_RD2[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD2_inferred_i_14
       (.I0(UNCONN_IN[4]),
        .I1(UNCONN_IN[3]),
        .I2(UNCONN_IN[1]),
        .I3(UNCONN_IN[0]),
        .I4(UNCONN_IN[2]),
        .I5(read_data20[18]),
        .O(REGF_RD2[18]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD2_inferred_i_15
       (.I0(UNCONN_IN[4]),
        .I1(UNCONN_IN[3]),
        .I2(UNCONN_IN[1]),
        .I3(UNCONN_IN[0]),
        .I4(UNCONN_IN[2]),
        .I5(read_data20[17]),
        .O(REGF_RD2[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD2_inferred_i_16
       (.I0(UNCONN_IN[4]),
        .I1(UNCONN_IN[3]),
        .I2(UNCONN_IN[1]),
        .I3(UNCONN_IN[0]),
        .I4(UNCONN_IN[2]),
        .I5(read_data20[16]),
        .O(REGF_RD2[16]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD2_inferred_i_17
       (.I0(UNCONN_IN[4]),
        .I1(UNCONN_IN[3]),
        .I2(UNCONN_IN[1]),
        .I3(UNCONN_IN[0]),
        .I4(UNCONN_IN[2]),
        .I5(read_data20[15]),
        .O(REGF_RD2[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD2_inferred_i_18
       (.I0(UNCONN_IN[4]),
        .I1(UNCONN_IN[3]),
        .I2(UNCONN_IN[1]),
        .I3(UNCONN_IN[0]),
        .I4(UNCONN_IN[2]),
        .I5(read_data20[14]),
        .O(REGF_RD2[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD2_inferred_i_19
       (.I0(UNCONN_IN[4]),
        .I1(UNCONN_IN[3]),
        .I2(UNCONN_IN[1]),
        .I3(UNCONN_IN[0]),
        .I4(UNCONN_IN[2]),
        .I5(read_data20[13]),
        .O(REGF_RD2[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD2_inferred_i_2
       (.I0(UNCONN_IN[4]),
        .I1(UNCONN_IN[3]),
        .I2(UNCONN_IN[1]),
        .I3(UNCONN_IN[0]),
        .I4(UNCONN_IN[2]),
        .I5(read_data20[30]),
        .O(REGF_RD2[30]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD2_inferred_i_20
       (.I0(UNCONN_IN[4]),
        .I1(UNCONN_IN[3]),
        .I2(UNCONN_IN[1]),
        .I3(UNCONN_IN[0]),
        .I4(UNCONN_IN[2]),
        .I5(read_data20[12]),
        .O(REGF_RD2[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD2_inferred_i_21
       (.I0(UNCONN_IN[4]),
        .I1(UNCONN_IN[3]),
        .I2(UNCONN_IN[1]),
        .I3(UNCONN_IN[0]),
        .I4(UNCONN_IN[2]),
        .I5(read_data20[11]),
        .O(REGF_RD2[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD2_inferred_i_22
       (.I0(UNCONN_IN[4]),
        .I1(UNCONN_IN[3]),
        .I2(UNCONN_IN[1]),
        .I3(UNCONN_IN[0]),
        .I4(UNCONN_IN[2]),
        .I5(read_data20[10]),
        .O(REGF_RD2[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD2_inferred_i_23
       (.I0(UNCONN_IN[4]),
        .I1(UNCONN_IN[3]),
        .I2(UNCONN_IN[1]),
        .I3(UNCONN_IN[0]),
        .I4(UNCONN_IN[2]),
        .I5(read_data20[9]),
        .O(REGF_RD2[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD2_inferred_i_24
       (.I0(UNCONN_IN[4]),
        .I1(UNCONN_IN[3]),
        .I2(UNCONN_IN[1]),
        .I3(UNCONN_IN[0]),
        .I4(UNCONN_IN[2]),
        .I5(read_data20[8]),
        .O(REGF_RD2[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD2_inferred_i_25
       (.I0(UNCONN_IN[4]),
        .I1(UNCONN_IN[3]),
        .I2(UNCONN_IN[1]),
        .I3(UNCONN_IN[0]),
        .I4(UNCONN_IN[2]),
        .I5(read_data20[7]),
        .O(REGF_RD2[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD2_inferred_i_26
       (.I0(UNCONN_IN[4]),
        .I1(UNCONN_IN[3]),
        .I2(UNCONN_IN[1]),
        .I3(UNCONN_IN[0]),
        .I4(UNCONN_IN[2]),
        .I5(read_data20[6]),
        .O(REGF_RD2[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD2_inferred_i_27
       (.I0(UNCONN_IN[4]),
        .I1(UNCONN_IN[3]),
        .I2(UNCONN_IN[1]),
        .I3(UNCONN_IN[0]),
        .I4(UNCONN_IN[2]),
        .I5(read_data20[5]),
        .O(REGF_RD2[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD2_inferred_i_28
       (.I0(UNCONN_IN[4]),
        .I1(UNCONN_IN[3]),
        .I2(UNCONN_IN[1]),
        .I3(UNCONN_IN[0]),
        .I4(UNCONN_IN[2]),
        .I5(read_data20[4]),
        .O(REGF_RD2[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD2_inferred_i_29
       (.I0(UNCONN_IN[4]),
        .I1(UNCONN_IN[3]),
        .I2(UNCONN_IN[1]),
        .I3(UNCONN_IN[0]),
        .I4(UNCONN_IN[2]),
        .I5(read_data20[3]),
        .O(REGF_RD2[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD2_inferred_i_3
       (.I0(UNCONN_IN[4]),
        .I1(UNCONN_IN[3]),
        .I2(UNCONN_IN[1]),
        .I3(UNCONN_IN[0]),
        .I4(UNCONN_IN[2]),
        .I5(read_data20[29]),
        .O(REGF_RD2[29]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD2_inferred_i_30
       (.I0(UNCONN_IN[4]),
        .I1(UNCONN_IN[3]),
        .I2(UNCONN_IN[1]),
        .I3(UNCONN_IN[0]),
        .I4(UNCONN_IN[2]),
        .I5(read_data20[2]),
        .O(REGF_RD2[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD2_inferred_i_31
       (.I0(UNCONN_IN[4]),
        .I1(UNCONN_IN[3]),
        .I2(UNCONN_IN[1]),
        .I3(UNCONN_IN[0]),
        .I4(UNCONN_IN[2]),
        .I5(read_data20[1]),
        .O(REGF_RD2[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD2_inferred_i_32
       (.I0(UNCONN_IN[4]),
        .I1(UNCONN_IN[3]),
        .I2(UNCONN_IN[1]),
        .I3(UNCONN_IN[0]),
        .I4(UNCONN_IN[2]),
        .I5(read_data20[0]),
        .O(REGF_RD2[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD2_inferred_i_4
       (.I0(UNCONN_IN[4]),
        .I1(UNCONN_IN[3]),
        .I2(UNCONN_IN[1]),
        .I3(UNCONN_IN[0]),
        .I4(UNCONN_IN[2]),
        .I5(read_data20[28]),
        .O(REGF_RD2[28]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD2_inferred_i_5
       (.I0(UNCONN_IN[4]),
        .I1(UNCONN_IN[3]),
        .I2(UNCONN_IN[1]),
        .I3(UNCONN_IN[0]),
        .I4(UNCONN_IN[2]),
        .I5(read_data20[27]),
        .O(REGF_RD2[27]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD2_inferred_i_6
       (.I0(UNCONN_IN[4]),
        .I1(UNCONN_IN[3]),
        .I2(UNCONN_IN[1]),
        .I3(UNCONN_IN[0]),
        .I4(UNCONN_IN[2]),
        .I5(read_data20[26]),
        .O(REGF_RD2[26]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD2_inferred_i_7
       (.I0(UNCONN_IN[4]),
        .I1(UNCONN_IN[3]),
        .I2(UNCONN_IN[1]),
        .I3(UNCONN_IN[0]),
        .I4(UNCONN_IN[2]),
        .I5(read_data20[25]),
        .O(REGF_RD2[25]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD2_inferred_i_8
       (.I0(UNCONN_IN[4]),
        .I1(UNCONN_IN[3]),
        .I2(UNCONN_IN[1]),
        .I3(UNCONN_IN[0]),
        .I4(UNCONN_IN[2]),
        .I5(read_data20[24]),
        .O(REGF_RD2[24]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    REGF_RD2_inferred_i_9
       (.I0(UNCONN_IN[4]),
        .I1(UNCONN_IN[3]),
        .I2(UNCONN_IN[1]),
        .I3(UNCONN_IN[0]),
        .I4(UNCONN_IN[2]),
        .I5(read_data20[23]),
        .O(REGF_RD2[23]));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_UNIQ_BASE_ registers_reg_r1_0_31_0_5
       (.ADDRA(out),
        .ADDRB(out),
        .ADDRC(out),
        .ADDRD(RegDst_inferred_i_1),
        .DIA(p_0_in[1:0]),
        .DIB(p_0_in[3:2]),
        .DIC(p_0_in[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(read_data10[1:0]),
        .DOB(read_data10[3:2]),
        .DOC(read_data10[5:4]),
        .DOD(NLW_registers_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(I4));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    registers_reg_r1_0_31_0_5_i_1
       (.I0(RegDst_inferred_i_1[2]),
        .I1(RegDst_inferred_i_1[4]),
        .I2(RegDst_inferred_i_1[0]),
        .I3(RegDst_inferred_i_1[1]),
        .I4(RegDst_inferred_i_1[3]),
        .I5(i_clk[1]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    registers_reg_r1_0_31_0_5_i_2
       (.I0(RegDst_inferred_i_1[2]),
        .I1(RegDst_inferred_i_1[4]),
        .I2(RegDst_inferred_i_1[0]),
        .I3(RegDst_inferred_i_1[1]),
        .I4(RegDst_inferred_i_1[3]),
        .I5(i_clk[0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    registers_reg_r1_0_31_0_5_i_3
       (.I0(RegDst_inferred_i_1[2]),
        .I1(RegDst_inferred_i_1[4]),
        .I2(RegDst_inferred_i_1[0]),
        .I3(RegDst_inferred_i_1[1]),
        .I4(RegDst_inferred_i_1[3]),
        .I5(i_clk[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    registers_reg_r1_0_31_0_5_i_4
       (.I0(RegDst_inferred_i_1[2]),
        .I1(RegDst_inferred_i_1[4]),
        .I2(RegDst_inferred_i_1[0]),
        .I3(RegDst_inferred_i_1[1]),
        .I4(RegDst_inferred_i_1[3]),
        .I5(i_clk[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    registers_reg_r1_0_31_0_5_i_5
       (.I0(RegDst_inferred_i_1[2]),
        .I1(RegDst_inferred_i_1[4]),
        .I2(RegDst_inferred_i_1[0]),
        .I3(RegDst_inferred_i_1[1]),
        .I4(RegDst_inferred_i_1[3]),
        .I5(i_clk[5]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    registers_reg_r1_0_31_0_5_i_6
       (.I0(RegDst_inferred_i_1[2]),
        .I1(RegDst_inferred_i_1[4]),
        .I2(RegDst_inferred_i_1[0]),
        .I3(RegDst_inferred_i_1[1]),
        .I4(RegDst_inferred_i_1[3]),
        .I5(i_clk[4]),
        .O(p_0_in[4]));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD32 registers_reg_r1_0_31_12_17
       (.ADDRA(out),
        .ADDRB(out),
        .ADDRC(out),
        .ADDRD(RegDst_inferred_i_1),
        .DIA(p_0_in[13:12]),
        .DIB(p_0_in[15:14]),
        .DIC(p_0_in[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(read_data10[13:12]),
        .DOB(read_data10[15:14]),
        .DOC(read_data10[17:16]),
        .DOD(NLW_registers_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(I4));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    registers_reg_r1_0_31_12_17_i_1
       (.I0(RegDst_inferred_i_1[2]),
        .I1(RegDst_inferred_i_1[4]),
        .I2(RegDst_inferred_i_1[0]),
        .I3(RegDst_inferred_i_1[1]),
        .I4(RegDst_inferred_i_1[3]),
        .I5(i_clk[13]),
        .O(p_0_in[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    registers_reg_r1_0_31_12_17_i_2
       (.I0(RegDst_inferred_i_1[2]),
        .I1(RegDst_inferred_i_1[4]),
        .I2(RegDst_inferred_i_1[0]),
        .I3(RegDst_inferred_i_1[1]),
        .I4(RegDst_inferred_i_1[3]),
        .I5(i_clk[12]),
        .O(p_0_in[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    registers_reg_r1_0_31_12_17_i_3
       (.I0(RegDst_inferred_i_1[2]),
        .I1(RegDst_inferred_i_1[4]),
        .I2(RegDst_inferred_i_1[0]),
        .I3(RegDst_inferred_i_1[1]),
        .I4(RegDst_inferred_i_1[3]),
        .I5(i_clk[15]),
        .O(p_0_in[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    registers_reg_r1_0_31_12_17_i_4
       (.I0(RegDst_inferred_i_1[2]),
        .I1(RegDst_inferred_i_1[4]),
        .I2(RegDst_inferred_i_1[0]),
        .I3(RegDst_inferred_i_1[1]),
        .I4(RegDst_inferred_i_1[3]),
        .I5(i_clk[14]),
        .O(p_0_in[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    registers_reg_r1_0_31_12_17_i_5
       (.I0(RegDst_inferred_i_1[2]),
        .I1(RegDst_inferred_i_1[4]),
        .I2(RegDst_inferred_i_1[0]),
        .I3(RegDst_inferred_i_1[1]),
        .I4(RegDst_inferred_i_1[3]),
        .I5(i_clk[17]),
        .O(p_0_in[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    registers_reg_r1_0_31_12_17_i_6
       (.I0(RegDst_inferred_i_1[2]),
        .I1(RegDst_inferred_i_1[4]),
        .I2(RegDst_inferred_i_1[0]),
        .I3(RegDst_inferred_i_1[1]),
        .I4(RegDst_inferred_i_1[3]),
        .I5(i_clk[16]),
        .O(p_0_in[16]));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD33 registers_reg_r1_0_31_18_23
       (.ADDRA(out),
        .ADDRB(out),
        .ADDRC(out),
        .ADDRD(RegDst_inferred_i_1),
        .DIA(p_0_in[19:18]),
        .DIB(p_0_in[21:20]),
        .DIC(p_0_in[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(read_data10[19:18]),
        .DOB(read_data10[21:20]),
        .DOC(read_data10[23:22]),
        .DOD(NLW_registers_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(I4));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    registers_reg_r1_0_31_18_23_i_1
       (.I0(RegDst_inferred_i_1[2]),
        .I1(RegDst_inferred_i_1[4]),
        .I2(RegDst_inferred_i_1[0]),
        .I3(RegDst_inferred_i_1[1]),
        .I4(RegDst_inferred_i_1[3]),
        .I5(i_clk[19]),
        .O(p_0_in[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    registers_reg_r1_0_31_18_23_i_2
       (.I0(RegDst_inferred_i_1[2]),
        .I1(RegDst_inferred_i_1[4]),
        .I2(RegDst_inferred_i_1[0]),
        .I3(RegDst_inferred_i_1[1]),
        .I4(RegDst_inferred_i_1[3]),
        .I5(i_clk[18]),
        .O(p_0_in[18]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    registers_reg_r1_0_31_18_23_i_3
       (.I0(RegDst_inferred_i_1[2]),
        .I1(RegDst_inferred_i_1[4]),
        .I2(RegDst_inferred_i_1[0]),
        .I3(RegDst_inferred_i_1[1]),
        .I4(RegDst_inferred_i_1[3]),
        .I5(i_clk[21]),
        .O(p_0_in[21]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    registers_reg_r1_0_31_18_23_i_4
       (.I0(RegDst_inferred_i_1[2]),
        .I1(RegDst_inferred_i_1[4]),
        .I2(RegDst_inferred_i_1[0]),
        .I3(RegDst_inferred_i_1[1]),
        .I4(RegDst_inferred_i_1[3]),
        .I5(i_clk[20]),
        .O(p_0_in[20]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    registers_reg_r1_0_31_18_23_i_5
       (.I0(RegDst_inferred_i_1[2]),
        .I1(RegDst_inferred_i_1[4]),
        .I2(RegDst_inferred_i_1[0]),
        .I3(RegDst_inferred_i_1[1]),
        .I4(RegDst_inferred_i_1[3]),
        .I5(i_clk[23]),
        .O(p_0_in[23]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    registers_reg_r1_0_31_18_23_i_6
       (.I0(RegDst_inferred_i_1[2]),
        .I1(RegDst_inferred_i_1[4]),
        .I2(RegDst_inferred_i_1[0]),
        .I3(RegDst_inferred_i_1[1]),
        .I4(RegDst_inferred_i_1[3]),
        .I5(i_clk[22]),
        .O(p_0_in[22]));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD34 registers_reg_r1_0_31_24_29
       (.ADDRA(out),
        .ADDRB(out),
        .ADDRC(out),
        .ADDRD(RegDst_inferred_i_1),
        .DIA(p_0_in[25:24]),
        .DIB(p_0_in[27:26]),
        .DIC(p_0_in[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(read_data10[25:24]),
        .DOB(read_data10[27:26]),
        .DOC(read_data10[29:28]),
        .DOD(NLW_registers_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(I4));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    registers_reg_r1_0_31_24_29_i_1
       (.I0(RegDst_inferred_i_1[2]),
        .I1(RegDst_inferred_i_1[4]),
        .I2(RegDst_inferred_i_1[0]),
        .I3(RegDst_inferred_i_1[1]),
        .I4(RegDst_inferred_i_1[3]),
        .I5(i_clk[25]),
        .O(p_0_in[25]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    registers_reg_r1_0_31_24_29_i_2
       (.I0(RegDst_inferred_i_1[2]),
        .I1(RegDst_inferred_i_1[4]),
        .I2(RegDst_inferred_i_1[0]),
        .I3(RegDst_inferred_i_1[1]),
        .I4(RegDst_inferred_i_1[3]),
        .I5(i_clk[24]),
        .O(p_0_in[24]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    registers_reg_r1_0_31_24_29_i_3
       (.I0(RegDst_inferred_i_1[2]),
        .I1(RegDst_inferred_i_1[4]),
        .I2(RegDst_inferred_i_1[0]),
        .I3(RegDst_inferred_i_1[1]),
        .I4(RegDst_inferred_i_1[3]),
        .I5(i_clk[27]),
        .O(p_0_in[27]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    registers_reg_r1_0_31_24_29_i_4
       (.I0(RegDst_inferred_i_1[2]),
        .I1(RegDst_inferred_i_1[4]),
        .I2(RegDst_inferred_i_1[0]),
        .I3(RegDst_inferred_i_1[1]),
        .I4(RegDst_inferred_i_1[3]),
        .I5(i_clk[26]),
        .O(p_0_in[26]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    registers_reg_r1_0_31_24_29_i_5
       (.I0(RegDst_inferred_i_1[2]),
        .I1(RegDst_inferred_i_1[4]),
        .I2(RegDst_inferred_i_1[0]),
        .I3(RegDst_inferred_i_1[1]),
        .I4(RegDst_inferred_i_1[3]),
        .I5(i_clk[29]),
        .O(p_0_in[29]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    registers_reg_r1_0_31_24_29_i_6
       (.I0(RegDst_inferred_i_1[2]),
        .I1(RegDst_inferred_i_1[4]),
        .I2(RegDst_inferred_i_1[0]),
        .I3(RegDst_inferred_i_1[1]),
        .I4(RegDst_inferred_i_1[3]),
        .I5(i_clk[28]),
        .O(p_0_in[28]));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD35 registers_reg_r1_0_31_30_31
       (.ADDRA(out),
        .ADDRB(out),
        .ADDRC(out),
        .ADDRD(RegDst_inferred_i_1),
        .DIA(p_0_in[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(read_data10[31:30]),
        .DOB(NLW_registers_reg_r1_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_registers_reg_r1_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_registers_reg_r1_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(I4));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    registers_reg_r1_0_31_30_31_i_1
       (.I0(RegDst_inferred_i_1[2]),
        .I1(RegDst_inferred_i_1[4]),
        .I2(RegDst_inferred_i_1[0]),
        .I3(RegDst_inferred_i_1[1]),
        .I4(RegDst_inferred_i_1[3]),
        .I5(i_clk[31]),
        .O(p_0_in[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    registers_reg_r1_0_31_30_31_i_2
       (.I0(RegDst_inferred_i_1[2]),
        .I1(RegDst_inferred_i_1[4]),
        .I2(RegDst_inferred_i_1[0]),
        .I3(RegDst_inferred_i_1[1]),
        .I4(RegDst_inferred_i_1[3]),
        .I5(i_clk[30]),
        .O(p_0_in[30]));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD36 registers_reg_r1_0_31_6_11
       (.ADDRA(out),
        .ADDRB(out),
        .ADDRC(out),
        .ADDRD(RegDst_inferred_i_1),
        .DIA(p_0_in[7:6]),
        .DIB(p_0_in[9:8]),
        .DIC(p_0_in[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(read_data10[7:6]),
        .DOB(read_data10[9:8]),
        .DOC(read_data10[11:10]),
        .DOD(NLW_registers_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(I4));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    registers_reg_r1_0_31_6_11_i_1
       (.I0(RegDst_inferred_i_1[2]),
        .I1(RegDst_inferred_i_1[4]),
        .I2(RegDst_inferred_i_1[0]),
        .I3(RegDst_inferred_i_1[1]),
        .I4(RegDst_inferred_i_1[3]),
        .I5(i_clk[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    registers_reg_r1_0_31_6_11_i_2
       (.I0(RegDst_inferred_i_1[2]),
        .I1(RegDst_inferred_i_1[4]),
        .I2(RegDst_inferred_i_1[0]),
        .I3(RegDst_inferred_i_1[1]),
        .I4(RegDst_inferred_i_1[3]),
        .I5(i_clk[6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    registers_reg_r1_0_31_6_11_i_3
       (.I0(RegDst_inferred_i_1[2]),
        .I1(RegDst_inferred_i_1[4]),
        .I2(RegDst_inferred_i_1[0]),
        .I3(RegDst_inferred_i_1[1]),
        .I4(RegDst_inferred_i_1[3]),
        .I5(i_clk[9]),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    registers_reg_r1_0_31_6_11_i_4
       (.I0(RegDst_inferred_i_1[2]),
        .I1(RegDst_inferred_i_1[4]),
        .I2(RegDst_inferred_i_1[0]),
        .I3(RegDst_inferred_i_1[1]),
        .I4(RegDst_inferred_i_1[3]),
        .I5(i_clk[8]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    registers_reg_r1_0_31_6_11_i_5
       (.I0(RegDst_inferred_i_1[2]),
        .I1(RegDst_inferred_i_1[4]),
        .I2(RegDst_inferred_i_1[0]),
        .I3(RegDst_inferred_i_1[1]),
        .I4(RegDst_inferred_i_1[3]),
        .I5(i_clk[11]),
        .O(p_0_in[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    registers_reg_r1_0_31_6_11_i_6
       (.I0(RegDst_inferred_i_1[2]),
        .I1(RegDst_inferred_i_1[4]),
        .I2(RegDst_inferred_i_1[0]),
        .I3(RegDst_inferred_i_1[1]),
        .I4(RegDst_inferred_i_1[3]),
        .I5(i_clk[10]),
        .O(p_0_in[10]));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD37 registers_reg_r2_0_31_0_5
       (.ADDRA(UNCONN_IN),
        .ADDRB(UNCONN_IN),
        .ADDRC(UNCONN_IN),
        .ADDRD(RegDst_inferred_i_1),
        .DIA(p_0_in[1:0]),
        .DIB(p_0_in[3:2]),
        .DIC(p_0_in[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(read_data20[1:0]),
        .DOB(read_data20[3:2]),
        .DOC(read_data20[5:4]),
        .DOD(NLW_registers_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(I4));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD38 registers_reg_r2_0_31_12_17
       (.ADDRA(UNCONN_IN),
        .ADDRB(UNCONN_IN),
        .ADDRC(UNCONN_IN),
        .ADDRD(RegDst_inferred_i_1),
        .DIA(p_0_in[13:12]),
        .DIB(p_0_in[15:14]),
        .DIC(p_0_in[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(read_data20[13:12]),
        .DOB(read_data20[15:14]),
        .DOC(read_data20[17:16]),
        .DOD(NLW_registers_reg_r2_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(I4));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD39 registers_reg_r2_0_31_18_23
       (.ADDRA(UNCONN_IN),
        .ADDRB(UNCONN_IN),
        .ADDRC(UNCONN_IN),
        .ADDRD(RegDst_inferred_i_1),
        .DIA(p_0_in[19:18]),
        .DIB(p_0_in[21:20]),
        .DIC(p_0_in[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(read_data20[19:18]),
        .DOB(read_data20[21:20]),
        .DOC(read_data20[23:22]),
        .DOD(NLW_registers_reg_r2_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(I4));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD40 registers_reg_r2_0_31_24_29
       (.ADDRA(UNCONN_IN),
        .ADDRB(UNCONN_IN),
        .ADDRC(UNCONN_IN),
        .ADDRD(RegDst_inferred_i_1),
        .DIA(p_0_in[25:24]),
        .DIB(p_0_in[27:26]),
        .DIC(p_0_in[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(read_data20[25:24]),
        .DOB(read_data20[27:26]),
        .DOC(read_data20[29:28]),
        .DOD(NLW_registers_reg_r2_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(I4));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD41 registers_reg_r2_0_31_30_31
       (.ADDRA(UNCONN_IN),
        .ADDRB(UNCONN_IN),
        .ADDRC(UNCONN_IN),
        .ADDRD(RegDst_inferred_i_1),
        .DIA(p_0_in[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(read_data20[31:30]),
        .DOB(NLW_registers_reg_r2_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_registers_reg_r2_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_registers_reg_r2_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(I4));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD42 registers_reg_r2_0_31_6_11
       (.ADDRA(UNCONN_IN),
        .ADDRB(UNCONN_IN),
        .ADDRC(UNCONN_IN),
        .ADDRD(RegDst_inferred_i_1),
        .DIA(p_0_in[7:6]),
        .DIB(p_0_in[9:8]),
        .DIC(p_0_in[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(read_data20[7:6]),
        .DOB(read_data20[9:8]),
        .DOC(read_data20[11:10]),
        .DOD(NLW_registers_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(i_clk_IBUF_BUFG),
        .WE(I4));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
