// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Dec 31 23:34:36 2024
// Host        : DESKTOP-NIHNLB6 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Asus/Desktop/TKLL_2024/MIPS_single_cycle/new_prj/new_prj.gen/sources_1/bd/zynq_example/ip/zynq_example_blk_mem_gen_0_0/zynq_example_blk_mem_gen_0_0_sim_netlist.v
// Design      : zynq_example_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zynq_example_blk_mem_gen_0_0,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module zynq_example_blk_mem_gen_0_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  output rsta_busy;

  wire [31:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire rsta;
  wire rsta_busy;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.3746 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  zynq_example_blk_mem_gen_0_0_blk_mem_gen_v8_4_9 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FPXllyX2NFs/RMngGqZy2bLYbZr92CdofeZrJOHklWXExpaPgHNYp2Lzm4MnflbnrfSkCmLwwKT5
zfRgEip7FKQ5Zhb73p0MAIADixBZ/ZRt4hQkJL0T9brm0waLHfanjnov2aCX6jN3LbQc3ujmDga6
Dd73k78u4xjRTDv1/P4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kr7VKKvChFoiyRCReag+OvU3jnmG9pN0cv+BxhNmMKLthg/ksgNZyU3L+fQ7cmIQELtlUjwjkBAP
Jjq5RsCnHbJxj+Ys1GNhriiBsxLqxWCP8onhAVvgZN2xZFOih0UWpqlU8NVP8Eww1ohvkDgxTstC
3kDmYehxIUJjqCC/mgRZmuezqugrFdubYmBoz16tUvD17iA5qqCIMS9xSIXYp2LBNekmWEwrVqzu
R4koEo4UlXl/CEw0XY3QvMoHnlXgu6N/6sc+nxZtKSwjiMVvGnZE9UVvJPAC3Hn3zKFGlK53mmGO
Tj0dWzhwX0ahSYzkyJC/HLdbGZmriL2UNvDyFw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CaLc9FGt3AdRHfNtGAsGFY/QEvHY1Vv4TvvgCDsdDMqiuDeLizFJDJeskBWjeKDoE2cufK8TxiBq
mySRQNJoeOKnxTiDdf+Rx6m0iR6h/YeswegYwgghpM5KVrl6mSwF3+4yEovPM7a+9ArDQ5vl+WT8
SilNGzyW0KnTwe7+szs=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cEnudSW1X71p0Xuq6jrXOxHnBku87IA0RA3zKqmeZHZM0r+9rEm5MSzX8RecnQ994yiqeyxbIH2l
fGEzUzr0ZzryS3fkf2LnJuB39f2YARW9eVCSiaeWaraZuY1l89T+h3vgdlurS/1LIraYLS1MyOXa
6F1LAcQp3W4OO4ctc3q1FRMZGldRS1biMsKwJ8Lxj8NEOm67UfgFrJNQAxbVXEfbWRWhKtwNxcTB
JbgC8j4EHkIA46mzoHloeBAL6KieplQUBjKXSSTb66rxglbFhWLy+mirROHcocu9J4ZbvTRYZEww
4lso1lqAllVLAoKYqa3WImZuSRoTbGDngBt9Lg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rOyI+x4PlmKcVSFoN3oKgSYpVlmYxc194Ej04il/YmBg10xopy4zmtu5sdCP/uGSNYcNGWeAiw01
mNf98KyNgTUFXruHCA38qjhhEIvl4vfWWn3W3mFRxrIuwmnreT6qTvgMaxIkCdVBDP7Iy7O6WmCf
3Va5X5hnCHhtXgX5UYniBHiLjmupv63B8XMAYDH2n6mQ3H0DF7mtb7psBafd0Z6+IWUbmzwMtKrf
ZrRJBGAhNT0i1KrEjEh/rWjN7Z7N32zQ+Pl1kc5gYCQIX5McfdTdqSaRVXZ/HF90ymS7/8d5LDyj
Er+ORdcjnOn6oAyY4PuUUl4OYUHv5k+RglTe5Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bJa7kPSpDipzoJoQu1APEjc8vFLqBfQZK/grZvWijD7/FgMTerFCWLUY6n8DWeGdvjXvTeyrqCHE
2rP/H57wUqPC8tIJlGm6ZYQGjZ3TgYqLrJshDE5zYMTO//q0vuSraWvZP7A7SLuW6y7tFE/nplpx
L8gbYORx6j70okGUwnamCMS9yhFr7Z2QTJne1k4GNFGvy66URk3k5cBPl5j4/1yc4xGV+aWYl6L8
q8RorRU/CltObHKrji/jdiY1WtdGrkpRyCEFc+XNPazL9xSLLu5bz6XlvKwoks+8a5KYT/VFUovM
JbM0bpAXM8Z7rGaPuXjqXtZBg5praTZLu/WNcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PYKBDinOGc/kIVdFzXrz2wA4/QNFxLDrQfTWfR5TjYE6bm49vrZi0bawcr9HXp4OP1+XxPLB3oCP
oV5e/rYeDln531ebt8yEg27XCoSHEX4FU8oG8aBJ8fqgWayOnAMJt025WodOxuZXbhT1zPo7J3uh
6iO9Mv7RtYE2fZ1W+G8oN//FTOEJYPWlKYnt0cDeZrN3I4rHHptZHuu7l8T+df0PYea3x6U3Mvkl
ojZ+TwQtdu0NuYY5j3QNgx3+W2XYq1M773FAnEz/deW54EjE+jf1jjrBk2pl8SYxeKuutS15oPVF
eHdqXYVcJxoUY5JH8z04lITKEnZ4oq6sYS6dog==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
tl+2vFCWZ583gQGsVC7oopz2NCKBiJ9uOHYBGzJZheOHJMqI/ehNvo25l710eBx00tztXzM30AH6
ZhAJg+kJwE2jO0MV5fmG5dnwXmLqoGEJMBs7xwWxvYK7w/0z9M0AJKD7HnuC+IiLhNU/fIxyuE+I
+vWqp//RcfY0tMMp2I2J1yEW6GUahS1ve/4JchssZ7Xu7VthoSDWXMQWATbvsUsDzeSo2+Ruz8Kq
Dc05HqEU8NgBxDPPEKLCcdKLp4byglwj7iCAtCjsPy8P18qjgb2sycFjNgmaiNMMB51WqeD+hneG
hLOue9bqVdEojkrb3q4WbsGZKz0bAGsryxslOlYHP1b8vey3yI2ixA80wyERe8d3GRIeZiSxGykH
qWxsE6x/iyi8QRb5mXZPMApA+Fln8tYmn7+1rFCm8gF4gJWhr1PsSJqTi658symGrzT0Ghjvf2QL
SvvoaeNdy0pOsWs7jLBFndd4GiFA+9K6Y33sziLToU9EvvFokENIslod

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oYiCujFRj1F3wKsGZlHR9niEtR9MLXEVAVfy+f/3xrmpW6Ye5a+fBCvm4TH+iRQefGHNdMPnzTNW
K/pEPAS9uMJjOdFiu+APT+LYrSRnEg4W0dX5buSDGM6LBWAuMseoTMjbJJoYDGLRckJgW43E30mX
ej4823nkbfwc+Ecbrup825qLyv8RTQLNHafvJA5lSapdqXwnlOIYRmcHn+sfAh5pGv9kW9aokcdh
ObR2XYxX99rYloyvz3x0pmjxD5ILW4SQMB1IUEuuyqX6eb5IQ+kZ41hjvsHIuQH29vzpCfV9Jqha
WC5yxxK1R+cleZSKD1H1gVzbTei8uFs/91Bgeg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
urNc+S8AFPj+GVFdqJE5V7P8O6QI6MA3nkwYb8NKbYbVufnXKg6voJIRYYeYr7EOa8mrqirozWbY
Lln9SLWnkaAy2LvL/N6WahoQdCt++4RH+xe768XvSrVUFPrIwZRixqMLurc/tPov4i5P/ukZKl18
ZPZvXRzUNlvCZnMPcF+5QCQihqPbjcZ0YyGgWgX/ipTGG3sNqmylGN7qLa4Rgqu/mB5a2xVyu5Wc
911+/X3VVFx697WVaP5V0SbOzYN8R8+8B8kdznwixMA+f4lSbBXyRysVOSzYjo8bKEMqyKMVBQn9
xDmEuV0DvVWXdO7VPvWA1LuJFwS07OxeI2GCcQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcP7fsLZxaDrG29e9HQeXfu2TsKsdyW7Yc1vWct6lbmDEfXkWMU1fFWSPIjPzRc9UOnfEu0bRn+B
D+8MWokqes3WF7txljBmgUPiNGZ8arUU6ENa/IY/Wv7iaB/ZKM5PtdnFAkjDIrYyKFCTz/U6Yzwi
hBGGarK/wYQOLzeeKRewiPTiNUL7tztWuMZ1t1msxD951EeKrwjrjcXIIuf/TzrOGUOlWgjHlnrl
4Q/lfMAnRLBNTSWG+5wWewCE8jK2X/gJ5AV4p3x1WP3+JglbxpP39l3pzedXqciZPbuz2XlFnRPV
KByaUaAShzJ56p8+0HjWebibqQdieGNPiPWW0Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52864)
`pragma protect data_block
rZU5mEmb7gPMmKIpzPlamGWKXBEqWtM6JFa2lcIpm73k55Ae252aGUsyauCpa4mGe/96i74hf/BP
sfD1Ow0q13ZxI0R43SMPfdRTWHfLa3bjGUKV0ixv7O6QogHu9cb6pc1J9S/z7VarQSEDrIMMRD64
7eE80QvVP+8SW70Qc/+EAhrutER99w5x9kdyVyiUggxdsyu0D92+ufcGRgy9CzJN61HOo+y4Lpzi
8SHXcB3IMF+NcN3Hqu+p8y/I+jU8TCSaDTYoetqYRjTwTrd8HUO6gSGt/NtOiK9j8J05H+UAbuu9
7z+ima9WVt66bWDni+WN8KTaSsppNzUS+Urbfzy4qHT7PCgDBt5839bxHbLVIHDI8Y36f1JhaFaQ
Pp2JXcuZdj97FbMB0610m0V6HwQ+r0hmN0FjO3IJbLhV6RbQwM4y5ovdzsxuIG12AkmgqPzRA/Os
CkG9KnqWeQKRn+niWkXMDQfzkq2ufXy2LQ7yT7wKCQXdmyRsFLtx2Q03yg8d9K0oVjs5NHV1AQYB
bg5DscwjfM9N09CQickU41Fo014UjPs+KmQwHG0DupH6cvYS2MW9cD80R2/xDhyidIakudtW9Gt9
HcRyMQWiQQvdh6SqVnZdhHW+rsQzGhLAnKqOx1IYWi4o4+YQ5bt2rHmESjntt0nzlGmbDl34vTtp
YBvGbB/3tP/X/rvQrH64As3qKoNpiakLSZeM7UsJzNUlyC61Bjy8wGfpky9KxZHO7HEMXkhd8v1V
6FoTO+8049etyGCQ2ARXvCy5JQepL/44NV6yz4QLqMjVUrFXxwQiwjXhqDoiXzuPyYrZckuT768d
3E8L5hMpv9v6T91H+/9yRaYyiocvhKgV3VlcqoDi4JpAfwlj261Rr/TUG6QNiANNyvI8GC7ZV8SG
S165MGNmSFQvpfT1xqZ/sc9fwtBEJgPwJEh7bu7OUt9zQqOcUHDApE8r55ZR/wlqRtcHpxm5+g5G
vec3skd34IiL2BhzM2Vm8cAz+yFjQCkaDuVVMMmKClYXR7O316dGOtmiMYMIVgvc+2CIH4DpN9R+
O3EeWu213nWGG2XSBDuzzQK6C+fnRFHXfdhgR/EwctpvmNeSOiUsXrVJGKP/ux8ox5nMgBOIPPVH
QsWim+D/Q6q7w2dXETpZjidqMU1xixZWt2RaGdlSFJofRvKLPx8B2Z9YCyi7rtWxpMtnZ76hVIKl
UiKYYZVORSriNcKzW/9lQd2QEVl4/cWknpGidON2dAs5fG7pqXmAM6AyIweHApCVeqaj3zGG4vE0
PD4n/VVTZTSN9IHmKNlWTwUhU2ClQVvA2Llc2cEyul4UyILKPB0OjxWfKvaEWO2XuYOQUHBk4E1u
2jFoXJABOY8k+C+fYp2LTKYMCzhR9HNcM6JgdARDqvzqxr/nNlP8H1ymjM2Q5a5I64baYhq3IhUI
JvUcmoZ7IDwZEW1ANVsyiY4DiirL+G9S9L8IpjYJoL7E8xL/PZhJD8U1wvBNUo2yQH/byBFEyhi8
EYVDiZ1vx9MpYiJ4aARgrFKyCTOz3SgTHqEKxi2tNN4LFCp9q6upMg1kLtPWHoL7T3/+6FHv6Knm
bOD4lbRjEMOG7fjtBRxemyea1MgBsGTgEFxTBt3NQ+fPT5/tvkgy8lSrKaTTddOWzarjXZaGbchv
6QM7uYS1gN+Q66Q4i+8i2+EJkwCENe8UtFpzdaYvOTz4mhwigFX34Lnc5xblzVkLg7IrPpF+VVhv
mxDzmbQxSyWgNeara6nqkouh7T9i6QolJNXgCeDfVNYHdKUfA9qni/BgU+E8BXb+R63XdYbOjOp7
5QHf8t+XbQBJKO7M20Dvsp+XluwNlVT3LVDvOgh3ZCz8mK9Z6nBA0MYit1Tm+QyR+aJPbNg3BT/g
uPAUU6YVHvuEiyrvw5lr0gAv2t8MGQYcMG1hGUbhVB4W3msXRBvXAmaaOktamvlpcXAKK0J50AZq
KxLmZlFD9tNnk39nI0pX63GfIJt9RzB2adMUP35kQqSV/EE9UoZm8BJ6XCdkhHIwF1flR0mNlL/h
E0tuUrHLmsl1/JjiCa+B46y9sDXTPNMfYN0CQmExFBlBNoVNla+utGmJf6Dc38kcu6RJP7l/pJYK
mr5bQaRT1Jdtul65QunD/Tlmt2RmEhlg6CHajS5xm8wM5OWu0vSDZx53S5CybOh8dEBtDFTlWUMD
DSJDWdqNnfaZAaFiL4S+GY8KFZFSKRDidp1/5rajJxS7zjZtQ0hfqdkJsQhG4l88iTuR1ywHISul
FU4MHlrOpe00uBV8HyxI+Mh8KmAHriMDw3fLnwbpqawy1xZbbFslXz0O/aUekVQvsRv0JxtguV2b
ELueolNetY9pJIDxHaWOjWUkoMdUdydLA26tnfcrG8UAHbMpAmM7xGqOb34WcBkgEXbnVROaMcYk
gGU8SAvenNB6InqpOKoA/fdXpn1fTmFCt3qJLABuctuVvTh8Eqg2cBoFawlaQL2EAEzblsb5L/wQ
NgrWE++Rf/7iYaK6Z3XBM4byf1qTCJDv+xpgJhQrCBQC/mZOhKPfbKNOwWlWtYdLCe8ZdV9XH30C
VxWoM3diC7K1sQqo5RsxEcRSMkKBHnhMhfYTV/5Mema1/LDNVN5GXhC2iZSE0G6XxIjyB0iYI0iu
0dwqn7985gOB/BWSftzBl0kTgGdFyfMYUeAmLUBUm+DWPS2RibLQ4hkZmb/Y30RrPu60fbOlSYud
Z98VBbZd52KbaTOpyzd8WV15e4lCr/ndgCzR7WUzEBLmchpi9ywvW4rXQkncixQXRFqv6Q/OfjQl
BeJhSCUll0qRx+pk6ErYKqgQCXanRx4Xfltjc++VMFWgkqTM4i5efMK7THOjOq17YXm48f1x/l45
w/N3X2o4aPIWzqRk3m0a6WXcW0HK4LvoUb0u35GO5DJWMlXX8R2kHdLMrwXJCSTccmMQcYut5ufh
GAw4hOJoAvI5tJ9rUBUnegQmmWO5hUYza2FRpOUZy9nrbxWK6Pca8dsmJUA6XhkzEhQGML4fKglY
ngmkr+/bVhYOIn6fj2gS3UtAZA6GDY9nTwM6tZPEE4qWV2O8ekD3hKvqWW2ISWI9LAZwTKogm4lH
R30VNt3q/J7/qAmbyWfUozWFF8VHrObbTKVv7GtOFU2KZUJT0MgY31aFXKkFi6Nh8Fr1JW3rzFE1
E1Iq2qSrbVkJqS2klQt5QDi9dVQY2tC8t2B37ot4JAJxHlMTIuSi0MN5bNlc8I0YUEf5YSzqx7wU
i7uObz8xW8zOQchwNFLxDN6tk1Cp51OvKR7xOyH8k9Dz2gCq4r2XFj/gCr6Eiu+5JmLF2B1V/7M5
velawsRSk3SI/8KcpKbIVSiEPYF7Mju1rmfPwSGUn1C4BDybLZz5HA6SrakPOrJx1f81T7yd8qN/
eeulSCBsnMe9Yi1BshMaSjul/H+RUHMYWxHOECVtC00oehlREcFzYxm23Gg/oGX3lDbSpyrx9+aW
rjYodXnw6XWgOItdLmhmox9c50RVKxNuA43sVSTjnM6NZADZWF723CE0CuusniHjxSxJDB/dokUz
ONc0rt1qRCsx5o58w36pXsuSBbDeNd8VxEmWoKyp2cozJl+7ZQ2NJY5DsCEQ7DJyDqBCyw056YYG
0ARdPcB/u/25zl380C7f5cSuXxl637D/WjOQ4J/CH8f/nRfww5vvd4u4BoCyGIEN2TcSRRcrFvhm
wcTeaQBeM0H7Xz9HevCanhZRVxi4yVI8IdQV/ia2zal09JMsXYO7ELLaUoKjg5w21wbKbW+2AZGN
4ehgR+YzMx/EACohou0Y+q/sywtK1fGwqOFaDkVQFpYdeYbFzWAhMDK+b49Dx8n1wuJbx8LHqTfi
I0XYeE9oPVewdWQ52RS1H+cPgdBvehGqgs1d4hJbzuYsKVDF1eumoG5Cf1NFVBjhs0UdVrARO/Ka
0KHiH4H0ezhg4MK59i+Swx9gaxPyCoVZsPI/U4klhUFqKlU6iGEP30zNGLIJcMu/k27X8IaxI9FC
0tnkI27RcBeMS87vaxfg3wPgEIPw4z19+IRaz9kwqqn1b2V2PUH/nWn19MAJGE3OCJ1FqKC6hrLZ
DfsDxygG0pl02LWro902CJDFJShCEthCGE2ucIqu4glrM1dSVeV/6S9i6uMuDZVojRti/vCBzgli
/8G8+DSpH42lH6wAnG4tBpjaXFj9Tq3FcjSA2lxXxdm3Ev4NYJUeySzu7wcwTyP+wng+/xWGs0e2
io4LmWm5Ms7jVPkpKKsgi2buqVMq2FUKKkjgx7q8PUd/rLvivBJ9SE6Cun0uvgZTmNdppg1myNcn
BohGPftARt6hAZI8pUxmR+PtJtynCe0o+jsXIYw7hrCzqzEMiQ5tUubLr/C0goJLipjJDQ3l8yv8
3n/oXdzVnOG7JqNfDV9OnJ7LB/X26kouhLzhewn+4ql3FVkJkJtAmvfxcH+gI1baKdMt4ofD+6kN
YXC955xn7SPg81sxOwTWM2QIubAWs9jyG2cZxNoPIdfomS+6BGjpugaw/DXydDcyAF3iPq8XPJ6x
WlUCbIVT7EDT5FC2ogy1lOd2xYh9wy941486IoC44yqv9V3JSDLCLUdRK0tmr/QuVw0LehyyWSLP
Kmml/zRX1t3tWsyp9RThdu9g1PuGKR5wl37HQAmVw71RhZCk1XYeXE+Aid4RFMK8j+LCujz8n7KD
Eau00zsIZ0G0HtOPcldLigdmMQNajpVK4OW+yLozm6y43U2BDyc8mfLd9VV5U6EKtadBVAlbqkp2
DVXlqBwzArHnQ9CN5YQd/llpBiFROMVc2SMRj8NA+6U0RMe36HK+WAUagH8hEG/52vCAFCu1oVPy
7Cz667idCVox+ya+zLJ0yRFyzzLN9ckNAbRlHgyEvSA2HRQRybnp0vnnKacmiVT+q1o/FQhYp9BD
zWdYWdntEK4gATy+SaNs9iuaVKniXUz6Cko2qZGH4m26wx9hPw65r0I9x+2ru1c8vlM940d5TUm2
DdxBHFTzTQ8WqxXUkzJR+8vwBX0RR4rxc5apU2ox8CESMSQugg6GlIjuh8nq5tkrSVje0IUktkeK
gpH5CUC+Hmu4/Rqr2CY87sssnu/6nvRMaxDPvpN69VhHene/eUkkxS6cacKH/H7RukLj6ORQBGnv
rB0yxZBD5kh0FBkcbSH7oijhugNzaAnOE1ee6IhcUQbztGfjAnZy9jk/K4tBeOkL2CKv68BuRf1F
yWJrGrp36ioqGHEcWYb5iV1wX9inbYMA/ODzZp7A+IvkoD5juwGQC3Bpn9O3tF4CCS/DxCkr3Irp
jGd/XNXZ87R+5EbXHjEKLIYx0UkTHfMGsMit/RSCuYoe1lOw/Kaq8FP2GKy9vs1o4fmsD61HB+es
bGAYmyaGoqy+BeyIn7iM+PLF0JcpAU5nZ1ayoONk0A1Li/PPCDYY8VvK8TbDFA2kmws3mQQ4i0lQ
F4Mf2SfDfK2/qmk3pGMwZ4cf6+aJkTBPnYfmlAEzvhyL51VIAyjedaBzjgYoPFUdzlMJeTMpRAin
gi6ydvfXzfIAANedyO6Ai0XOVP/LT6OQMsY5jTDa9/SceNrW5hJGKdX7BNXtSLYOVQ4AUlEELnet
FTCbK4/F1b9edargrvRf4ubIGK77vj9/OKLZomnsPqeNl8BT1VZncFo2XUlr8f+MJUcCpJ+U2S3i
n/FjMCTsD+WLj+yewmelMl9RhU5KZ/3I1pvlzxT5A4e1ATaEd7r88ex45WTQXK97HQ24XACJX/5u
mAfBXE17FF7gcQs++tClo3dOZr7qU+vhFQX9Qmd0Wj4hJDh6+XrsyIaZz14u6TdIPSqYw+sRzvax
ggncozbvug/2rhMz5982SnwfFxdXWJGz52mi9MSpJcl+H8wB9IYEJXm+/B8d+DzU0KpVeLMrXI8S
b/I+hFRY+fjWiD+ZWXwk1lqCfmYXHn4+Rctwo5M5cKGpxnDWZndKBVJLRcEo3+RAb0pGlOFA34rE
cA2I8e1LzhkhxXy44rFZiyb89tyGuzVJdt6OjKALI7UzR5JMzCkhKymj6TTZc13170yNx7L9TJld
3W6k/h5Gd6ylq5/a/dI8DHjkzm43avgVARq8M9xQeYbqEnl5K0nuwn7vlK+NyGS3D72onihlw0dN
nGq3nGLg6Rb7pgCs0b/1h85BbyqOKp3Zeq87hqbVjQZQBx0dGTfac6FjDTGyk3x/aR/WHwKooc0p
8zoQAUnlO++1EbgT8Qf+9BbEpYzn6gam/TOjWZcGiv/Mcb7Btds2rbh7rkB0xW988nCK2cH9MrFr
YoYr0C7C7Se25TlnMiEwQvkRb7yDUZPW+/OCLtvHMz3udQwcGDQMZccLP2c3cG+3bWSJSh2IHm2c
+BneUg4Qe6jTklrYWDHYP8Ddz9URLWlXmGqN0k/B1Wc/DKX64PIcW+iijPv56WQPtdI3qVuJ18pM
zZbOIp+/+zJ1NE2uRoVcVhEHy439Ks3OnojsmaP6Z4MlVo0INjWaQL55cF3HWmR90ss0KcSMa/sA
s93kT1LiWisKPAFx+pYr+mM8DP6wc2YgsEuSmoyv9zyq0k/tk2PS3ULi1Zhb3Lgeu09vPGnowudU
AlvOPh9dX7Q4Lkj76MPkbLLFEdYw9Kc4i2w+MsjB8JR8qMxgGVbXGVX2DDcJZ/ZnYnzzWcwti71x
DkTIfoz3bhk9eYxhmOl4hkQlQEWYNsLa18jGw9eXp+1GUVGjwxkAg7LlzhkN16pgtX/K9DJJJgn4
KT1cbuHO3Nwm1rXp33bHS6IdXzyL5URTg4sQTr8Hk7PbVQ/Kg6WPDN+nv68qIBUNoWoG1B1dTq3n
tlntNyQuWKqUzn5WK2vRghT/+umlJei5NlPklADjo8YQ/T5MBTbOh+rya4jTnYpgvs3z4a1RDeeh
c/wtu7o7gSk25YloxObt+LJ5Piww/IN3OuE2BdLsnSlFOfDf6CJfngYiMJrtV26SH1G5vsiOZIQA
ostata0QL96lfVto/2KVzZchSiCGEsHvlE2iCfYB0dU1grHuM2ZfrEguXdikYUKNa+uDhNtzs4iS
siAROeaCtfUJuoSnsfuOAg6PBFmlLrjgjQGfUgRaCo/knWf3l9uPX7ChdXpQ2rwCeXlrYBHfBaTf
m55TnJpCBRtrR3WzOjeRI/2PznrLPotTu360/qb7aQEZW9FuLWz3zCm2sunNA2ytEj+XV3lu4fxU
tJIye4u0LHI7JLVoaEIGlljgydSE1sAwd2I6TUlcQgkxNSyo2T2Z2NEdZmCk7JPGTzo6aOnfLtef
9gog9eWaEA4mW0n5yoReCtERf9g2Qu2iNQVHMDe+hFkUuSoWI8CMlxmwuIDxVNa30XWNzyuDtspb
r1It9WI0e7SM3CuYs/k5WXcoKRrU77X/GNw95STxNGjdoFV+7d32sR+/Qh43M+3VwLe8BD30NdZu
mRXq7Tz0Vuk9Ytw7HBlXnAbLjzO1h4HuEZgPMriGd1O44MlmNR99OmlR9G5HW/tcdtEUO4BqFVwZ
06GPS2udcf9IV82vTURe14DAD/3/p/yiEjjKZoMqJJYu2Fr+HGKdQTOn63qGr8kqRz33JxFmBib2
uJ75jfmTDJmfolvscGTMSI7DpqWXcsdNZSyw7S3+6Putzpio0UGgjH4gZ+h9Bh5u4LlbvL+KUnES
S0E26nFOV31RUnwhUM8hABV5Ir4ZJT3P/WAqJfrzhdkQaahhp0W/g9IFHiAB6mo0QTZzqWs02f80
bhkYp8ou7BUS2ec70jHdfU+aWSAkNsS7iQG+U1CzCVgbSuqO5POSFZ3QUEiSnAK976BcM8x6Vt/v
NZc1Tzhw3gpbUquRIbiNeeTyTEaxG6asX456L5unQ0J/gkgQHnx8UCj6os7RPtrqw1V8qFS3qyVB
9MwEGVBHq86+sRpw1mlsLUoqFQ07m4PTdkirfzp7XtU/Wu7d99WGon+0WKjeYl3MuaDU1wFeEwvs
QzCFzA7xvr8afpkH9/rFg3bbss57OEHNq/j9XH7qc1a4Tvho6T5cIV6yWxtdg7NfiEQlRzihDZan
d8HvekavHEGa8MAnIDXpvPiIW9eiFhewOFmyt306N8BQ5FM0nhfuiYsQQMYppkFkQq6bT29eCAXs
2VpKGQOIejI50Kh8ML7yWwYO8voXKAokwiySPW0fGEvbiDs/tMt28EsYQUW+lP76SH5kFgP29NBF
0f3LWAUetSvd+lU8AQgfI8nIcL080nGLK8J/2qJU2LYwzL5bP4mB5lqc47jqbC9rcLSA3SHN/8MR
Vw25rxPigwmfbWUwjH8r/aPu3f+I/op5M2th7jU0RuqMiv0IYejK7SxvqBqpW0kj2mBDVmjfLMWT
LNKJIm0alcsPwZtiOGCDrHmm5nGnTcVWkbL7fbvdiI1DQq+iQZ9X5AHKJgBmOYaCifZBYOswxhQq
wY5THnsFMAbhbt6QP/qVhdKEOGFDcjrizNalVHTWkdwgSFPD/gDLWqnBpLeFbv9h40/t9gWOi8J3
+c9p4UVfgrlcWFKK+X6HP4PFAw6WrkCBwgnFt2Iy82BT1EWWejvmEMnuwS7w+3TO6QxqWNGIpvR7
Et6waO9GkZWkoJbzvilYhOEIxnUMUq2NhBDaVxLeOGRszg3+M1oOOunFinfgBIesv9hM7tuMzW4a
QaG3RI9PmhQ7w51e8wJWSmCM8ke12aW4u97SgVuQAYu41oTPXWOAUnRh87R6dcK+dEoHNz5SCYV3
CTchvWvXBXrVNFqUgVhsUA2DJpK8gsdfGotjzq+pV8X8qOGQ9sue+T5IBJ11vy7HrymkfAV/i4Qb
L4YZvVTq2Or7w0/G91iKOO3io2LcIbL/HRU9/zNLq9CTVabydj/SfHv7/5c7KwZ6avR3UEk0cKY3
41qzIC/SpeS+5mSLvTrm50Fd6I7f0oYe3xUOBU9ob7u+6QvvmenDiDgfspeHcMfMNXoFSHpajCMF
ZT9PqWXMxsvSIC/bubu3QctboDJsk+mgJDtgpUJR5p6zAVwom1liik5T0ad7HGn3RlFu9/43Fp3I
5zg+DvXif2G/+NlPjPuwBpY7q/2PYos7R/d7Phxa9bVkNwaZPI9RKIidpxeQOJfIA9fnODJrc7ju
MRizr2SADME7Nv2A96cDJCh+tSBOgtVfq3UoO3iIDjc5KjvndRZL3clxQ3gAL/KgNMIUzdYbBLln
6ke0f4jv+HAY8vRu7r+sXbNNvzkeHNZe7gAHf/Gntcr0Ddrjgln0elcJFCbkWGFXEdtac3O7xoBv
7/6a49KWC/5/pBrNQbi+2kG4RTf5lbCp9gneiIokTmGdPBEOznBbvSMSHDWqGrOrtMIWgR/7qwSr
aYgOl4vKC3wfQDOIMN6T8yJM/zpqe0Uy7fZqs5nRn85xGjY6q5Tb3iF6QKmDaVVyfpA1Cdhha9f2
bLz3CkuRTbEXH0KmLJZP/kPZOEv09GgyIl/ZHT2xIAa7s6AT3WKcH1epuSIdqKwymgfparaxxveU
WNUfezkO8Cfco6ORaZbI0SWnxUPKtdmBPlTQhJmZZnFjZ+MwiE8MvpA6b+VpnIKlVjDR+ZlEwkCR
tdcAnWWCDjpNINtwC4CjMF7l5FWXfj3sro0jJfOPP3Rz7o23GrfafyhnvbyuisuYyY73Qb+pTIKz
6iQZ4agOHTBcdrVEP3YQ30tCvEaJV4bmW9gH/hPRkzkr6ooHVRnwAboV1iw0CIL/eNHYXvKhOEhU
aQUDVCXs8x0Kn/q+gfOfO9eZGMQbC1bh3bAfd9dx2uux6h79osNXubcvUCgCgFGLzLItzQ9t98HL
9z4gU/TR0LJHXOaxrcgLJRpX2atgtNNRDNAB6HLzbxPwy1nweyeTKuApx3Miyqtvd9VfoTG8knZ3
+cTAb0JsQ/YZ7uldtI5GmExEoOZY2FJ7gDD2CrDfAgzDNIKsInoiQKQYFfe9XJo843MdPRDMmEYP
CIdsBYI9wc38oI6L0vY4Oft4DAGBo3n2Nzws7XTS3nTAwzHIWNUr5cpJgf1xzBxd5yXtYsWzOMo7
H+fm3paQUbxerLKTcM+sHc4CNhN1jCgLR4TFZiMY/y7FFR8iZgsnym24+1oEWo96JdNc55MxnGK9
jnn+Rj0petz6BFddCoZqAodOnyeCwMvhAjD6V+/yGsCLR7+eECwBETx38XoYSgglEpYxwHH05WaX
jXLlaC1kAHXVeXWHXQUzDPDsWM7oA/zxKVe4EQROPfmd6E+kDbe8AjmmZJhq0I8OaaqCuyTXpVgc
9cyKN9/xysPD2OPIdm18kqiZDUIH4XBHhAFAWBJ4ZuSisaYvero6R4caP+39vYHbw/2ncaH+ygPq
PZAg8Kf3nom3LMTH+QRDwn4IK9Y8y76d46y5q4+hva6je9mtE8JiUfJaJtKQ1bSXXgzHH5vZQukz
CzkhBX2REXcc/UokzR7/af5KjGvzIDDfwHAxz0K1D5m6MmwOsUPVSfB4Znr9FM5PTEO/Nrex93T7
2srpmxVpEQpNkIAgFFlYAmygzV7DUHBeTEmli1p8vBstr+/UiKb8COdb7o47J9N3UJHiTR+805+m
gNbs6t2KQicsoHT7pNAer2evj9kIkH4zEfsB+tlpb8hiGxD9ptqt5V73UWfIbFa4Zg9l28hEsL1t
xtQfuGAOxJ3cHaJLV13bzhV6SSbS33Ti7Bu7sxtarJXnv1fYVJrpP1scebfpcJXEMH3Aho/G3nRS
/eF6u9Dj+QZqqH4nqc970V4BaBdZI5I+w3sdwfx/8drQL6dBGFKHPawn4uPF2lnuP2ABo9XDosEv
LSaoIsNIqCCSN7Z34GuNBkg8tefaIlUbdFTpIomgQe/jtn0TKz7xGMmXQ/pcaU6I5ADuc+rUI6l0
yGArOe+vRpawm56FBsZOnV6bwF8zPKEe58MPiJPiF5NQQzGapAA4x8gcgs60GXeLojO4We4Sx2zS
AT4jHZHYtyvnYf3VLvXui29OcALUZULThnKjTLhP9mVd/ciGHl3iwhKfTuKbGZOZmguDFrZvT0ev
3pmTXbfRGvaDbukOoqg28wesw7lLZZ/it1fPwmEwldG2K+7SRQHZ3iBdG/RVWwQ4H0kjzUmc8DDp
7zgMka/d3HkA87HKPqdYxcrfHtVchm7VdvRLrTCqM5of4ynPA8eqmLgRZfxvHaapW6nZb8+HCqXp
Zh9qlzp1JUFA03JT7EF+Jl4YlGcvTE2o5s6w66HuX3VSy2yxRSol+3Wrb+nIsiFYXr/tfYdcNXBd
HPBgyOkR2Z3rQZh59I3fvEjl5J+r5sxiY+QBArMb12E+J3R4zWzoSxHOfLfKaEHDLI5azMVtITRC
jKblNHzOfLQ6sqkKAuSXb+s7QGPRur6+5KIXL9r3ceunxWv6Ob9b35AW7Uzojx/0+/rkzbiNIDn3
PsClTmjcWKTCubf6z5HPtUoCHVHE48qLitMYk1MX2MirU/0hW8fp5ewXik+UJ+1ZI+J2+5ZBY3xa
Vytv4zvHfx808BVrEdDNQKBoTUdr+Qs5xHAXZ4PAB54kq+svnQhlSjAFziqh+y698a3WU1AzLcqB
ZhARBgNdz0Ht20MMQ+EjWoNUw62Jys55ZICC/Duo5aIfx2fSARCmmeFyjm8jIxAghYElM7S08gA+
Qrm1Sxdc3RfGbI5yyBuvxns/W1qWOke8/26t6qOM7/KlUMLPXU6g/Ek2y6XOrsm5pgEw7by0zu6E
02dicLmQheOfpnlulLfz02dXejIDmdgbkUfyB1oVj8R4UKyfwHFs+VmussqIoJWcjtTqttcMmLPM
Uo2Q6JB0v4jbMDv4WOeXt1xDpzTtUeEqqH1N2tQfEQBwmXqGPhNwpLgNzBqNHtutpdN9lxH7U9TS
MMZJELva1lx16wn+91MvunmUwI36O/14AlLO3fY/ZsqY5kz01Lgk9HGt4G79MovfdDmUhYrIk2qQ
fx52nghzap8GwaZrHJl29a6e58Aihda0tqgnxNR0/On9pkw3yAaQG2PnIKmMILBLLDvzqk1YF6a1
TBteeNRokO3Y9syO/gVus5w2SQlzHARJLNU/GeofRSr/pEPoBAoAR2PcI0mFneLyNbzb40KaX6JP
z+00jfiv65YJ0Prrmt4Ks/lfkbBL9tpcZQdjJbTooEtXI1mmqgXt3JyDUIIzFYvyncltaX5Oz0h8
JKW8cTEDxv8OV6PJcf2yIfKLrYcyqPh5+dAqzeeteamnRhp2iVwpleOV5BWcwMfDtvseuh3wdEaE
x+pbn/EFqhC1knIRTgntdYtopLRcCapjtxbosJhbzH3kUQfYQsz/6LEl7G/AaO/xZVwnaUKUy1u+
ece6mubEaRoOpPSfLXm//S+vtKbKyl1lOxEGlN1nILaRwUc3RMRfjBRQS7fB+Riyd4hA9h6MD/wX
mg/5EkLpuS2g6QpwafVBpj33K+XRmwalI4JsIUiI6kojccJs2ty0QbYh4X+T0yBOlY8eBkRXvLW8
HIYir/q8AiPK+SNFdlI7m7UeSDLbeGuWndhSmvi1x0bAlZMa2z54+gc8m9Wf2nyTmukMJJmJh2LY
JMCfVNeusX9CF3vxayiusJWDP2Sy9LeIReC4W3+oo1fMSTFuFSuLUAeQQgvrESm6yszOyR6vfsnf
EbJ4NfoAUWa3GPTQ8YJ4cZbg0G1+y84VeHJFVHRXwqWKFF3ybSnIc1JNO6fdJXuKeeW0Kn3+lZeq
2dQX18Jse7z5pVjdf1oi3Akzt3Ub8e1zGV/diU1lLYqRBKOwm7hvrZiac22zd056yarAU438r/gA
cOLqDlXtfMhT3F/A2J2bxlv3ftlN97KQ8yYshSh+BF0JvxOegxtsi3y3JQ1MbNkaI89dQNidYPH9
Yswd8+ZzOp/WH8yCOmjyXzxqXM/Z+JJeq5q3wv/kPz7Wp0TWm2GDmMYVrvUo6Yy141B0cVCP4nNq
phBcUL/MZi1wvGrqwvADuHenAn1AzKIWNMjf1XN8TyJiJZ83nF83uabzhLh155TiNn5FU7mxgRp7
YBsPDXMpK5tm6zP/19DeC+A7xKjp96z/xMtcKR8zmL4mjFAvXhhRo96iILygZEeS0+1ivGpsDiSj
xElkWm99eUcA3S/6BLEO5G4D7n5dzBOcoMKeHH88xhWx+G5/MDF+SVac6gIurxUdVoETdujccu4d
WbGzxY9v8iKdx+g2kf3IB3LgS9il6yjowlEBBI757x01EH6IsTlREnS9Dn3ZKr0g6frPOuNUPSFy
8pZi9ngK03gQBVozqbrJLTOxuQ9ITNGKlHNoVpXLYSiQxs/H1YWUWlI2ijDust2aErPgtxQWXf9y
cNig6BSDo9b1MNYdCXJA+Zf+YlijdrZmyUlSuJEUnoeXCMPTPHKEKndstVbDxOsKVp/PgJ+hjacF
E61h8bG246FzMEsD3l+yOwWMKivHj90Ts0veJd0q5RiG+6GuEW+fB9WOvp6gvLfg8F09Zbiso1Bb
wir7IL4VhEGePQLk+mTySDmItgL2e0a+tEwv4SL67DI1GNb4fwNJ0G0k8JpvEU8Q4GuCn/PB3j8F
s/nonKa7yYR1sYXZmmTzsOtQGI1FjbSh3gSIu/jipspU7KLHyZ71zk5WxaaJnLeckSK9GIDqKHxq
sptD07B2UP6wom1GySmZOZjnU08SfZGoooGdxly95LM6ZaD4HtutFAEgpNyWdxL5WcH81noDPYgU
wtdfiM9lzKaOt87ofPRxTngDRIdh+9qCLPL1HPcBuOUzwjxWuB87mxVW/O/5PCjeEnkRe6Wx5EME
Zn+TtVHSL/L7emx+KZg5SFr3uwQej+vFeBNFwOn79I06B/EzA6hQfTTMMsXfW7rsgm2mHZ8nOVp8
Ul74pHIfA3wU3SfOHx6DIr+WI5UPHL/BEckjyP06hvCnRcrq3E2aGJkyP1323N+gXwjP3THWbQlS
0YjIHeyN7Lm/KLpedQ64VoVoXlRM+YrYT3SWo2FM46kGHYbBOnGen9xG0MD0UPdTjFaTNOW2JH61
4/+1x7SdkAMm407HwoGDHgO1lgRXi0IDupS4QEFuYxOlQDnuKPPdqH2HP5FI2E3NeWDEbk9Rd3hO
054rxC2Hufz1HidAf0yu/hxQZxGDCR7czSDfe0GwfzwLJfX4kSGqcNpdmXbe3ek/zVtnDXBuCIr7
7LKDBuA1XwvPCpBQr0ihOWcYAO+HENKuA8UiZt94OLe7Ewrpxp/HHi9UAwJ5r3DI1X+rarOCWFR3
kCXBQ9YwbZAC46Ij4lrw1TDo0PNIR2FfL3gFZ+rN4J4NkJysxkMGLyVgkgRAtT8JPIsVYALVSO5W
UFuNRVUwUNAk22RFSaKiJW5bGLCcsu9rFP+Jm40H5JrahSqyV/Qw9fNZlZrW9perprKDT5oJbUZQ
lKVzNt0sjLQqEhklU1OXMR6W4XymwJMcxSS6E96ddFHfXeL3LIgxZzmUwrMpgNDTKBFLf71qevXo
39CYQ7Hu8KHwuYLfQURTrigmhgo+tGc7UJlmK8Aye04Pt7mkhY8dcmHFPKZemv2WP8WMyWWrsxtj
F1+7bLtW+fD9o8zE6iE65bp2BwfAbl7YzHMaZyQ6CgiTsxNOi7mpS2itWIDlVJaVJSTfk8ika2pR
2XZ8qTbOqJCNBqmA+O17/zHhnA+ZCHEWjATZ4slxTs3kBUagIm1+ixYicRQWIjFcNM262h0Ginv/
lHChj0kjRXZGX7Ap9hyNpBeAYH61LDFHJFRCAJ8VxXJTnJZ2If03BsMuG2g8dh+9Hel1gDh77+6h
GQdG2PMphdNuZExQ/Ey2T7RB5Bt0tEXVHtK4sq3sytRZ/dAleqiHWpHw7u+D94FEBzvlWSQ9qHLx
0vppeuHpWbRolFQLDTfIeB7/hJXe9/8kH+6xwOHPTh8oeZIUd0wMecb0hDPLARKoNNS2cry4zVFY
F7G0uKOUa4KWO+J6BH43E81E5Hpwy4j1claVpLW4Qlkmaxupm7TR/5xNjDuJ9QWu8CPd5Dy5f+c/
kLVl2sLqWbJpalgMN+heRSLxXbcfE8PW4r5+RcoRkg4OxUSQ0gFrxznHBaKjxz/QCf9eyAiTgTcr
Kg4GbyqRip0f+wK4LGln9GyLCfrO/n8JZBFtDgQdPSyniTysN+0jtIB6mv6K/3x1EfHD8d5Jld5a
0p09hTyTEILs9kxUyjgruqas7rqVOt6fd1vbZlIEuGseLU5FAeVTAazxWB/PcpTUNZD8Gz0uDc5I
uqadJ58q/YqTT8NBBmRqBCRiQpNoxJGZ5XfdMocf9b5itLGp+/HoFPRprF0JHaTMBvesPiKr+4vS
Vqo0FnRnC8BELrjHRk1W1R31JhDQNMARBBiRXYnoIgws9SKjOjRBOoPrHwAzXpksZa6aHmldjeBF
Flzjum1JeOwGSHrsiAshqj3towa6Cfqz+CaSzA/yv/ax4I7neXAUx4Io0krEUPe+8I2F8NYM1uWi
3TqEpIVHOuXXKGQJiwXzWJFxvv3x068AsOHZseMMhHXcjHqsoY04LN3pdt7X+i0Hlzf3dd1yjc2M
QJ5ndW3cMr3jjUvEBF7RPmOmGhMqR+5V1Z1Q7EJ2Kw3cxz1dM6O/JsnRTJDp0cTVIJfKY9zDMuJ1
nOJwQHJIxUcB6QtsCteMf6Tu8AqVEWGY6fvinyMR36uLk4DJ09xC7gufkz6oDSzrg/epOtSlWsq6
aZZWQ9W7W7f+FHU8gaTEztbYsowjNroAsOn/+IPuxDkIu7ERcy7wuPBH6Wxx0eLq1gYViQKbVWzq
5ozCo6arxNl485anvHcdPW+l20OTg0vbdl6wf0UANUm8xJQStQ5Hb/x4pU6OvQBlMnFBMTkywMQQ
mhowofj9lpq+3CsGxRft593e3zjkNAsM2/WmGSWYNg9VZtvxBudo8kJKzjbX2SPQsYi3frAS7PkO
/6ZDeA8UINtF0EpaZzV+1vrILC6FbebVh0N0/381W6Hqoam+m9dWG/sagz08xl3OIoL/QYZ3ri1X
65uOQdRsHzp5D3qXxh4mELU3XVCMnNTPvPDtaClM2+QZwtv74YDkaq9qwMtFiyjjye/U0UW8KTAC
1/ATnK3hfWhXgzNgD03yWIFsTE1AMCx9jS8eJFH5EyKpha9jq9YGHd15kUv9Y2u7JyvFU1qYEO/o
WzCKps8WCb84753howhLYza2csHvcAttAWk46ty6bzTyswkGNdCuVqSQLTIC9qfqkkz2xZqHres9
wvCRzoOQhyhEoe++pIQXWiJORXlBOjTbzrmZJLagVLumQHPsTww6ukm8m7hExHET98iEoQCRLx1p
8VSN2DEgMeA9MWI4yoCaC/YFv/GznsqXwqHVfIqznKHwVpodegrpF7d+7j6XosRv6QW/FxHNAqu3
nPPrg/q43ti1fsro3+4uuVKB1ycKcRRd92waQkMHnfDBS6mn2VaVgVpbHC6+Ygwrg9kPfgJ9CQLU
rvA5AC5a8O5F3GAOAAQoM5r1femDCOdcNeJKqnNtpbsjwLgQnnfYi4x15wV8yd8/KbsL4D4S/iAV
85USQH9+7q0/wLxZ8IJLF+D4vKQvDhrNFX5NlokNNP+SMq0ZPjORDly3pYe4kYgiKPsJnVsyg2y1
ByRnIVJAyV5TMESiXq5wRfZTR3vrmb49MWhh5cX3bCi3AXATh8ilah9ZWlBVw0LyhmrYHvH76ziu
jUCroElH74njTh1SNASFouyTyqQ8HV8Gk4OqJyIqHdgDBOhULHK083hR/moK/I+nA7gUzP9lpRvX
/QiggjwT82cyDBQ4q3Xdx/O6zdJeu6g87yHa3qH2IqMVDCjlip8BovreJbYUr0mtaebm8wS1N6NE
zmFcCk3B9GtWqRo+KDtDnpMSqAXA1xAnfd2Qc8QOpGNRI7iMP+seAX/mgE7JZvo988rmA/S5F9uC
d1ig1XGnBLMygtiVk3pfDkBczx1a/eDi00ac82MgVRVbGclyMpkwgqVUVx9euw+CO7FOKygvXrqt
hACOcCCQPjuFgtz9tzgxuz/8BawlgWQzGMgB1o6Q5I8NKua6K999K0OeOEyROxQ30j/+RhrEgjkW
TdYL0yCZZac++ykruKyxLTseJLMiKyO/6Lqz3PPyp4jZGddvYTjScak/QRydY9pbEobWkOytlwQw
OQ1u/FppiWnHD4LC1/sqjscbXcpqNeBSmVsCoPGM61tSYlUFZUOl3rG5Bj4bV+7ZTzX4k1hwiA2b
v6YLu8g6vr+1R7AOyQVPIBEwPQ7UPrOwFJ8HISkKK4x+O1jcTJ+v7uX0deQR+uN+HNEFtTfHijdP
opsmB7vQ7T0kzFaYcYULOFGC/UrxPZLAn+nr6OQVmU1E++GOZ7GaBGoXbV5n/vApCoXmU/1YXV0+
RwiOGrnK3QZ9qHYJCcAzDP9zSSJ6zHZyvA2sQRhnkimQ1udZFWt2FO+okzkORtIIOvADKW5jx33P
F03kSQ8W55iev7R6dub8RETAsYdOiIFjMHMgc3iWbF5nPPQK1u6W5SkSF54XByrGneXZaByjqffu
vssorNmDGa+Ad/OgglcZvfqIMwQQeKnz0lfW/ewwskbZEdYmqxfkkKyhUUFnPUZ7xpp3k/aVP0V4
An9/U2x0K/IjkMJaPIggDyyCJW5/+2TheJqUwnzTHz54UrQQNHUIJagTlfrgVo4YqBjKJ3cquOOd
9GB+gu/4Z1zECUg71qQ8dEGcRoOOx4a8Zsn7sWMosNUMpR8PCMddLCer+kGvTei9hFGlBf64joJn
r8OJUagzzTc0Nzf9FYUrN9fcAEBhfYeSDirqPV863mME8noyaBtYv8E2LvmsSztzKxhPSh074G6c
ZTf1zMAXojqn1w/ynTBUizKVjUAbi0pc9X23v64ymvjsmTt8Bnkw0oV24aPzxIlIeQx5WxyXfcPW
0SXfT5HHQFgFj/yamZ+fCt1++bvI1TpaH9tvoDVETinU0wKITp705/hqwqgltiG7n43nG0Lpefwl
nK8RNTmZ5IMU7ur50VmIil/55Q/UhzePsBwIzgmVWYS+YEYSUuH4WfeEjmAjgZ6gXtDzxpqiAmXr
qNWsb+XSuNhDtHWOTCq8smFbe/2oe04ISuX8LBPPnoA6DOt/CZb0242Tp3oZiXLCh8MEOWTHW530
QHMqy8Mib/7zSFboQnvdtUGM4ELIW7ZD72UlFyUWpWgwTqQHRkEfmSOL43mtmm5qCpnLUEqDV1oB
7oOISWHxIlKdZ7t2tWnrpIeBGsJftAe+LmBI3tYmB/R2AOr2HYGJUdYdEBidGNvqMFc5g6ddngiF
Qk4uDqKtJsX8s7pGoAiDHPPq/h5nUOEjzubv/TcZK1M4HY0t0nIP0yMP+EXMokIMoMhOBiBn8ThB
we+3GER6XAX5bBp/ophgIO32OamMKxwAVGcra5ZgAn9aLOcTjtES00BeahG3iJB5pEjFXa5P+T8S
D8Inu8+gULOaHf7e62DurXzgUf8JwiADUC8W0PtTEkehHbdmo9fakmr/K+XP5e97wFCtD/mD78eQ
J8amIhlmsJaUqfi+URdyirCt+qqVCn4tThC8HkqVlp4Mb+/HkAYw2OrPl2HObu++xydjMzTgQcOL
J3Y/p9g/fs2auSVOtpoKjlLMWxEyRXLbYkDIYlYR8Xopn7tQwM7Al8HuDZdaBYO5c6R2fG+M2KxX
tRsWDGPWpV85eyFE+tBO28FqvWDZIOeZ40lv9+tjh+ghp4LbXTDyBoaCUHnxke4DhVxvPxOW3I83
SOH6wCjUtBqYQIbVlwO5AWc35opu2nhe7Qu3Afeu6ySxUGNOMDbOLlZjOqFG96E/yIeeuH68eOIh
jIadIZbZQeeD8b1K1okRmlJdhZr9Ng3sUhu0OahDfhlMBZhHeXoR2KWxU6YgN2mD6OXxp7U9Tqm0
0fTSqs3OGJmmd5UiLF7QbihlXJDjR06A68jPkVe7AqUXuQKx7L6ES92H/z+6v6+CImh5gYYPLzN8
i0b+TAHwbbApw05Halb3BgO9YOgouEa1UZbTsbn4BRBp0CIt6VodEnrIBD4F+bzIvrvCmbJYrkOS
1Rk7RVss68NSWSmq0WEdDqO20056KXY4drxFdegXxeG7Y9LCAYl/O7cj6DOGf3vE02JLCDNsv1BA
whlv00iFYV8nRoVX1V9NjVyTYea6/2MJZQ7IzU5tvXD6d6DSE9K5HjicH435d/qy8aF6qhaDWGt5
BG3o6LtHYNY4EsiJQ2dYytu4jRi9gPTSnfc/+nus89QslNeQAN8gl9eFA2fJAOVUoeZldv0+TXK0
b4+K+/Xym3tBcs5VXVN7kr9wNmKVPSFYSp1DFJvMfX+X4cGCQKJPrcyvHhHfNbEmr7Ml2HYTv4mC
MhK2CRq8tlHFpE36pBnEWuUD/PKO3/+24TEiM7xqmh2AsoQJwtja66on7QQVnN6KZ3n2fo7JnXXF
8bsb3/yApcEhQQL+BCIrRV5787XuDPvHxSAZI1z/eodRZNs+Ag3nxC2bIS625Xh2aOlhGggHHh7q
rS3NM7aa1EjpeIOL2nEdDKOZ86t1JsAplv8Y0NkjfRe+wwPXgbru2+NcOR13l9+i7zDAMVfkw/9v
W7KBfpy2y3r3VBOXrqVGaNRbdDgWVdve7vnFU3z7mM4JvMs03PipR8q3r6/sXsO8zBqaZ0OHTxQy
jSmx3TSEEQe8dxWrpGTMH6OuoQmZOGkGgh+qiROKU0qqiHxqPFqf/AhT59DqYjj2lIrwW2Xs1M94
xfFmT9h5lmxKWvY0P07JTOQaOIWlPMt7F+fWeeBNMg7pahNa/YqtYkOSIuFCmcs/klB3qHG3MSm8
EJMraRKmLzowsan5bAE85evdaGV3ENF1w83YjFebPDFLOJb06hjtHWd0zuSQRP1K6OvdTpMCp9/E
EODDbXBUSzJL7m1u7i3dvV0l9gQSZy0RbWmPEjZ/pGjnuujq6vfPZAsIihGckenEnbJIL9rlH9Oc
V/K1ySh+SOGhjMnR/nhPRaOqLdjnQ/cxLBql3QtddeyXOsi4cVGOB7cL3y7lNFFAwx2CwAUkbifI
+5fnK5GcuUvH48EFXLPxsKdcLQvVZ2PCPW0LMOlDCitoGCLy0lVRptRkaNfpuYjmauOte8AlEIhM
UR3Vg5m/vlLRG6jL/r3NrOJlWzZUje8odh2bRuee7Lo32LtrHiqTZlYAf8mnkwEak2VOs8pRTBuM
w+LhHrGKGaIAPC6GQ3Nn/AQvjMeyU+frDrSBNplGxLE+a2m2hpHGT+Sp4gE7BrPNpnMQlGzgEWD7
rOe6Y61b1FOH+ZcXg5O/dMV0Etb2LNlBd1oIGsSpIYwS+eDkg9ZXvDWun+sfo+yt4p/9bRX3I0nn
pmFcBpwnuUlRtqHBakLI1lEvv09n6WYAvgCEhb+8RtScf3ctaML4XcE3F70L4d43l5fKKJWqee9n
J+feCLEMet2jRQrbQZHt5IByxifkvzvqV6De5kqiotCkXQkb/qa8nkn3Cmj9AczYCgOZuKvx+8lF
5cBEJi5/44AbtmhCqx1JvvrlH4xCjmf5YbNJinfpDwKINY59R5mqNmX9dJ19MGxgR39RpsGuiO07
ZMVaLFYFDxKj9Sfk5oZSMAiRIvj+ZP1knSnMGelx/TbjfkpdwIlCvbWg53rc1cEa6Bx4Z+CuDIbe
A0B/kokKFAfmvEGhlYIrzKV10p64yg9sFnabGxfhVcFtvApMBhlXUfEBRQGNYcX0iCrGUxph4yph
1n1u3c4We8r7GxJsV4FqkJEG5mKK+bp1rp85Qc2weozV07c6xS8BUjbF/Aiav23FNoRNfl8Zkh5J
CrO/9dqEje5AmG7uCE+JZcPvQ6fKSzM3YpAQQnw7+y+WkYLaogFuLfT32qMMgCOiigmnCH0bFwsq
5GPRXlZ0cZHUIr+grOREw1fEY6Bmvn2crGLXwWn9oOLNDI8LcdSXFVsbPxYOVaRJxwDgwB6qT04o
lkqYASmfMGLzdgs87EJguMzCUxpoauxF/ZHg6BQ5xL+VAJM/I1V9Sv2clCt+u7BGNaz+DnYRn9yl
cw2SYG8b05EMWtrFJ4HEtu13woTPwRRc39nQNOA/gNCFUhZ36d7VKv92a3Lo/NU1ws1e/kRUkHBL
9df3XBmHYGZN91rrJFLza4yR/lFmAPicX/DJM43meQ/KuuhxpmUvhkkYVbVTHz/lmUuRbXu43Qx0
Fs5EN651gkvhPOG3R58nZFTNZcwXywbGUBN1X4DU86CLD2jV4dTeOrPleH2XRS3/u9Iiyh/GeQoX
KsE/nbF8dHsPTOJqvn+F+4A5J1B9iulhfPFQaRQ0kpWlury64htbYhQfsJJKek9V3Buf+HaG4A+y
8fN43UZ5ILzcsHpWz83uKv/tY3Iv/TSZ8I9eAs6skqdb68TgXQWTPRc81yJ/Nw0wSXqPvxVIphOo
ExVIBzdGQ7QoDR0Cd/Ce1rmweQnv7jPySkQbDdr6xmW4wQEvOFztTAccMDBdbe1sbLoonGU6GZ8V
4xBdzprViUTnfgCArFGnOLnMmXQJYn12q2zTBmjmVdmyX0UVwFqVbiTgoZBnp/eyyb2Jht4+GxTD
mfEVUjX6TYgMI7S8J7I2L4v8tY302Vk84n1YwMJFw+0Jln1mbbySw0k7erKLXBdrunSVEIKycYsi
giZx95CQUMLmR6xOe+q8vUjguWRYWEC5NGgWtpHxxSIPMUhQxHCdRlnQz3F3zVyRgMylfeK3/rwo
m3dehyDkiOkhd0vaerb2LwtXxxyNKvVhnzGVDAC+hSeMbXqvvEWOrCaIFT9QEWcycawYv1rVykPS
cUpaycWbobBfSLafkuQLqnwaZHqIBgxmPblr6FbsZW0Ud7l0xgbRyQLbf8T4T/1+bEwipGvapOy+
6ikCLbr2VENEIPv991ajFSIaNXU3mXo2j7wPJ4IisIH5rPcW+C7RMfWSm9AYjO/lJEF/5nE9G3f0
YK4VSHtVZmC4mUtuGKrmVsH2aSpMtDZ50PVYZYdwp3rGaNUq+MyAb9dWIarrS3hvc2wKNiGX0zQR
AYRQ7KaxNLfYGm8TGK/qYvIOkh+wHe0JHIcib+9jYFImjI5+Vt2YsIAc9IA9ogHLS8/tNfq3Wp9p
P5+ndPuApy470V4WtIBT7CbuCEnx2soeWZvAvDvEO0qffRbafMyOHNDy2F2w5gw9hzywm8vhJuaP
pBvwENJyIr5prK60X34NF/Zpgk4w2EtrMp71ldvithPsPl89IOlJJmbGImkYto2kekvxFMlYBGH9
GmvhULCXB/kFXFyWwcqWckbGihIbJnXjd+56mk6uH8RbtCYFW9P+wIN6IxGp5CRGUI12KYhPIem8
P9LZ+e0pa5RCPICEWTdfHdxvBKVBuyYIgCzMTVALiIc6MgYQc2lRP8HM3i71n51UIz3w52fDmD6j
jqNZzReIpPkdiQ65T4509lSO1oU3PPtvZHcLGuqT0VoUQJXUBsyA8tgq/wvl4SKTNqfMUhPJbrKb
KxdfErW0xMAynhL3DPiJLzPkJpeVtbu1MpCKzhDuuM10cU6xS6mAOHVYZWcehh4HsOQM/brXIuyI
xNlwFiYWmMmJir/k5mkV8lmRKLWqHLFiBUQ9ID1wBE1U+DulbK1feN5Gx3eMJfynnQsqBLeS5MaX
UdYUdV50jsTbmqYKWWnL4NaoNU6iLKc9H1qGS27gWZ3k+hM5+jPKJCIT9/rdHDHw+Ek9Co/eufCh
3RXDTwT6zkp6Xs9oNZWbabu5dyXnDGbvWiXLNSrnP+REbu1FBwBM4fON9OXEvZRmKcqS33Z8leZ3
+hQXPiGWqgyTs5nY2CRyyRv86G1Kz6veVF6vM1A6s3z6lj3ZS1tf9YZ+qkZIV64FcT2GU7nXQP+/
uRl+aWp8Hq1akbM7vzv7THzrouGav29aWTWpF3lP9cxO/ObF2awC2hrFEd11TrsFWdP2Tj5SK1Yx
fUosrdecho4dFQAgAfMTifM+nOXQ2OgRZfTk980Lxjs3x0hb/czYTgimG64VGo9kzFrifw791L8J
B6EvkujMg1+FN/XCtL4bp2pkzsl5sfc7ZGcLIWba+b3WNcmnpk4TaXxb0N5lLD1HXB2h47swKRJF
HyFCZG7xXTtvh/vrotW5voS6waGkWtAEUkVZL/iOJwO1iYXPfHy+TYef+6WtLerAfpWArmGJ2GGu
EmiGQc6TNKrcewOR/rDKu8lnlcaPPyPE5x7swHp9Oamn8c4ufDSmeW0o7g4c666XEagzqw0ooE5v
19YTK2FCk3Kex8tJ6LoeMSVo1+fLllSKxQQQuXpXRxy05qCWay6BzyettOerqS02IbFh9JqTEyXE
aLLR9mejByDxXbMvUU03hWA9my/b8aU6UIRNLdM1LNqqSGHOwAQXblP9lqHdPMFEYfmehBcxKIju
OJFk8hTQeHNOlHB3cp/n3IeOKGjgRgbUgrDH/dPtF9TxNltc9rDzkeOcdGXFuOJHQ6eznb5sPfMz
6bus4Of90IGMqY7GBaSDOSre5mEuFNOwBJ0iYXKYNHjOtr3wSjaM6L6UusTeUBHnK1z6mHzUNjpb
wWqzoFWPa8sR0MQbQFJPYFJSc0o1inLqB4lsqzFkhfosi8S4pMgTkxOsI79B7UXmIMb8tQ9uW++B
8Ca6Hkyf8e6T931jZphCqJo6/zt9eyIWFSEmk8Btj61ETMEwPYv0fSVdCoDqsWhWp5aYBg2T3KS2
oqFY4sAAxQYXFESd4qKj1rRyU55S1J2fdbFHZjxCAOiKlgThNKZXvfn/1FQA53TigN5R5d3vK09W
VWiIZXVB8R+l6toZK2aVUBZ6QyjHWUUa2FKgy4sJDeA4gwB5rFu+Q9f53mqjrw5ZHX3DvEn0fZWw
m375f7Io7vTLUWlb6zp3TYCO/qD5PhIole03MTVvTpq4o5Gi+aNiQ/eqUtYiPe666VvJZOl5MXJN
cFhfiiulFngNjXIZK5IBcEMDkUUbJR3VYeXCVmUer7hIbxIY9u8/Go6dKhqtqqdFDqZTBvgKRiYs
o8yfGsaLK9SCfGOQ8QdhxUk+CR8LS9DbsQ6O2N574tDkPcHF59YUr3+mcb8i/yhiO14h2bwQqYy6
d5zDB61iMYycxXtIYbRcKYZd5S1qaY5Xgt2UczpzcfTBKXEs+qeZ3rhUC5X3GaKQPqchphTNKn1v
BHgLYm3wq5HRe1ZWKMRxJ7JiZpg0QEzp1p1yuTx0kMn0lOS2HxRQaAe7uqzr+fFRsu5wamrV2vtb
BohpBvwH2nDydAoGaAKVjK47CPvS8d3oVyRfNX9X/IMrPNkPMdpOtTLach/pXwJx5+PJ2jB4w6g5
ZRZ1lEWrVjwrxTYTGzuVvr9sNThtbX+5Ve2Y9rsZZQ4puEzi7Vrb/6tYjjXsgeYCuHoa59eUDPOC
GHzbs6X6yvZhKx8ByGM9nqcEqvJT0Rp7ThotLbz6QoGRv3up2U2gDL7L7xyLlI6RokFUmfT01tSE
OgxSQ1uywuLA7U/8K4MRAhsqq2wvb1AVJyzFrqAh0NG/EX5ftfQmSfhNCV4iC4rIban9NXxA0L3l
R1Egxl7n0ip5kaPL0AOUVPnnp5gmagsPwnIXvDQNTU1Q31PVDBD0ylcDg67Y8dDfNXtvvbCektz5
IaoPtggz4FgH6PTu54ZIZrYbe271Ba5dnrewYSmQ4rAInKTOWseCEsgpoe52lYYJhvbY0NWM/e4y
D1zigmYqEI225w6BhYDL7DvMongYoLci9o7CZ5qsfGzkaHvMsHf034iKzZ31XlKG8oJ2Zrh3iUaz
AbC7G3KPf6uq04W1ZUVSKNh3KaBu4UlYUIQ1coI2o3fXNtCN/Z1/zFQX8U4edg1xh10D0pkVEXLK
WluEL4UxCExQ5fO1YtTZrRIy3mxkVMXv9r9ZN6Y714MzgQBg3ZK3neaq8Ue502SwhT/f4VKBltnx
lO0mtqrC7D/tmphSqwmINaxjOKoP8F96tCWG3rQgQzPpJ1IsgrKKnHvAb5sOzBvV1i/FPFET2L1I
g3sdMjBG5mr2CG82HOe97Hse1p8w/+aJiM0qlWu85X26fgdSmQDCB2GiVrxL7Vy0Q267hhZLjUqC
aMGYf+a+cI5l6OOUcProHjcskb8wOzo4owixT+jaBN8G1DjuW2Evxl2F147PUsETPulotPiJdaki
azaWX0PkV+RSeAgKj7E0quNdWK0MnqaS0wPDeLYUoPcUubni21Pwd64OgGdgW+PyqA91lSYfwN91
yiPlL/LI1GJ3PX4zEdWPOS1PyyXweL3h86BSnl9MhJR7y7VL/lTsBX8KrSZnfr06y5Osm/bkMeNo
X9+vYjphODwSg9+PKoZZu71fbSB0mym9ZZVP31BTxK7qu0+896B/6uEtRk9UWOYLDjSXK5/4VR3I
Econnhs+2oKD8s0dnzAwl4chSLm0GwaDerI0jnjfxftwBfghOgJ4qyz4VFkWa+9FCj+NyhKp4nCt
EBvLQ7VUBNFJBXQ+R8zhk0yIvFdTUl3JgvW9kEzxRnB/7JwkfLi1RdmZOiXnpBrw5upPNByA0kdg
J4Z+DxiYDmLawrD4Fhx0rUJ/UoVzZ+2CwM1d4q/3vkA+b+m4tJvFQNnkSw+bx76lrQD9d0HtooAY
w7B41ohqbE9s8+cB1dF00A3eCiK6fygc5I2ihnsdHq/YfA6BPjFGKg9fBPByicAiNbKTdrwnHafu
h05xMxwcRtb0uZHwsJ1CHxX07ENTg3LwckBBSzR3K/gISr9q7M7Y6xx8PCv1N+VjOqKyQ7iT3DpB
e8Yf7ZcpA7SFN0h1hDo8Hq0o+Nd3ILZcSZWan6UpQO3iWrPop/zkIlpkenxVuWboyK8bPjz22AOD
jZPChxVmnthHufembdT7EZjuKUpgN+yoAJ+uAR+hpNIkKy1gEXtoC9LIb1Vc3QwDVG6qQLZMOMNl
Yc1Zto4WyiNGTHbyG4jZPpxr3el1GgFXQZU1BZWqHfmJeA+pXZoZenVVQeUd0JEgHDKUjP4JvNqh
aP/lycAuzNp8i4j82r5tzckdM9lEFf8XxK/PfqkRRfIVvV1VIR1JionSmVX67NLTX3A8cMdeq8qL
K07ieD3aN8aMzsWbLzTIBiWXBCcKWCmW1Ukd4cIMAsDMxZghPmmjobfC7C1Ba4hBEBYqydo2KQRm
P/5Kjur419I1kyIS78a+gHpXNhRbn2yIlNFUiompFqCKrb0XFpznVunizA9KiFj+awHEG/D/Ku1+
u6jxKh+YX3zdzqA5ZyMC8T6Ecgx3+pXymZ//Lg4u/JxtN8+GEVeQe9W15GmM86H8EbJWK4+vqkPI
GP3iY+7SbivwZoCgAXUCAw1e4/mm2x4eg/L8PKl2r6re2AH4/LcsvAcSMMlKih0qUgGF01ojUJzn
IuVUGg5hDe+IVZWJ85ndkgB8yhpzMr9eXZ8d9VMcdY+SDJjqKXVeevd6GvhQ5WGiMdcZekRJQi2B
QmXyYxqJpxvbj5055apSaJ15rFQlO/dqWtbifGk3jr9NX9aYqHWAgyrSoi+qSsEePpWgioQOpfWi
n35W1aWk7V/3dw/+ZllR/WoQXLWZ+VgDrv4WcWkPiyE16fJxv/OzbCWH7JbcNJBiilCpHwOTJ/BV
c8E8VsbUiH68dVNxeyNyD4tWxbthiEJJ4OrPfknYsnuUUDg+SsHEfRqRWrNEhMBhz17vceyNpKgN
c8vs+9y5UjKvC/y0GvWiGSfqdEpkwpiB7aWXdMSXR4OT0VdKFrshmOFy8UdUcgWS3SKPFg6lpkW7
/b8nr/gmjPYS37vHaYoYXeNyzEJ9Pe3z1f7nNutxv0Yv5wiXYfUlzPlRKiePBGZt3Lks1d1KL+sf
ZDM0xNWYfPzp2BgGhq0+9+PX8W7nmjPj+zQdgqHOuKR+IZuYi4K98R2hkbLJ1pPQmKv+saCCUW+M
kMIQJX3HD7qLxwf5lg4psKEoBEnSb3sNYrR4zRSr0Zq8cSzDAUM9PCUCAC65J9wuwgA4Uk9uPOyX
JOCCJX3ovFUwWKSP4/rForB5GNoQNAJZCSVehJGZzvulFtbErmXq/NgxnUbF90v19J+R2WYkMYVU
pt46DBjH3YdhMq83O/lYbVAmuX29s1kXt3jNe94rSfc4xn4U0fqqjcXqQmeA7AJ9iZTizcivoXxy
1wXe0oRRoKp5FlROgx+iMClrfDhsNKEtTF1a++/cEToWQgqBFg+4OyJjKxXhWOV6l0HvUO1HTvkm
15trNHU0blrpRYFIAK1h2QxMB1szh35oDy5Dp+6PoKVuOl+kWlZz0bVxL8ZNMApmqEghvOGaBKXo
YaFQ0MsAE2zhq/XZvQIV1RS75sOL7kE9tr19nvx863Lnpr5ehSfDHpulFsSlQOdLgN6tpkuyvyJk
9lJC1iHnqzweDkkrJrsXeYhgHhqlvon5c8xJTrPL1uI/Wsu4XPwbvbkajwETdSsh7r2cpMrLD5Fp
4UTWBv3FH7PY99CXJIXoYoeBnZEP9grjbarFSMC1ARxadBNGj0IbN1gGaxRHJae9ohbwosqeZXiC
pOLq6s8LxR+uSWypEhQq8Y9mjPlzT19ZsRiorF7dMCNt5nY5dT6ermo1XtaSV94hY/LLPX5Tov5b
l6U7TjG1TZWHwrXxumIqGNijqph8jMJjsSJ2+fewl0i6mLbo3I8MsyWPrQ3uhFGi7yhtUbX28PG+
5x0htlnQzaPMNx28HErNvmksBY0Ys2XdzQNg5nHrxxMks9zB62p7hKKAuubkf1DPAOjsn0MH4UJF
VDga5DlT1EsS0z7tks5UPTk6dnZIg693LgMhMCo0AdMEAyPT+SCoN3slbTJYzcc75DlRr37+u5Wt
28FqiEMCKWrIRREqOZGAkkUaEBNuG1Jih4xK5r2Ea0AqEy2CR1Z9xnPXSAwgoqJzMJgfer4QYH11
XS6oDPM3b2Tsc/7ukSZy37EpF5NVCsb6bsVsQvX6Yr6is4ieL/F0nhemyMaXuz3/8ylt+e0evIus
Qw0kL55h+61/sR08koOvr/72tucuypudI8pnld/GEMXOBa4Nf1I54PxQAVa+JXw0xwBvd+bid/fd
l3X7mC8WyD9zDSgw0aE8OKhBNtNoSfzZTuFqpGdBSzMA+/vPlESWcdzN4Y8gRWlpwi25S3W1BVL5
mgugphF4iMtuOjZlUdUCSoRAyqd4sCUoe3Qv9NNMXoOOQpkPk4oUUHnzDlplEU+v8Gn1OEGcRXZH
64Pl1h7K8o095H53AEsjQ8QAt03zA8iQDOpJ8dQd2FjQI8kEyuNa5OX746dxS4xMjT6I5aQjKFye
DszKVYO1eLR/drZtrKd3flTNQQjTcyoQn2ZkStZ5TDpNzLIgCkC2K4MdKbbf97wCRSgGuqdHeKFU
OjIe3wrboBLdOJXK6Wq7S8PBZ7ewP3mSUhmQg8OdGoOXZOscdYNjPWbMVgpyvtDypzVyebT+90N+
5h94clM4HSJ/EodppfmF9joPZ0CK59jF45r4/3xkrh/IXVC667Wl997ac86ja23kNJuzfsPMD7Mo
Nf6p6+LMqBtGc26nErdoVfEVuabIkbWZv6TUvJVtweQirC+oLzcprYKgsT1dh8Btr2xOc5QzzmEE
bipGaC7eXq2XlyjV+vPxLyME2v5p2w+NRqNkCP8ltmU6R3lqngQY/V2G0Njwq7X6XBAFGl6QZK4C
DNeWuGDzNbq9Ks2QXXFqAAWanuQKYJRBJyRBexHlYvVuYId0K05R1JbTCee1Q2TsBpDCZt/w7XNG
ssKWRCWV+IPg7JveVMsRS1El3Hh/bnx7YQYSLLYodKyn3/ShlL3iWeDvyDXASDEzJKgKf7qZPFx/
7KOltCsqf7NefmAA/s2Y2n+MqNgc5kD8VKT47uLt3R0U0gSx6Abk+9h7/87EF3qBp/WergfPESlD
oJJ93nSelZ5Ek7SYQ0IgiVEqsPPAN/eoZDyd51BgERmo3oakUjQqMe6WnrFs3xLM1c0gvNLSU6ub
879Qy8cOp8S6SMCCruNpkY0I6h+ipVMkUTLYg/Ceg33CcRU+WWf6ewEq7t4Jhf7geqUnSrHgO4Bo
5cTOQVdAoDAGjASF45LuN2Z9DpUUfLgBPSg1obP/eA4ebwbuFk2I+kIaoZJ1XhrY6xq8KDOf4xGR
4dKr9SVTTCymD0kDIOXJT3kLXNxh6mJ+PQ3YOOHYIZHHChEEntn1SZRj198FQDb7pj2XEYh6CmFf
mSnOIgFTfjmDStT0an7oHRCRaNUqD3aZzn7+WdccrMHPY1qsoQpmI5e/2waVFUZwonoYjseqok4V
EJyVrhgVnMS4hzeqQwbFJBJs+3PZ+VWvqK+n1xiQ9QVGm+0TWopM/VyDkKGgB2nhUnBnAqRQ+sy4
L93FGNpi/40lW9A24ZeV6FozLz8N3S0gDOSAjIsMfutmBnVAIjjU9RFF0Iiv1xHq1Zt2DaVe/T5+
wUyfEI6v6KIxpKpvsWKQJAdxM8gtYCg95C+CTJRV4viGYkj5Q5tuzWiFPxxLN5QijEHzphYGw4x/
IfiqPY6GJTRdFwXmTBX0ZsnfWM+W5ylRy/duKrvdNfLPVCXyh7UiO/egDMF9H4WGjctZGIZlVZY+
xxlBGcKyK6sP733RTlDT/urH+gLVB0f5QpY+tYVBEYQo1PjwRhwCt6FHBSkvSxS1E5UxOFvESyhc
3pY6EXSxYRT1DyZ3lla59EMeYf1wNq2po4bENpRmnwWbv8oEsz7ocafK95XXqZCt6narMXUm99a5
mxYu/ZEeXNgrsPTQGPZj75nYvjbgiMowODGmTDCuPFidAZa7LT8n1bHwtqaCEOqODQU2by5tiQNp
ipNC0M1Pr7EXguPnjKCjvShxMgr62vkaU+m99ll06cRvyUp4JnhQHMe9oIvb37tLEaSFl5W4IVZ3
LJ1VNPPriDQFdpz58RtycHQl7PispjAVlRpw8saM01qQVoN4rPD0nEfdYpOGy91CCbCMyGLdv0dI
EVbVntKxU19rvkCJiG6fvW73iUxnHMpDEWaS2vVOlgS26OWOQFsQhdwKSHw4ZTI0NMrBZUwBUKn/
PBCxAYHiJ6vj38kDWBfFeOf1XFh/Uz2vRNbDR57+2ivYrQTnqvUSk/TRafMOk0oAS90ZVoqnVyiO
RDjLx2JGXDxzkkqxkH7ikSKkojLN3441F+UY/lQnhNcYcNBiZnRCddqbn+rPWfGOQGUU+ePtTAC/
47Ck1PwUeqWtGDW/aDvf4NW19faeZxR+6oW+TaGsf5mNQZw457dXOJ/huQiQ7xBNc7RLTZ3imxZX
d1uE4IfrenOwnIANcum+kWKlqOveeZwHgwweyztuE+5wsOoyJ/9XMRM/Y/QyzXta1FloglMKpP2t
0b5XZtkMxvR7W5ffhdmfgMlJ4y0xHLfsSlqMGMHWbPnRqFK6dFZkM3Q0Ykc/Tfz5/lv6JkvV8LrT
emTdyBrGdmlmOx3Q1nMc3AQ2DQ6DBhIFFqcpBDFFI+1GFq2M9jb0J+a3CCmHxb7BSvE2XBbyhv2b
Iv7SOCgotaxhsCOjc5WenwC4avNvd39KnODNC5evmbY1VSSSON1gYIT858k6RPZqSONnHQ85yFA+
Ufd2258IZP9o+kM9Zn+RR8YJI9UDuCVQ433oI+Rca/TuYfA9WMC2wKA0iVPhPSsFjmr2HEQ0GBag
tBIyQpkUYnFyjOpd6LitElf/Ryzhe03cUsBGkXkroiizqOwvl0v2fxbsGS2awFtQilqhM1yEKDDk
eImbIfG2XBLpRwMgeh3T6njpK5Qbtjnq6RYYVz+hXr7N5u62T5TRounVJF9sgwI3c3wMvTG4opR1
pDjbrOerpDmMYVO+a8DdUzrlVlYvDeQvrf7me/Shy4YdtX1/vzTSl2gFDsru3ikq7RwX60YORrDA
lzw5FgQrzvhc2K4/d9z/ewjq+BTmW2lcdqqBJK/CsSRS6DsLIIybF6cw3A49RuSOAMb70qKca78I
2xDa1pRZgx4S/HnkzNDpsWV2lnLOYBZryGSRTgRI8tONkND40Rp3PKqHAv3sz3WqlSrnRLZM4onY
L3S3bcY+CbfM0o36c/MR6GvzNUUBrLEGgKPy7KjvvUo/z14RIAcQYvJie+Ajh+mETssQk57ACY++
uApYcpuJAnop1O89qiaAmtaWQs9rZlosDXBASBvFF1Rm1kiGB1n6j0WISNHb6UIE7iZF8LPvMpZV
/tiyn5PKMDzA63Gw1z9IWceB+FRhlMHpBKwX/JN75R+yB6+fULjEBWMvI1ayVv/g40LFQi9T2Bc9
4/brHwXcoKV/k5mtK4bUyCOpdIluILKrXF9o522qCE1e0IRlxZJMP9xA5d7IqJ0fN+MvXoORQz7e
uO0bxgoY8DfFLfwSNeYQQXsiOz+8QztuGVImDo7a4hRTYkoViBkbc48Gr4m92WuULjCO0fm+yRAO
2x8NPQgjcvg3OdjmI/e+Ei7OPE4BQvsB726/xdY+UyVLxj8I7tg+KgG3dLVU/2s7xpYX/FCZbJW5
y3zCBd34XYG6OX51o0IP+nBB5EDBA3Qo8Rt0ijq2R3y0BWLVnMIMOihXQ7HxHQ9t/C+Og3UssYKu
Vu39ycwwisGTANs3zYZ0FWt4qHSdGOxSJkI5fDawFe9uCuqagJ3jw1dWDAsmyxHithl9Mx3w+8YP
Moh5PaR3zw/VitsQYY6e6OhmHp9JC+i/OXzMDI5zFe2BHQWjMhAYczwDaR/CDzTAjdp3ZNOdAnLj
XHUbyOnDLa9PaBYVjYUhgGmNCZh8eEYoYcHtFHn1wzWYKE58N38qsN+IFL2li2BR9ZRjTuNCQBHE
NL3dgKbOc1Qa3AH5yxLZwDHCdLIFIJAMtKZKTr/sLxnSA7GqEptPbtAI5f6sbvhnIYTqwUOsUjRc
hhP8EYL2r82NpP/AjZ4fzzE1n9X/mlRwRWHSuzKjucZBMCT0EbvYoEGWyQc/1Fnajsxytyo69DnU
wMllsmW9FU1ICEIvo7dm4Gnc59y0HxE0fn0RKusnGw0fQD0i4VNbKEYMNIc5/aE/UybSC/l19hOp
00L52+aQEnds9UagiMkf56RJJcGxUVnBpOZiEWFElL6VhBNtr827zEBeHE9asaHXXKXWTLGcP3Nh
lz2uGTApCRWbum0KuiXEqLsrg9iYzminKi8bMLmvEDG0CkTUvxhCrKgx4hpZv2ss3X/xf2Hj7TBX
BsO4sQP5N1TTcDUMIyJfs0JsT+JkbLuIN9cFncBacyWwHtooeuqnKYbXvsbNOxQ2DDKyYfxMkP5Y
0778XkKQrid+teEN7vGvDINhUlMGNv1Vyxfel5c6U6I9MVGrPb5SSEOwRAg+3vxXywZYJezxmysh
oxc5V2+5LMvxdUWrNSSi3Ja6gDGXxgFWGQAbYXMJ868+N0r8KsCh29qVCzA5YStjCaUoYjiY9vO0
uOYLpkxrfc3Ca41MZvsNA80iyX+BXiLjAiGDe5kxWxz9oRSn7RXoTafzgRsvzFZdIjh9j7q/KGte
uL7MP0ys88qK8+OHY8OqaDRmzhzTmS2Jy+cddXembkYg5A9ddGMUFBXhxgNWiBwnshkjumfQKSzR
EY26rm5es7PZLDH0P1c56rh5llwJ42zbYrMc1AYBCJ2hAfb+oAkF12xhZBjLvj7mujeduk/4qT8p
E2X3BGjDNBBjMkecMoau1AN9zhuwVhLMJu57IDBOIuXCRxkSdOxn8qfOGO3DeJAnTCYmjwRkuh21
TXrnk+rYHdfnFyn3B07CU8I+fD6CGZaMTsBF7bkFXBV9MMybjMtTzBmf4qjPtLJQCvt+H1WUO4i3
y8w4SqAGcSagwndqxB8w153hm9WRAGqAt5/W2DM0eUL0LxqHnTVobYRY8SNqElRFdUv2Fw0aYJdB
0woAqmCUfU4TbfzFxY/Em06ysSsAJcYXICzx8fpDRqzti01zYlxMw4XyDP4PyUSM7rCMSxtd/UjP
rsu4nrn/IqbRjl3en3gCTUqyVi+/pyA+jHO1XYz3nQM86iHugTUoGWuvv/9xlmnGdkax9unuZbki
Dieo5AazOBdqMK2fOhky7/WGHYP3WAAAacbIo4H0WB5xqfRZeH4pHnuRF2qXG9Kc0Ou9SXbosfZP
cRFbRhgxz/fr42/jtRL+Dbi++vnXB2ndkhi9xXDrGQYdSCJpFedWMW6S2p948lhxr5vZfpXY2yL8
aaJfT/y44SDkajr3kq6x8Z/A4sxovKnw7rWgg5f8mAjBrWh2I/PAYAkqO6q8CbRIx0BQ0NVItr4L
58J4B39/qxyx0M30ctqG5OMW2O8/N/Tue7HmHmroUsX1jDA8n1mjBKrHW2dyyMsI2s0HumZfw0+6
yab/77K0Dog1tomy0rjrntbLZBQ4mOo7Hxkp5/S64JjfpOgHYu7BRU/K+Rvgh0LPp4/ukB/k2Nuv
vcXFGBYMTDSh0rXD0lDzL0FGc7L3/jua6ZV3nXdG0Ks6qNHJ4zNDqOjCZxTYv0InaTzgCNlDjGzC
cXt1ujOQrfGMIBRBfrtkk6yva/oCio1XysyX+/U5EbECbnQ+5d0Hz6Q3b+//CaMG8WzrVBPVsFo2
PXiaDuyo5NQlwfBDAaHIrvQSnrZ3BnRD+pGIVHsojk8+A6CDcen7/Wogs002/flh/RfPJE2ukoJ5
hlpUCPrrAsqpMG0x0DrHjSVUAxwKdDRpT/XI7VaoHhIVCu11xGtO4I7IUcZ/2nu0t+qJdBhVipov
cuqbXu7JG9X/75zXCgRFfB756U0lzPFkT/Hmg2dqShoMLkiqndW3SVpIvtKDljnu2cIR3fa3kB/t
CkGCFq4JI4mOrITDdIi09mnVCV0agZZ2Vk7DbWko7fQU6m8SNUvWTuzr3QZ6q5JbYquvSr+UfiqA
6zntZTs9BybNO/3Fi8I9kQNsL7QVlSd/EgZ+g6kW+JV+yqYIuZ/HRKqsEvnWUbrs6qLgMf9Jn1at
p4mL76hVMdqllAx+A9o1X5szyH9IOFoo0JjKI3R8W8gwL+rQLAlwKjnxpj+6/pfT4V0t5iv7CPKf
UcPcUAjx3PPGqS6XkfGqJhc6cIR2+GE7VD09I8o3ZbKx7RgCECmBpK4mAXWwqHAM/UtUEXxzNFj+
ZRP7+h9LjD6OeF/w0CrAAn6iwOBNeqbzWFHz3/zGmfYtxrj1DjrKydr+wKRKe+5L+SNdoSV/F3uF
GLnQ34VwMT1Kmlx181n0j9e0uKHpanXjG1tD++XxbYoq9pLQ3FhbiW3SWOaKH1GOGPV87gYDi2oW
LKHdE25CBeuX8q9rZPz7crKcCuGHjr1bxQoROofJt/C071HrzmHl0YBcYIpgROGB1hbmvNN5ISZ6
rebck5xfRMTagtUYgLFD6dHLCfoqoucALgfo2JkwBiVG0YGIet3bBZGVci1ZmXmqjrh9X5PoPNfF
9gNz+fBdBj2xtIw+YcYeY0Y1ZOGYkzswmfDbHgfBWDy1K+ploFkQtGeaOn4kg1nTJSZ8uWt4rc9H
G+ZjGR0K7MMZvyWR7zOHH4yBRSvXdAn4UgA+RmkGBFlFfUCHY/zTjjmuR5ss2mu/AJXSa0wkqCdv
4iirYLf9w5VaWzNg4s9Dkyw9CsEPDNgCu0BL+ZMfjsiOMeB3/Y2tfyxWyEfjqZNtEbdkEcMT8hRv
SlHfSGEBeX5R9vv0UGpNkQvOFKEHVxQwh5NQMdpQ+FerXspX7ejOk9JvxG5mF2KF8nDw44MFMpvR
vvVM904cQ4zkKXGutPYVqRmUeB1BB2zK0DJjsXaWZooLyAtWgcDnAQS9fcgVt/zGFvZHstcad/ms
0vNgfCSXROzeSEG885psKhsaxHTqa064m7FXtqizeRi4Gl29/IEtwDFBA6i/I4oOgbQ7uWUjE6WJ
9yKZOBOIKNGx6CqkYbj1u+2xf0mhhIsz6Lu9rU0G62uOyU6B39jpJRaE8jK6eBBYnTYb90aEIIwz
zOe3g7pF8adCvgLK4lm+atIKyIC6fHHCtAoR4nebKglBwsoc3xiMvyC/kZXoULaPXmcAxzW64wlI
9P3cEGTI0NHdRrjbxe/Rtu//DiGNLtYwB+Gq30F5IsKFR/FP/UnmUkJD8GShazMBHiXcrFgC5VUi
fxkwhxS8VVLxX5xQ8dLi8UfEKwgYcvWe3UINc7mGxUju5NYWHeK56M7oKBEU/iIHuQplkXjq17Za
JK7sxVSQ3yvOjOfKhYSnqL/Wiu9kkrDHM8ndEFq3XFnGF9It+8U4AaPDVemtPNCIm94I/yQaFkeJ
fHuqy8iivGTdFBf1HjlZQHdnZPkZmkjBUFQPe3slNuQWSndTf7Fx50VPksgRzdP2WY1U35M6EdTR
+R9XOHhZSBMoRXfXr7EY8wnokyJjC47rsVn8vQQZSutxO/MUQuhujVKpHq93zwMDmwtn4nrTukti
yTZsy9geXdUiKQCG7aRCCJMfGbVz5UvxglB299sT2mGDoui3I5EOZVJqM6yIE8zb+0dCEbBO9mGD
nbjR4TVq/qmLcKhU4tYybTx0blDTfuXIL0mpdsER3RtVc/ljprbaME5fLRNRPfNmdcZJfMVFroHM
QuzyiPhIrYwJ79HG8cC2iaKX93BLJROZtrql/Z7x1PN7wvDKGmuEvghD0keDnCcH3/bxuuUJBs2x
+UND5n1xtR3ZqJ5klbxENOu1MpoRJ3JbaGqfQDjIOk8aU4JLeirgclHkeRK0g2XCndM7BnmQqiM8
BGGrK89sTBfmTN9KlQCqrIGbMjtxNFgVr6GECJx+7Q200UHy/zLma3KK9o85oExGqE4vs1vW7wWk
cb72wvLqLTzHruvzMm4kRi2SFeuE+v3pMjZ+WS3f+K1V49BD4E+dpamlqDr3oBhQa6pPmsFVYAff
dipoDpupWAKa8bFz4RpREQTSYLGHMXxZozJ7zjIQiLV9AeFSFHj+QfT+1dDUXx0qDDFCu3+nY6Ug
wbT8sMcymscI8IePe0yZY6Fe9j85wEOMRQJDnS3s5ct3V5+AfljyKmaaB8EmTVxk3l1O3551+5Ql
w0G+dpuTBifxGY+TT17sb6Uk4M4URhD64s1/zCK4yp1/hRFPF/cOXeCXaj8PTuYX9rDdHQKOgDwt
tC90HmUas+r42jMlMWd7oAB2jbUU4aR/l8hoHc2R2jf/MhN7qG2BSlj0P6Fisqk75xRQuylNcRt0
cm11mIKMvsEDxb3IvZvZqtHVZm+M6vBEGKXQsJ02NgeQaAHpT/tHn+moFte6vEmKIIhWHfh3Byx7
yKwNYvM0Ifom9cGK437nEpL6rH+KMNjIbozQCPqQQ0/bcDkwQHG5vu4PIuH1g/NH+dVh8Ohwg4A/
a8P1tMCUU+wX2He7Cunb5mvq/LsKpzia8PImyeMHSvBe4TSIpVJL7p1VX4iS/MJb1rzqdOriTEGp
J9ImypF9fAJramEWYjL8WMDemhzmrt26ZebMCjahtafLCbRXKwk42V8dwiDQlYdXhKMx/Jl0r3+r
urczdGu0bGgVVDNm0i4SfewJeMAvJ3eDQj2xvKJKIh2UcK7NxlmVBv9NmVpVlWKQKlLVU06f4f6n
z1471Yun5LSBoxSSQfFBV6gIwNf1rZ/DFeFXxT3bQffUIOVP0cms9S/R7gk/nXU/25yXYeyiTJkT
u51Q1Jei0Nv2rQnlFg7y2nAEwPbth4CxEAAIxN3rRLE+XKsKBYooKOsSAWbAk7wois2cFLzAPSAq
Yw4tXLAphIRHUBnmarkKwFjqLl/FLchFiGqE1NKO8bOImtOzi1JSG18VFJZn+7JgtHksuEthalNL
wLqDejibPvjExjHtKaHr63ygiTu4DJKQBayic3gbCE/q2fSb8nrW0RuNmi4EG+KB2ylYLWr9bc/k
dvg8yG88fCgFvGOUSsntVst0wfMZGwVD0Fz7r7qDL8xcI0t0wYCn9TDJNUx/bCMR+DuElP7AGaxY
TfqWuZ0SSZMvV7v/6Nb+2xZ9TBmiDeEf+krJ/tBu1GcfdVFeHWsDYmYErL2QgHP7NTPDv1UMHvK+
EOwb/rc2fGzMPDPaKbETLaB0O1BqiCPO6H9l3dClD2+MinHO1qIMYKLhdVDnyfnWj7Y5Hxti0ixE
RcnbgWqWiubwho+vRBOTjIPti8q68Qbo3FSgtE8X19WcNdaNVLH2mLE86kkhME7whTeUmC0qNINf
8E1I028OrdgM71J/D6GppMn1WyLC1jTGxr70sPK373K/LdI0lAEjc03ZvBWLCxl3XvamPtDUOTyO
+NWhXQFEoRUEKgI7Lcekhs0DUGb+LezDi72/bH/hM+DtWbktKSt9P9TBL5nfF+Ml4gRL/HPKoFrF
XE4h1rZqRnVX5gKw1TX3hh/avNIxbKj+U3STWTuRMkWTu3dbOk3o3uUyXFIqMISldUKaBSHyF9/q
O9/nZyF0FIZ9ngwONt5wLCT1bOdybfgufuEDKRbVatbGSC7Xz8nzo/kGq3FwFCNXxfNGY9F6BEPp
nV4uMHuX7at/h5yr9IRlcBpntj31JshrGGVA8SDUvfAzf96LdRQZxHi/NksyrBK4h6K0HAWBnnIT
klvVqEmDxEm+sDoA9lOhOww6fhpfVZNKfFGMYAIHG1lr2oH7S1s3BE6SxzHm1FzjQRdyR9U87Ypy
8lRaTM8TM7W3UacnH6oXA5OwlAKuDS/lYnWF3EUNpkIezmhOLCZ8e+dalKZA5IokST3iPZ6zrTvz
I0ydjRcAfWRhrJh0bKQbL/ku9D2BJN1A7K/Toeo8XI7nLZGHf5ZtpvJ0gB9dYI/bbiB3jGpyNFyX
Lb/HAaB3/4nhdc4yHsHKfJeW0qR1hMTJv7zhipHsGC6zx7xmaKxGuhoTypFV25ZusKJ+h4KsSOYJ
wUPDxYxTclLAhu2Yp9FghjUs+SCdCZqDL7HgAZXgbwhg+wuaM7EqO1HTknPoe7J9Xj1AFjo3voQI
2RZkytnsRk0bsg5zmUMDyp0OduA8gtLr/RhQkv7BQEvkvZeQpPniu5d3bjlFTX09Hhg3wFzi9vYP
Y1ih0XXfV5AA2siM9z2LwTIupBTnjOvHnTm2whRWBkandMKv92clYMi0FcyhTQcbqpWWcPlE782P
lB8v8p/oLMnMmKPywyWYiU28zMViow9k/eWpoQYR2LxArwDBBJAsyPB4DgiN98PJE944xuq0ILN3
C09APUAO93FRwGpH82Np2+ph/FXrW9disSjJzNJWLIB503qFP9oOKsp6GYbTWmzvYg0ymP2zHu45
68s1Um6C38oE/Sy71QebGNkZ5V+3bMAlZhXdwlk8C9KM8olg3uS/JMDG9/daksacJTzMnwFlsHef
epm87fOPo+Quj9y8JGBBPC+rKlNZ3t2Cc3Z/fCXFgzaZ3c1Vmm9DJeGtoXuTGzNEAnZKITsvRgsc
iy7hD9Jr3F5hzVGJxP+21vi4QWRJjjbIl/t/KwQLgcoyweB0DdLFSrpMXDjpCZoUytXRKdrMS+hD
8hfGbwO6EqqYsWYH7+lRyEnf2IO+/htgAGGvvr2e/buoOKQSXN+/EcXP289R4Z1Q0wOP5YSXKAJ9
y1GlVCa1xD214k57Y3C7PxdfQHj91dcQ7S6dejimjAl4N8yVAJyvf00yN3VBJK3v7E9+lK99oWBG
mhp9l25j/9I1SDHDu8q/joIpiu6Oa3BBXX/rhxQnjoy8/AamCGI1CAWhtYEn5UOnKFQ4MWMLtwFM
NaLGRvPQ2QuINphpw8AlqYfZraPiFWPNZwGOyhbv1HAiQP4TW/4t8bIYgMx1vJa3dgys7svyedEa
syvwX80MjLYUK47C+XGGkQK+zy+SXBztlqO0FME6OtsW6UcYm6eOLVVWthMHeOveFO2x3xNtlniQ
cenFXUxeLBz64no/17qEl9anB1VO8/9kX4HSxcSvQPY+XLw+g0L1KfqdEbCeNSSBfUHKtSmiorNF
8F3pawBnp6OxqQ8YTAffzQNtmtTBGTMABGTWU9OVWVSgwJoYL0H5+a4sy41uQqYDqPMZmuXvSpO6
9wsFPa33/zZD5mJpLNnEcppyPGMswPQXo/Q09BioATLP7iuVPMdocZ7fKewiGgpiLFfHvO4M56L1
EsaV5ZZN/KhGLaRiMapsL0yPBB+3Dc2sgk6wMpZtY9SMBNfA88v2uaaMFuas+z8Ju/9/EdnqAWIN
UfbiDuJFqu20sMNOzoS/+ivGj5dAznoAr/UApN7W4YPPMMikR1Zdrb9Uiw3Z9u8L6R98+/4Mj9ae
Z4xdIPzJjjZpgpK8an9eXt7PF/OZNBlRqUuPmIJyhPUDn5JblhhopXSVqX28rcrgR6Iraq+aeJ/3
KtlXm+kjNSQYok7+7XVj25hnYGlD04RiectbRJPpzMYR0YvnMgMbnaajZUYrJZIERcZc71CR6ZaX
s09A91U933P5eCgko9TuC0R6zidu6j3UWlFUlYwBVWD7CkzI37TPiGhKogcapaENAkyU/2WJUdmy
wmx1NS2K9Vyx8f6dQ5qD1HKHEQQ6MWRAkZos8Mg9/RwHKWp3gxO9PSxAIPYOLrVC3BBL6/MonaSK
2h6+46KdVxYwl5no8fQub37JDPPGWyTqgRd+Qh7+7ET5T7dCnV9c39Sox6OaKKefNdmdC1XC5a3G
JTADDOUzBZ0nBEEz7bZbb2b/3rIlMfmQ5RsM78jUuOOiRczA09oP/5OtHPk7kpcDTx2QFNplXs/p
g/vPU8Q523acvDTlPIiO7GL7/VHoHljg3rY4cn7CEfGQHe0sxGEZWsyKsYBdaMqgnGeefIyWzgJ4
uvB3hxWBZT7g1Q6siZ4+48pC/H8qMBHGpZE8SGCwh4X3jDov6X8x3J3qRgk3jiuWcKPwQNI+6jjw
LtRC4Wcgnl/O31f4/i5RAVd0u12flEk2S/ZwkrU7IGi78xGODL8Q02jHLwuWGTjF9PokG7OAAT3G
mzYVookzYIO10Y2D+jNsvykxEELoL7YKOIN4TdWcU5V8Tts+7yiseYjdorZocgDDT7WUOuM9Sj2F
gnIqGbHBtjgSoU+ZwwautCn4Hxq7EY/ImmmC81LmGe9XCXql3UODKB0I7G9VUMlU/W9Xt6usAX/L
RZko3gzaEpIn341FDmapolaOjlLsHVtvvBqCE3/UtlwcWnOCj8l/TNHjrXxfD1qU4V6ZrT09rOdA
ZIcS6a8rJm2fVoN6+HiOCZM03R+Ww/B9fulaQ40BzK4A9dkaUuUfs+sKtle3b96sKxaT1sQVDtUM
pZ69GYpc10MS+DddLSw74rM37XZTTuGjO08SCLByGbNYL/LugTPa0vvNsLaBLs3MlRE1hAdsbtXK
qYOMRZWWN3LMwK0NkYwh/DoA2uFVK2l+SVVPdFfgHRB9Kf9eQu+FBP7n14D2rG1nIYp9Oi0KJf9k
0redYNS5BG0aV9VDmiFYyU45A5enl9vTH343kcgy9knfewLGjlcLOkOAMaGYZjxC77eqs1XXLtyX
YOTxmQVhQz8oyq/VyhOcqP71PSNR2DoQDXGFhOhJPlDbE2Kl7gL51e4KsSqRNUPGzhzMW5e6mnRr
UUldT2Eq07wX9ctOvxCUA7dr4azUrIBhkUV3pRN4CH67CXw4NdzGjw+bpYNktReTddCufblGmp5P
xZuwHEHmGKx6khmZxHD65GR2wA2zpPO/1xUMex2i7ScRv8pA3KAtXHAaZ77NkN2GwJkL80/M0Y7Z
S2PfXEgjtEcEmHHosj3E8tgFaGtsGS3jivRhvDc5ZYDM7iVUy/uW/4i67H8j8F91fYYJ/C5oO91h
2qQ1lBbr/zWrhfHP272jKxc5mUHeQx8Eaa9orOj5+cUi3w8m/ZP8T57xlIOEepenXfXIJMl8vvJP
4IPt5chQaj0QS7sqTnxoqizcL7WXBKig2x/3jKCcrLdD4DcQjiinaTKknzcp1b040bFItKVnQe16
ZLYvbi1FqZ2RuMfzJRogfyuilfkBvE22Jb0jU7KRKDWCFEIItnTZGVohsEHIPWnQARnThILis0Ej
RPx1fPb+kMIpDel30FR/cKE75D76pGAcQKUo4di+XMCS5LTtKFkllYWQkTZR0g+UUV4SQJBh5vwK
FnDPaFPMxRQP2WCA4u1J6Ks7cGYfWNdJQ0d+rlIDNsaDrMjdXB9/KrMVCmWA11M15XVNxeHa+rRL
HG9gd+h1qzm8mm/fZcEVa6FLnrEZ/tTOdqEsoj+5MQG/8DqI0RKc3Q0gJQql8EKYTZCMIAczAV8v
Hy/jhmNvGS21KIGOKiyVS1yAJ4yo1iNBhTvM84hzMEMyBs6VEbfbGoEIU5Y8wbvusnLZnSIlfNO3
4oEKq6S9X+ir2VNPN7udPnfksNeXcR4xdfp1xBFV/o8uxXuxNqVMapNbBng6dJoj+ZM0KCqcu537
YYajJPRN/qOBrL50qynUmX9WW63YLwpkxAcmOLJQfvQk+/N2AwQdxIrixKzruVDPKo3q+x3D/BU8
yAIPeW57qUQRex9XZQ4YUrczzyCIWFW8ROkvRJowQB2wEeG6PETeYLcCmemdGwoN1Tiz5JgrUhy9
U73UJHtrzvn41rfw1Ses5pLrIY8t49VGmEX5HEwFnUXH+kOfP8jmUgE9EokpiceN+HuKd40s/VlV
Kw9Qhz1rI/cfwSPp6Pqh2XjxNzvoTr+5sqcBRdOKm9/lI2e2nZG/25aRWcd0YdPzKdoRWZua63HJ
Xj1w5DaWz/lzco4XWONQWDLho8kubJTqnsuihepqU6BHpM7hch1nbyH4e/hOWM0IKa7Yh3j6QC4V
+EKnxC6oXPMFJnNZpD0LeZ1eKeI/rCDbLIS06sF/cnLEPOW1G6kb9xaciVk93ktlDkHbO0KVlyBA
cyiu5fZYfABJLVHjOUQ2PdEQO21G6whDGVusaiWDof4MupUOUv9OGXdTBsv8h/Rx9i3CXoP9AyjQ
NximkO50klA0/pMbOxheNCS0hAHiOyzrpdL0U9BFmttgE6Yp8wg1qDbEveeQ3mITtbF9WtUCmDFE
9sQZnyRJDsYgx9uVTjEpXpM1lE7ROgmmbcS/HQVv1C8s5zYo8G++45rOqfMMf6o2NgRBSKC4uyrt
RnvIGpp8hF7+zMl7niTDLbozGavhc3cnheYZJRxUY+nPPcYYRqtbxm0rfN/4JtYdb0I05Qs7s9p3
pR1sAIp79eWfJXCLXjGnIXvJRB8nA6hde5FE10qecoJXX9UPWE4fc2tRCy8q5qYpGIBmjhkdc5TN
gN5Zl5Qc67Lo2qaebjdaNVs+AqedfEFkDmCYTpXRI4xhJ4aZ/60rvyoA4gWI1dYnwsaTsOdbnjuT
SasglVZfRusHlkFzC+dcJeyoOVPbMhIlA7igbsj4+Q/wNjH2gB6ydCAYMCnJhDuYeSFCb3hPqNCj
M2yNptlUAlNyLPIwvj6plVl8VpJAsiulXSwszMymYlEMGpZKIcs/qMIJS3ol3uVv5S/VCu747dzz
horFrp5Rjlr9EmAb79KBNR2YRuTEFU/o9n+kWob91sR/Oentj44HpRmJxlx3nF0jdheY+aG7xa4K
dgQPX4fIh94wU5KRt8EzrLml58hF8OaB1pWCCr47rA0J8cizYs7eD2juzxZcH4ebOBT6y18SuaCO
42jLaA7pvJjhVNYTAYENoVW8STGS1HhdwPlDL2J6ilP1fDK8zW9Lfz+UXB19+2K+zhqEl6/cR3Z+
z7G/hPDHQJSK5lw4uMLOKL5vomiBUE1SaQJwTHIulhTMLmsQ+Lv4IPhDI9WsC2dN/Pa/jVopJaCG
R8k8AtTseHyS6xxlYW3CV9pVkygCPzP/mu1U7cEsHy7lmluW5j7oEiPyA179qLdFKpO/m66qV6ml
IA1EzKLDhBYVr4eMIQAeNzAMcBEJeoe021CoqASR2f5TBrz0bS+3fkIt0z6lc+RivBWzzRtmLk2E
js8y7uDwgf0PaHiDSa2BTef6VQKwDIuc6Jffcavyk47xmOr78ynWmmf8Orpz5elGBsnzAF1z0Ffb
EUEvX+Xhc5RoJX5kHu836Wxa2BDt8emFc8DlUGWQY+1wzf2BinYE7ngXDkN76TRM9qG/DZ3pPys2
qjMIfnbha7tNlU1UY/5ETyWQOhiaJ4P0TozBqMdW/1jjEDKckXrAq0W8EYXhyecipH1uq8mV22I/
qN7kwb0X+N95qB1f6lY9OH6JP4NbbZ4S9hce+1roMXWvmQqC5YpBjhvzFJ/U8ohLdtcUOXuknV19
5Rgz+QKUFBEyMUsuWX2O3GZWDB8dUj6LChb/PlKvUSP8MJXPSLto6fbF8Axu47xiUD7w5R8VJvhx
VD+d/qAhkPHXhM66qr6tisJKaIK2DNWgOvyVyQRlziQpH4VaUV7Nyu5qHF4wzTAQneGMydw1wwr0
ne0SYOMNEXvG9KWGZTQHjHNNMmAS+kJl0uoHIwp2Zbcl6p/I9aFBWKXzhF1pf1m9zs9P4YrADJ7X
NE7ynWsOOwKM9a30fMsxKnEqUiRAH1OFkN9Ryn2qngtooryDlNQsEDBosj3sic0WFvZfzMz/ajmO
WFRe10/CzBsZqk/lFZeDuJ+xq7ySTTcOlwCU2l+BJ8blMl0Ykuu4au6fUcGkgK4kw7noan4AtCP4
seYpPBN/HObVVJ8luTi2h2biSHalR9U5NiRJlIAo/XC6nZ499muJZITjcu9bNyUlKzBSOkGM7HNx
N5I10VZQkSx3FkXQ7PBEOR4iOmENWVon5mYumtXeQTjS8bc8p+BL14u+MyKnYlp5i8FCmLT5ohrF
Nv1UXyP6JOdsr0ppRsDgB8fDA0E3uDiXu98IcNJ7iLhCe4mK2N7sW6pO+4Go5X0p8YNHM/lx3XzD
AySoWkPaypYKkERPYhR4zC3XxrgAI0YnAP2bP25JOj9FabjmTtjf7M94mzuYr0tdws+h1Vux4c7W
OFbZ77FbBfp7fu5ADDIF+KJZhO5KDVzqErwnSyS/S/QbZofRSH3VXQiAJhSlxD0e39MHCEIVYc2K
IX6eWfFAr53znY24wN2GipKw//HGTQKJBWpOz/IC7ZAbZxPna3+4LAT76xZca/p/sxbaujIXCVXj
UjBT1Du1VdjJtLPVoEKW5lA6BhHwAW0SpxCysJ+2SHDth+PBLRXVGilC19QgFBIJ3a7EZWwCxDx6
ajIPZhwjM8vq6CxkdS+lRBQKl8nO3B7dlzP1QyzYTXG5PTCihLzuyBSyZK8lFNoJues7i2JiUYo2
5882R4kw/sbJc/NUfOgaYfnL4YKbg4eY/n8Wy+FIaUHM+xvDYaVsLl7XxF5XjQLnSPG0gxu4nHhR
Gp3eU+tNyGVtxoj1hA1YsfSsnA0wOBA6MbtMf87sEuX247VV6ag84epg6vb0n6/XsX1wd81Drqu3
joLi+dg9Jie785IKFNnMcoUUJgG3IHVJXnUblUWx9rg7xu0/QUIkyLcMiQZ5tY39/BgqikCenoHB
vgu/3pbG2PmI/QCRmzD9gqX+jnThFPlYdPzo4BMWiC0VdgVzd/QoIzPsHX5wyySfGoc7MiwebcEO
ckJhsLWU3sU1HmwSq99HoJZEhWVop+gZgWja8XRIZn2k8oicLG7aNpw6zKPXk5vq3D+JQ1nf2ukj
gtrHmd6QkjTUT6Ds8p+SuiYYM2mB4W3sc4/7Yi0ekoEPJsnZqgAutgE7gPA5LkAwD4HMkfbmTu6F
hVJwr4exCyDkcaNgDlpT3R9mNDnUY/ldxbpbuPIMfDLxe278aEW1BfbDKUWsZRxUxNj6Dd+MeYgN
su1UjbEKkjR/FuGPJKwEQGuCZDbl5FpSouLVU2pQPegKvZ4v5O4V9XwgmH85YllFsdDD9H9ZQyWS
c4U/qF+9Gbp49g8B+MaBTZ7vCTJxX8JTI3PBlpHGQeEwOeDkZR1DgaWg/yvNz6A7w5T+v0Evt1HZ
f1u0yhmf+pXX9gFpQdaD/ekJtvg+2Je7bvqweBH93RYoK2FiNrX1Ih4Tuvk2tmi1Q0yXgDNmUgiR
gGNK7iU/UMsq+43QSZCyvcT3z5ICAqx/UTs8MGMPyEiN0UuF74dUEW/950a2ipsBAp9bJCrXWMq7
95LXXVg4kvXUpjlLtKMX/R8sS/jcas2dpJP9Ch+8ScuU276vS3oQTpibedo03qjKLCiUw1JCAi25
0gjCaDDNW3X3rvhwk21p9oTZerqpRbxFdH+KB5mqOptuhm7gu5NL47Ev8FAdfVtyTjPHYZMe+tp9
E32TzEjHMCExmtELbH3Ei3qdlLYatfUDXagINx0dV/tE8X8Up6FiNl0bEQqXUmRRm4o4d0d04xrL
WWksCqjZ476z42lpGYmSy9qvR7Df/PRX5hwofMVA6SKdv/cmOlTBR3JjJdYdgMviyxOH3W3BIdT2
EgtEadGaxmNIFA5hDxjn2lM5NQLm9wNiH7tuhoSKlJV90SDkm2eQXhPq4SC2fi00nVRtb9sca5/w
LVkyL3zCH5YgyOQ8eM8OEa64iuTXcIS2raroM7ixNgAQp7fLL/eyCGV0KgtpNFd+t1hQ3Lnmj+bO
mYXz3/JNzV3594mK6JVtzhO0NsQm9ZMuIQxq2OAmVroonMraGnmM8HUv4atAhBfjpa0rDQNCVpvs
MglYexLdKg0fCIa3S9OmFZBpoGiJ+ElKiqma4QdEg8F6I3IvRU+Kn9SHSOIanU4HUH2TglnDQ7TK
bTLoZBYJcLPv/w6sc9tLK6p5exF7LEbaU/kKWcArfO7ULbqrsfz16W51q+/p8j2aQf8UHgZ7/Pik
B1+SQaUBKtB4CDA70UVhzmN2VwIHjRgjrRooNEk134W2/d8dNqy0V836kfvDNuSsQqiRnO9HgMR8
m62jkRpFpghA9HjnTiWG+qAT3377ghUM3Qbgoet3N/66CbLKyZbXNkg7avZ5k4/euw//Tn/0hUvW
8inY2h7G5CAHXh6hULoTymo1k7ivvMKwbckQNvy/FrIAjKX05mf06PcBeY912D7n8Eu2OpiuRwU5
ZYzi803SS/IfZpejwBjqLryyuQZBCza3HXFISL7Gcn/M7tB4EmISDMGrVRtjGSUHGZeK0lFbnoVn
h+6lwuZ0phwxApdXP1alNa+p6nESffeWUg3XeKSOxIVaNVQGcn0pkF3d5N/xkICRA8e2sv1AY9Yx
RtGYTN/Xn8Kxcvdm+pYyjsNHCUyV3EVSzB1IE7YpzLOLM3bUQxNd9bOvztOZVt4HtHOveoRD971I
kp1bWLOaARhqi3llU2SNRyveTcPOA2290GA+YP3Y+JzeB5Vz8XRAicL2Eno45T9tEKBKTuZJ0R7t
v5SDJtropcJkOJyN4HhzHxc1Xp3T3p34k3FNbLGLixQ1DH8zOiY9hWUOIWtIicky6Xe9f0z6UozU
5HsKt0dZiXJ9h48WXWRf/08zrqZe5k6bkd5Po8iXBN796O4xSxpIqU+l6ZgI4CLA0Sf6ICB0FsIh
G/w988j3KGKpsvLH+8igqDTLcTK+7jXEEWhrHvRiz59/kE/91E8622mmu3lVbbj7jndHWQEgBTOb
4CTGIwcOL3HhRwfqSlDjx6C1dUz8ogDc4Nb42JrSYDcOpdO9D5EsEDO99nQYIfRsfo68cZeleYsi
+w2uxeSXA8m5c/iAzPGSwhSrkQvNEdx7px5ZJvT8k3KHgbnVwB7OmUrZfKjJARLdUS+YmSA34ghl
GEaj4LG4BgWeotkx4+1s203NL3Wz0/uL20Fmlyn9lEjf/6VpR+dQpWd7rqHOcXfbP4Ikh8st5Fia
tz9LQ0UjPM2KzkOx+zQ/a5PnWeSV3HG+jUhWWHqt4JCUK15Dtn1VtqMyQusD6c3cyGH8BFWPSTL0
l6uNISurmsBXZ2RVudsK5P5acz8VgdqySHB4XBc0IarWGPjFM2qiiULT/hehr2VzodpYcolRK34j
MxkuVgOAQhlLsBRtIKSSB3kJncZhx3M8gTWpeJelGtaah2TRtCsbhD/mo6MR36GM44vfS/zYUAds
i35ZFHAIU4e6t115++2rCUuHhDLo/KTbLMvgNF7c9JPOYS0Bz2RDr0+OkLRyhLisGvf2Y9ybDQ6/
p3cvwIIQLPziKPN7onuPXeMFIxqQdj7Ojv6THLreckDwFWKoE2qHF5HKF331il5tEjd2j7q1VOTt
uVRUqxLTGyEcOCMfRJSp8mG93txOcX92gJzPKJJhLjp3Q31XOE0+E3Tka0MaMddjf1HwspJ3C0qV
1+zVc5iBcRamG49haK9Lh9K2tDC3mu7ZEgaP2PyZlJRWhp9wsMQeuYRRi5wTHlsOA1OyluewLeG9
rt8YJrLlAa4c8mo7y9znzXojgufzdb9rcbOKsSGFHUl2ZGuD2TzukoGlhrs6rdPNex1+XdR1cwCg
JkkSl3jzuNCNBXBplTs7c7UHuRne8hxM2yNv4gr005kZZHMvnasl6AAXIbpAP/sPvOOAVztPLy6M
WX0QMIwovNMyhk5RzuHBRQVV70f4N10ebsTIU5We+L/lzJ2eaQSNzbPLOcS9V/ynCuxVk/XwGcaG
3qZxbMR35t6UuQUmfBnAtcBFuTCd4eag7tKX8dU2zSViVBsCM4odGbgTmL3nv2XpndYYYkfTcywf
meAmIpNtPCJD9QadABIY5z6aYVTBFb77QCflJNJ+PC0VLmjIEccyXwvsZ/XXWSsYP5RKU8BG36dJ
oUe1dhfGrYqP8pKU2LhZUttlDS4EJqBOYYqyVCFYbZ+WzK3rwBNLKAN7JgyqyXtF4Xz9/9K9Z/Gs
AZSpXLdcEzBjtmtpBm1ecZMU9tow/cONEka6mx2oBohUktIb9BmpaUV9LDDNiYIQdfqgJ9pTS+6J
govpXuTDon9Bl9+EOs2jf2ct2EjA/AebIn4+9fbHQY0fJ3PYJSwbJREmi8x+Z4QED3eIiq8uZwBV
RZHL7V3tFdF0hgZnye7Potm9KsIDkwiwyHh6EDOf5cGY/bPsHhmAPzVqxnVdMahL8eJl1x0U/XTN
bdold6HZly6oM5/scxzfGde8ENDeWhXDfJWJld6f72jGXr+tYhDPrZ2JDTvZaZdcaAFwtIXzoMsK
P6i8gTD96/5uGX1ddrNo+U4JZKo6vH5B4gYUYjopx4K5usysEuPZXU5tmtZxNAQjWCJFRTtgZc/f
fSOuQAu3rRy2QgDJ+sPHhjoyGvezb/5G4cTyLeCQIcpGgRUPI86u9ltPMhcVyJD9YlEd0sBZXoHL
QXj4vYMaoXjfGP3CV0WWIjfo+wnAONZ6zE4hXTy0MeseTf+4zdBaao9o9PDBy1vAOOETkww/9xFV
R01f5QSIBjuo+9vBMy8Ul1VZ8dOV1TjV2jAfu/510eBE1MOjUWwEnJaWmeNgvPQJl++/6tViRNGf
WGLsJXoIWWGEkTjzcGaasEpCPeW4vUJax7L0hHPyuJtUihhA4DgPUTrwL7G42PJYWZGfR+PPUDJR
MOPHIAwBtn4OsoT1Vbr9b8ci6tclGC83W2R1ysLtMsfW+Q7xgkreOR+AHUGRFbCY/wTEU3MLlrec
fAn9Th+l2CrAoROPmt1LBLVjEk89ZI02dRuA1o9Ar0TqXPa56crNDNrGKIUD1EDad6LUioSFN40S
zTgwPodYhXxjF9bty/+ORMe+706EGd+S3YmpS5neKhK6aRtKGUPF2PhW1emDYm6VDapKIHRUqNGD
2QfhMsTUNp3bGlvIv8yR3Zalw2Ob+lndHe303wjpK95wFKxRRegcNt9zhXZHkmqPTMcANzxXtT2y
JmxxSLiTeezBW0+nHFipTqUXknsFP5jWkVpz/QSMyCxKktkKKDl5iQ/6KeRGBS8bL6+WpTQZEG3w
4UbfVupqLrBd3phdEawdfg/tPRW9Jnfgj5R/FJgxnd5M8V7C+ulLHkPeXnWZ2rtKrP9dugP9dEvu
/8xlgPZHs+HxqGYndTizOkT51AAtdng70x2X77CVvSd/+TmJYyjjGs1lXeIcXnDHrWOPCtffNphq
pTVWwn5sllu1Mb9QGnyIv4IdY/zcs7SBkVckcrUpMQXeyHHD4Gfy4kocRtKUTaeLXaNFKVfb1aeN
JeIvNs7Gu5xyZET6QKBSPY1t1CBnfEcdvHJCyGVnJftf1Fd7DMTTpm1PhxF53BzltJwiTZoOMdMZ
h6/HkTwz1SCHsSTqhtou9Qj55qYlDm9REfSJQ43QmJ/1ePEc2aFyuN4ESzHrm7P5JYM+HGNb2+CW
kCxuNoJdAZ87DZK7ix4WIWRWeO/AeW/MtrmJSyhh1P69Wbx8UOaiJJUmyP2Cii7tYRrHXcAChoRv
NO7b9clhIfAuMqwxBbbBZF577KJN93Aq3UOJX+KJgv0Mxe8OwWW1AjGcVPCiuVpItUYvG2b6VfzS
DiGXSH3RaL9cgS7uo8dcnyXgO93/m9+qNxL1ErvQPlPT2mnk/QYtNgB97OckKpDjz+DAdplmysYP
wYZG/hGLT92x7g7ja3hUJXh5XVuFJxABHmUaSeAIEOG9qMAZ+D1+1ljjTgPmMzXvVV6gAAvkZ2ma
sVQbK+gYAfpC1n23IEu0uztW04EeJr4Aw5TEiknCIdtmFTNgq1BhASUK4EBTPHaVxKdlHVWqqZ1n
h0EHzxME0Uu7Tsia1GG/3+0ytIkzBGUVvuTKe8YDe24HAcCS2zipMe22xWjpg+XbcPXcFho36W5h
QQndGGcEcXQDSCRRU2WKyF9U0cBQv/GK2rmitgFIA8QgY6pN9QGb1BdWKcmGdD6ovxh5d/++ijhq
Bpa/FKPJDBseFZI3lzuRxiOx8lrvT+u6llZNmnN2qJulc0qCgsHh3kV3DXXGfDVE7a/96Hzq1CMR
GZQK41VqR+yq5kha9zCJMsNXoIbR7bRn6O1S3K6Ex5iiV7wFis4sMTzoE1n+p2Z/vZcCPbS027Ox
bGt0Ss/uT/iKZnTNRKKI+/sa/iP3rJ2M447Oc5l3TElvBZhBa5FZ3ZEg9cdNIr2QwqO6v750awLB
CKv7FGuZ/NGAZB9SaZhfZAm+EqTlrv//iJezzmPD8ZFdCFsIcvVZViqvTAbV0iVrLZ5N6fBRIFCS
RSe+XEofPQ5yhcsesAn18pGyP+3DP4ME4rrIbFoMYBd3tOO0UuvUXivrjwhNYt+8v2ZRCLYDo8rg
mxKR5G/Sd4eOT2CG7oTTpNSeJcfLhwAHKVtR7vaSxeB+zkKCYpobjsM4GOg31pd2Qmzl37LFob7d
nNfCVjGKSSWdXfkmZvyBvFd/BJZIxnEkAA6myM4RSXPihR7WRxp/vDg3E3KiegQDD1SMZJdLV5HV
FX9+RICMU0RVJQuy2jjClZlLkYohlb+14Bg3KrdKetOVO3IK/0iSu8tgLURJ9GOmwcNFnBeBwxt8
I4uKKoWPjpGAAXmcgCNKORoq1OEOb8AUjHmDaj6H5/jS/C4TRFPaMdI9GATK1Y61yMyf43m9Y/dy
gsSuuvYyoRuM7jb9bW1ihNJUaMBN6/pO2eBS42xLdeUeyuO0D9MC15kBwFT272FlPn5mcyvmzhWo
hv1gITYnWNt61AOpgVPLTL9lIZo2RK2R2GeZdxmSdwM3XBIQndmbxCYbx/vCab4Xr5p5JjGwhq+4
c7Ki7snQ64cY7mt/YOuIL/9Ci6wCye2Zlep7fX4WcHviVxTNMBHNa4ulZolfoIMSgPEoMDXooedN
M7fwAoBqrMCY+xRis/8jl8zjS7seMj51Z4zhKu7eWeviHAAG9Wjm7w5UsgHmgLvsAHV8KEDuroOg
C9cdiJE0epml8sTVbPMmG8ZaIT3aaI5Vj8kbbyTpuYptu1h6ABZ71ezkHnW14j5qmEZbPy2UsET8
/KqS0fNkRA69cQ4dorXCALu6DDVdB5Dl3fdJGfMO+Y42In6lIh0LOOiIX7UP17apPr9H/t6VA0Pn
u5tSa4NO5QgUHkJkkZlqf7CYlCUZtyH+VecfgdodTATAVMjC9mUyPxzQ/XHuc4Azif6uRT1gT803
0IWEE41xWZK5zWMFUmjxIavr5/HrW7WvPE8tHSp1z8xABRfdiwurI3IRlYx7HPv3KHhL0ga/i6Ls
X+tw88y/Brjko35YzQjj0zsz4VAXemes3tONJThftfl+Lb3UQA0OK0gLXmsHtG2vEy8mDqpirC3I
G60LhtUzIXpl+4j2qbNeqNX2HGEllhLfiKeB5ElERTkSKPYVczT6tAskcA2GldMBpPH0226fpadR
Qb0ptvJmHTyijetK94Yss+qJujwgau2IdXf6ptVLuXMRq+4fbyCBorrPl4iQEm7ZWVtwkbJNGHYw
HmQWrpz/qPgGdjvPrYHd+IR+GfVPlQx7y2S0LYyzQEBXJxvbXH/joQMVi8ZMAH8FKv9p6yP3rydG
0x4aVu0IxGW269YedC31JtBVXo5Ca4R0I8C3s53laIH2sCDQ8LNxhptZvc9mSHtzgNeLURe9REKU
sjdBiBoiSFzxzNa38EoldzPRy51GkpGNnGs1hVnF9GXB+Yt4H+FNjm6hOsrubXXziW8Lo7Jft8NX
0MFq+gWyCdeglSR82eH3G8JjpBc1e8dts6WPprslO3pvuMbMbDTqO5DIWGyUudh4o8jkUJB71WB5
rhZHhDfpOn0/2xB+Y9WXWTfzf48e0AQut1bSqZvMHTe7DURcWxPde7VpOEn915NPP85vWHkd5M7R
lsg9SJ9x3Wt5N23S2A4K1GgiVVndk168z0rNbheF78HqE6D+ZLQAbnZ9SYHW4eM6IX6H5AVoxOF4
Lxg/xr2CqZshgq8dk0AgZlzcSXtWohUBTT7RldnYVe4QrS2eunqE7zu4bV6Ntu16zzoPcvHCiA/l
wlbF075p0hUfSKwObya8/0vgIu8x1bp0HG10PGcvtKKZZEjD2MgcxkNkLYk3p2a0ClB96KSJODn0
jO9U1QkF8qqnAyM7Ar0YXbUoxiH4pq0eVW3vBdriHtnjnGfvwVyo3degLBflxjZfeZsa738vYaN7
lSjQ/BIU7zvKXgTGHmvi6LCdbe5FjaPZh8NLPitqQHGcs7LBBBrE+rk3U4uxAxB1WVD49fZ/k6KL
BhwdGn2jQ5FDTTkczZvvkI3f4A9vLrqy2Tfa0t4KQO4NjVknZeKpleBChXvniazKfQRoqz8AFMdC
091AGxUbGSSJ/qduCqZT4NE03a+JPbd5Lq/UJ8KJ2HO7f4jJk15I/VVaIi24A6kQockqtroV/50G
SqMjrRzwrtRpOQ98mpK3njVoEpT+AgCj/etELHNHfv7ydq/dmGFzbOhbXU8mlyJH4SyUg2zQ842O
7zXq/a8Gsp2FqVtyVSNWpmxs3ieyaQexu7ms4/PtppWPaxlJgOkn/YUKhiVfkZ62YtecfXulF/kl
T5ajjYT656wpTgqn8qC8oOu5A0kJQ/mMC5wixCOrWsveQnu944XJWFn7IfpvTPDy9zR0vIpwssTn
8O6Ol9awkRGWsOimWiLd8dRYBSwrrjGTdOuEPQUJewSkJVblPelbyH0JN8kihgXVsdYd4rjaepI8
y9FnciKbCARQO8vfsPkOVC0sOdawFTrMzqseOirnoYjk+UgX2ns74dSCRn35KkSGzHE3S9Uj4Pfl
XehaJCChCvSJE1iXTaevGnlTb6CuI4B//Z+6HFzz6Hz/aJJH8sQ1fWZTuFTqz+Dnp1ooG9bH6KPR
CqTUNgeEmA5oBmU1O1lxFigdSsP24dUHyEDTEJvjgaE4uOfl9+x39hlTN2amxJVzDcNtv10su2Aq
R2vkc7ZaXzzG04itFydLGpuS+77Fkz4rRuCbxYbvfRov0TcywzfMWdTAlKuxbVEjWQfNlZx0Ngx4
rdehSF1QvhD5X83rEfKlxEG4PXXTnlnCXg3ySYope/gvRbo+qMZlZyWDtnl8j2vrwuVeBGBkbU7I
g0j8sigidcoB3UBaWgNL/qnnoBBijNp9i46CG0rDxHmgZbrDo+RgE8zgIg7wkHgEWCJXKAVlUQTw
WTKeoNun/5t2lTQQoaA7udnnOW6fe9nPY2F4+Vf3PwU4wH0b2Rcrlg1Cu+pUejCM0JgMVrjyStjD
dOU0Jij2fDwAT/5YzNIVpmJTofpYIVpaCb/v0k0qfmsnRy4ARWuH5jSkv5gYpPQmTxBCsP96NNJ8
L+EWa1iHsEjYiMECB9Uc87QFdyYKVC7X9HTW1IzzidqjFNqkQ6gvkggu20y8UEU2AKMaXN0IcPvQ
sptSIOpe64n05iOvMhZX10JRVQCtbsm2VteMdAL/9td2bck3qI3tbPW3WOc3dPIzEeZdCapfwVHx
Bw1e9Ya6+NkWWRgg8bfZjHNGDLMQePJrzrMX03cA8zLEUicVsUB5GxLwiR1IYLqkprg40sHgUOvQ
YouB/RHwRb4CcG+tJ2PHxe4KWNjJg7SLuusg/n+XuTdWgdtvfs503qx7whihDjqE8yFK24bDUY6o
QfnYr2Eh5ygupJk6JEZE2bo9Ul6M++fe+Hg6ryLLHf29CeVszCJcM1RBtgz6U7ClMlrZBWDBMuDJ
ruhFv9tW8nzKTO64hu2120tWG0tNEyFh5W1GbyTd0r/PFvNvfpA8azA7dGtP770UmJIyVXsm6Udv
PH22SaTwWBOyBUqfx7AqDg0ThMAUIbuc8PuvI8H4/AjzOoUaUTVkcZdy0E3ZySBuxDUTM3IHsdw2
zF1jPG7Q93jG/HqmGe7qf5RSqEkrcSIkZo505oZnY6PIdE/n2LBVa5JqbzE/rv1VL9coCQUjhDKM
12AQk7trogt3HuIzSfC5ttAVXxRCY9qQIPmNzEQPHL6wRJFB5AWUFZ8TMHy97xWZmo0iTY2Wkfhk
7zQac6KGaoFLO6HrK575xEiQQrHupcIruxWYC+moYE6QgiMGNZ4Up2ix0nTqhVsBzJLIs9vW1Lja
uY9TBf9vjwyj0zC/cp4ly5Z+hnG/QrREAqY+7/kfowOPeg68URB22LhjSu9mwQtwvIW0apBmeVxD
CF4PjmLeISucrnXQxcblncPMQ/6/UqGHRH7ztgzquK6gkQqF66HpKK5mtS2NN4TxMKXZh1cCyCUh
ApVEBm12u6kJ4Gqira61OCEQm5WLzrn0ZX7htHbwZSEriaNqUowc7RHkyxkzy1t8hh7cn3PQNn4s
6m2id5fMedOuT8KLkIy/7PNQB5kBxprUZYckVgu2benxVStMXlIvhUCY2cEgkwqJEiNFFU/6V5HO
b2jO38IRwjfRuYpjKCmUehavmdlKnJ4DX7nT1uNIMSCmSP9ryzV/KA7fIhSq+lsFEkbcRxu9kE8H
RyF4JhYZHkXW8NGruulYIGUuy4oxF41L6c9S7VtD7F8C3VOYevvR2hA4KrWoTezZUTnGqAqQNkQG
LZniKgCZXsqIe15Y6Dm2rdHiqGthTbasBsSAU5LzC+4gJ3JpFI0ChdldEnJ3Zxhe8GDHR5eUXBV7
LReZdkxrwLrFS3t6HETbhg1CNXLOhDFJS6HChJ6N8WkoSEsrGvMRAj7DTSuxUhlAsOVo1yoxdK4S
mjH0QfV0/Vrv3eoYRVyq3HKDtVrn7P9zbkKaOn5k8hlEE+JSQ/fAJkB9DWdNQvCjs5C6vjgiuh4J
VK29G8PH5mQhjewBhGciiR6qCD74sIhO6mgDiIHCHN/dA9CuIcPS2ORM5sLFtkhwb//LDgu/UHsZ
/f9jnttYQKxQ+LJQbwxly48V3LPdWmHRYcTuULPyqn28meu1j91zJr4pgr+uWWYFAxe2FHUjq2N6
tkmkQ+Tu4fFxAQu8FOPFCRVpFTR41NCoEmdMTOTD7vRSV6C9TdPbm8F1Uy1Wp6LkrREI7DghnQG+
5CuCqgbSld7VZjx9cHYx2hIVDmL4oLrxA8HcTuTHg4shoQ6800+2HTdrkHgvUfKfyaUfvSwXzdtC
nrEd6n+4u67W74BBJiI+26CYY2pXYKAj9P2Wzmj3WDuwpKWsqGP3IQXhXZMPgnLbXzI1ZrgTx4zJ
WNmIqWeHBr5N8NgN3z8P3FhgJ94FGO/Waerojdt9GaC8l6bb3EYFZfFIfB/bPFbkY4015RzNJQvU
D+jM5oKhyJXFZTEJw+w04KyxdcvQEQ5I00FPd8VlnZRpk3UnyOFFjmesrKGJNgANCWb79Nquc/Lc
xdjFWbEtadUKeQX58/GjwO1Tr2KALVxlMFk5OUIXOTV6lvzAyifWTSYg7PghMJpQrPfoVu4WNbSz
xkxiICqio+mOmHQ+27Mbl4WAc7WnvfW6gnNImpqbJ4NhmYwRV7by/pwVnJu8Pt9Vidfo0LaDcEBV
+PWIiXbwPxaGeWIWE1UZKr+E/P2JOX9SGQ62z+vLDvf6fjMk0vyD0iyjmR6DlOHjcrbGE3OQSPjb
g7ZIb7SsXtearfcHkmfZH+LQe0aRw/LHOydsPXzC7xxxsnykfWtUaBjUaeItyUnD34QWGMFpjYV/
FzbGtimr1UAExU8WV5JeFI3jqaUTPi9iB0gQTFDE+0OxQFjlTjjl7D9naVYbAij/UOG1elVgpNeu
HSzEsKcEtpqyGLsb3u4lZA7Mmrawr6DwOxP7Tp/K7vrRHAp7Gt/it+hzlvaJyj24xtSkStbm7fJF
hDKuJjCugtLIaoRG86vNCKW1sGa6v7tCaz+ULLYzy4npeYuRCk2kJSkFjqKlJ24XgS8DOTbgfb50
YOhAciZY/c0avFm7hba6W2k5DSDJbZRs/BFxcXbkCF37CaQmugqonQEoFU5UUmjy0gOm3Nppme5X
vCqJYCUeuLocjKInmUpVGFCbBvO94Du/ZVRbD3QlKXGZoA+fAywnBTzgOgLsploNiVcnNDLpeWoW
BVTxOuEAP/ztIYpLJSMwcqMNVCypoXb/nRFf2EOvu+nPOIWL3qxRoWiFGtEyT96vKpiC8qc5E20g
bMi93+a0WneSLhPspsq/6eG2YNxuWzy8bjB6hgY+rj01/aWwKGQjRFNr+3LiLlWKB4reLciuuz1Z
wqg36y9MQrQPOmz5e+ISr0uO5xUy+YK9z5OwjLKBR1D5Zcw75MtgkE/BN/yJUWlMq3ENqK3/HI15
lQ5U7rHKrAq43M8pvRBckcUAKwgcTnwpjPM/+efZlsyXKb8XkQeyCls9sxtFB8nOKnYpKE8R/dFV
hn0UYcfp5Lx4V6HPCfXpJUINHdeQLdFfql+StfHzO0GsKHMkho3zfWfoUeZJQc5DMZAjaG/6csYw
z4Qy43NKLPtIk+WbnGmPOobtVlV3PHkmKX5msgrFx1dR1/ZVJTF/b/RueXt/rQaB31iynePZsQXd
x8AOGb1/cAsKHvm9HZHxokCUMh3cb0Fp8wCiIGAEUdEp2ud9l6hEL6zfpNoAQLo68GhgHTArhRLS
vIn0UZS8itXJB6SU0FJfTi8eyYPqiAO3fJCHt6/t0rwU0DuY06uOn6srCGU8K8yF2jqfqVTjOblc
DqbbHTnvoMQgETyevgLFWBMUjC7nyT7pzvWHCoaNZCSSXLUa3HMew+P9lJfWXx/IxjpTNnJB3CE5
vM1E5v5swveGV7hvVDkAcLyqTJcgxD0VqhyihOlge1CPHZPRF82p5PZATCRHFsEEYqP06XozJLJs
FHW6oZqnJnLhLgk57nzn9/aCqrGlku98h1eS4rFSTzT2sCmWcp/nytobPY70ZhmsOKAHR3hucDE8
YuxSYfy0F41e6wkdjmVk+UVVMiwIaPHhs8Ci18dwGRT5Tatm09mic3Mbynq/uR5zIPDuIte53EGK
eT0XLo6ZSbHLFduxnMgB+yS+tDfqgZxgfENIPjchZbuVqCu9uU8qUw9FXpJlA2bBK6GoKjbd4buW
BuqWCcix9PEmaXKWfUdO3GitZ8g+KXp5mPF9heNcM3qykmvsH9vfAe/xTxS0PRx4n8P/xLOZPqWZ
hafZ6wikQGcuAHPoyNCIBZmktUqGILhGb0I0OcCaPdTIV3Lgt7jQd1SgL5Rp88QJNLufT2UGR0nj
XbrJ0fmUkCWU40yj4w+j5KKJq1BU8ueALHdET06NeaAu+jff5rZo+UxzN3yOiR502FJLqVtXzkCt
U/WifwuY1Dl1mBUyg1a9PEM+xJ121/ZNtvHkMD/RckxRu3ijxxD/lK7q+f/L7npJLXnUmMxmsxWg
KllpDCrXSJbKQRlGvRIBlLEBCKKVc3bskwLEeTglmWoIgNGN4jg20WZFs8Lx6AwPdU45e8cfvuLQ
sYOnUBi6LMSCZM9XI64Igclrpx1yegKpSlR54c+zFxAuWecDClztRs3W7oWIdkMu9QVCXQp2iq1A
ovCUef5kMfyVbYyuo1XVkMP8hslHYmu9Io5z1aBcVLAlbUFfUgZylyuPHBGyZvH79IAlaICXAVJX
HxzPnEpn3nomLOftWIpbAOEd6lGQyjIxlYSBAnCI8/kvIVjSyuYtg879ymTQ1W2GzaNsqDel6xrX
Z9DPJFkmAFFFR7zXUHUSM8xlv7SaNd6BjilMv456CxvSJItTdqPoinesLbR166ENNZ8hTbxwGynQ
78JYBEgnVKRuHaQ1+/znyzaFyEfO/4uMknsE20Y/HrZzsLnkeAUiOFDTddznlbl5u4ffsMWC6K7T
brbYce7QfdqzQDB3SuZH4L39IJ1Vhtv8EUA5whyb9knTNWARuWfggQNaBRAGafO+IVhbfOxFqXZ9
yqqIwS+AUK203GOVOz3QT2hwRxIiLlUdFktEAT8ZWPQUxgFxeDgMrJlVh0724EhUSc+wsPeYGTMB
6QorrLZnUHz6gOAMcSEEEyHSyK9hmgTnGU1b+SLIq2ZudaNFDG/zj9bJzcpAvW0pjaNLsTe/K/lN
DQU3lnLOXRoC9dIuJ5VqVJgBdh6TLB7DyA8/RsjLxwPfIz5aQx8F+eQdNSPWdgJyt5aWJzmMDrPp
R9MHeDWc+mEP7jDb8Nxcqh3jWWaoSXduLwAyHT14rk3cnehbJCEb1Z53cdaZ1gZ6lR3GqmNieoVe
YzoD+DL2Rqw1MIehYXArVxvhQwoG90yKWuJ6192TrWRSAiEeBfHZiu1ocJEVhDuJ8gIHX1lIv6n9
6hYCKvKAhqgF+1tYyfyqGVzHtv/l7tbHJY4VIaXR/POIxAjRcx7RwguyKGs6R8Y3VfC71KPHCyb8
t8+kCbmX7C1Exyebw0Uw8OdHMM6HyUZIIs9IACGfVva0Assw0hvb71+UNdKHIknf4MTAO+vcMC2o
qlZ/s5EhK3l4A5lIyQZDluvtCxcrgNORtGXWjqnpK7S9tMAFb6yWWzemGKGuZm0aVTZpVHyy0yX7
au9CaGBneKE9w1N17cxM7h/PZXvP4Ae4TqHfY/aTClaLWpGOmKbS9OmOf7Iybwh3VEXMibkF09Ey
8Tni5w5JSMyKkr0R71a3ALoMz1MRwaqKxHDRxFPwyvs23vrnGqvQsqJr9RqwdHmdUWrzMccmsRj2
S3hms8yfO/mHq0yZVCO9PQ5eJPyO3e4c14Xn6ivdVjEpII9zYJUohukxzejMXJDhHYjqA0Jt6cAK
vtEFezB+Cgw3uJgtBnDdZ03Z+0FDnif0j0ib4jqqeQ5PV938zRucPne/lq9jt5KTEtL4J2ycAh4+
vXsQFqA1Kuo2uaHV3Wozbyevlgegy9HuGd4YA00cVHZMYXUv+qZkmZFYZ5ATJOQ6rgbGBaM6tdjw
Nv34e2Iguau0cxC6YAieB6ynhXKxIqNyStZ9Y3Nc7oTHDR3jFGPLto7Z0VVXd8EMvCYcvrvNgbqV
WSq398iO/0UByE30e5zfTOPQfQu9mgHIsHBCo3UbQMBt5m7XEWmxq6m1E4RIVJGp0+neSb0SXXj+
mpl97AsMiLXYp9FqhGN2eqFIwPMSzamFw0kQFEnQ5BvCjeknI2DNGLzPloKqig9obmTRJ6n+KyqJ
pw748rbvN29nxJdK0yBa8Z76STOVbESQ85wsHkQgQnj2a2iYfvytPEykeIlNEZqje+5LjfOx7Vos
OkAbT5X9H7iNSiHvWJQxYWLY3P+20hgs/LyGDIQlurqD0J5gJPe5nlaaje2bHeBZdvZyku8pYhHz
253Ys6HuH2WxNJHXMO5lHai4HK5/mAAD8+F4pt7yHIXek9zQUxC4z4WVR/h1XRgQksSOLP70lCOa
/QmuNKASIqNd4y7jhtFG+qwA6f9Y+X9TjKq7zuDMlNSjqoaLqNlGVsJd/AmS2J6peV+vmueIa/Gc
nsnRd+Untt+zaLDiI01hqgO3i6UzDBh/ii4fbHY0bitJvbTi8E4dm6+fEZP0VLJnZbBEtMF11gpQ
44OxzueIoCQSAoVdf7CSA3Y+OuNtu6+z6yi0RsV3OskMFt5NGmffMY7frD1TTcR6UF/qvLnzgKn8
6xY7V7+dwhOO3yIWy/tDENdjY3jzTNShxaYtOV9Qepcbcqrf/qmk+1iL0iVZqqH/OnTkCW2it5yI
8jbwg284u0MBTQF8QcEzxqPKH05AdUuUlaZeo/BxPFG5vFm+3C0sI19aclbEmb+59b5Yz6JovHKp
BUKLyBMz11Sht2tpHxHSGkjYh9GmNgdprdA07P0z1poh8HVDxBLxi5JshXZRGcbQitm5ic7WYspA
7sO32RXCTPK0QfiY3BPDZK3gHTJUwXxJCv3BTtT2Q7AMkCGoepcQYPZ76PWQcr5xcoZ7hK5gITj0
p/RJKGxsdr+XPSm4+059/Zcjns78TUr2NvA7Qtxw2arVHtcgy14Du94PbGV7JvbEBRGbrBKshefb
Ur1LCVmWycClPoSYd4Hddp4VDGgtu+si9VzJgIiLQtqZ+K06GBJCzuU6sOe2cSPkRFUJ/LzwdSkP
aZjbHRhvJBbvqkBHwwLsV12SIJx5fvBmMKDP2QrweL6kHVHkRUz8jvushU7UQspgD06YCvfxpyVH
TrQ0v+OrybK1EIai3dYvNGZ8qaWbuPVUnCxpCWlsZ/5mNYUzmVPTt8pBaxIbNbtOQjeRf9UoziHl
9Pzhxa9spgkxhYJ/logQ/d6ydzHCvJQnuISYK51Ua58rlfZPzYsUo+fSitw+IyDlrawJsocgh8UX
wxgP5x+6qsvAs5SMg8H05PJKsL5/HmBKAXF1Rec24Chgy4vaf16bgNDUzzJeqliBtSvtlq3cwlaM
/kdjoiDl5UK9L7+Y8ZsUuLkJhwRH1eIIzZ/L7Bm1OVJD8z4UjcN2tCO1KQmyD7r15zOknFB85LaH
g/nzfpwCpjFYAQ+QIyfa5Tl1HjrhLBp5NBAbzgJN2/x3R+E2zh+53aPP0TqIw597bvk8+jBHI9gj
oG+hwL2CAa4PRtYBK8hAEFuRGFuqztcwmlheU0f8P+ixgUSnQo3ILYHUyAZwoYh+haxd2n9r4ryu
6P32kYmN4FEJZEE1yuljnewqPBSwTewRPO+MWqKIuMTDAJpuMXSpvWyMyDcUbstqBL37GVLJA3TJ
B/Fw6wsr2OY2pd7hFuzTkxt+P46+lYeKlldth4vIoJMZZSgyw4bGeYKMxeruvCQ9QYfXDb9rdFCS
A9X9uiJSVH4naX6VBAyCwGCkrpkwZe5tEWxmaUNkG1BwI2YVqxH6J0urqbpqaWVu4mMhhRd99ent
HOH0ziG8ArDi8mDTSfygRVngRjO3uxSFv2G6/j8CgByqJj1QBT6Dx5hwDDzi3AUdv1Hk7DRdPt4E
s4UiHU1L33UL5qH3ysr/4o1VL/KItLUJaFXgH0NY6LRezfSGEYlrc/zmrmDePu1O1E37UX0f/8a3
5Yp7HKfSYyGvfDZYWuYkElWayiieRmRQTYVMXUJZAJSd9qOaxVtvH/WJpKiy+D82wWcpDFVOECwu
CTgv+NAMtt5pCQMiu8hKtFmwqGW8V4eR9csPxTp7NX7sYWesokczNUTesNAp6sfTVI3NiMVU9gMG
Wxk0oaAsU+HClKpTTpr851CDBeUlLkS+C6XzDxPBRo1usATMr2VnaBAVSWKlryn4ZVYCZxgIdMm9
uviby6ZW1frfsm3DjBWSiH6b/c/ecasmKk572S6q7Qff/I0jaufu4cQbneT2Qt8U2hvO+NbMlEw0
sRixkW3DAF/X7eD76xNVmfgDwFd0F58hEo1G+elYzTLmdsrel02w/LlGyOoPSfv992YgjOL6M41A
LSXjL9Abdo9WF1p/jPF0BAq9e5djEJq4IcD3zjpYUeC2y6LD/UvL8XlWD672hQ2G3+d/dfyt7a5p
Hb56sHUEXHkMYixiA1FhSxdVFrakG8MbTCu2qrEKxyPGZ3/4KMc5x3xC2Miq66jsSEI3AMM69AVO
OJrYCzxjBByMk6V7VUKSA6UPk4CjfQpAj7CRaMtGl3IJMY1bEAt5rGue35dN+i/F557gvqb/B8a7
vTH+TpPRv09Y6ZFMrqdnANhw5LvqlMmjAwe8dYHYWkMk6LShkYt0osLXczIOb2OEeQaAiz2Z2KJ3
zf1Y/5Uw8tNUUER3TdosQWPkQiuzrokCvECeUOHmmTLuObDzNRvKIeGXyXKLb6nFCIDigrWT07xn
dE2qUl3OFjat6S1lKlQ17oWzt/Z9OFOGHINg//W1GKbRWmANfvSeE8UVu2soUfo3V4pKmTKn5yRI
NLNPNKX12fNv8iojhCzVCgqWN8Hiy9Yg7gdfasqvDj7AMVA1nShu0e8O0TYP3cYczUfs7a8e/osd
8vh8oCZzXdvmZYpIYz4pDNDgKICtWJGnZHZ+1NXMuUQRmBVvTDGL4Yp4IG2snSf9l7MGFU3Y07IA
bFfZJHksiJ/ne7rDUmRlntHoBajgODYdZUpb7tuy8RiRA13kYqCo0r1/x/1N6RBE+I6vDw9qsfK/
tfhY2FLQQwCDqRD527stkGAD6Luqs3h4asqygUjR93RubWIwUrb+NzcXCfDj5Kf8fiyTYd1JibtM
FKc9z1jowv7F2Pwohiw06jE7sUmjKXG7r9X/e59YgCQsb4rS0z4ejn1Kc3mVq0HI3CNCGCToCfNt
dB0Muo3H/la1SHZBFtB85sRMLP5ucJulDMmddCIKzrZRw4HeQK9W6pA/1ZJxhbF0ovZ0W3wt5vcr
RR/t8s61SttkQLDqAfGAgTYFQe/52xTswAevOLqfamfyzaq64ZUOOW78FQkMq2B651Gb3DXKj2Hn
Xq/KLrcKOxtE18OFJC6kmBGNeqDkEinXoZVWYtUAe+dVB9xygVNSGSLpl4bZeY0yioKv0AWiTb9N
IAlu/X/l6u6DH6WK8nw2M877PPC6hAYml99X+xTC028Mi8ZEpwWLv4EzLaJN5o+59qZDieu8O9eu
6zLnXPahzhemjPcv69ngtQks/thzZMm2sc3ytVm3RIco4dYuA1NfNCppIy99sWdOCM5Ll0/tRUsa
DYZ5QBNYOtffFwHtKQM63juSRMKmZ27Lb3ESqh/25plUyKUrU7olY9D+1lLk/NtsOftzjo0PYHDP
7OB4Gp82fRI2eEcH0vQs71GZ6ICvzQwpSVI44/itor7J5jHUXsfRzKQnU8BCfeVA18M9nT5igG6D
UvNa3JJIwxqekAd0j0B9iyawVpz+gi2cwZttkFCfEwSoi3AMRcQdIjqReCMt2tvpg21oK9CxIxl1
M8hjg7Y0tdNHUJjAsmNXt5jaXUHWp4VJensy80+lks4HFgu9fwHJihna31iVv+s79iSuJP3qSXjW
kjwRXQk3koUoNJW1TB9B5if8a42mtmJ7UPIrIkcPS10I7KlJ8r4cZ0f6AN2VLL9hEFpZOQ5kMc9T
YoRhPHQ74TTdXY6Z504AhkeDSbgrv2z78n5RMvVEkLM/Nsgs1px/Lp/5gs+pFMMeUGvlobOv9G81
Uu9FHAnmbwehAAkmO6Rjdb7yo2WgLm6UH93GbccKRQ6WtVOq8MuTD7wR5CqlUssHob+p/HeVtOSC
goCQumRIMX77VZnQwMHdD9JVlEblMgS0FCdyilA5XcmVKR3OE0mwXCJ/o0lBHJUR+QiXrhcd99Wx
GEY7UnhiAUPmgUeVue1FWF2IBoKkD6oVGk+jGZVDo7tPoLLGIxlX0XmcZOeoqt5EHyxYoDPRSXzo
XR8J6gkeP2ocRkEdw09ghlVs4JULiN8nhQg3CrzRT4IW76wP8v1hpF+bwvMslMzbV5KmiSttAWJ+
ucWjyJta6GLD0HMLwV2A9U1FrrAK2Pwtm2b9OlNbIm9GM0EkjvqJGb4OzDwscxYa24HXBp6UzAKB
jH0OzxF//YUNQOcOx3cMIavc1osx3Il1aipTN6HyGG+iJSic4oLPS96VtUlg0HpyNleLKsj4rM0k
MCgJe3WpVjhgk931kSQC7ACKRv/6GNiWbM0ZGYCeRpkuLVBkCPFLink9SYEn5RzygdJzE4C1VZE0
0+Wwfko558Oucs5j6OsZRX+wMW98SHls/FT4JTBkezyURdMXEDPgpDyhPnfhq2pziDX4DuD3++25
j+PI5L1vzURiV671tCI1MLbLJnDf3D35cyFYsmz/98J3xyxqbXnVjAs/i95Y6FImJ4vvg7j4ywiR
9WsUO0dw/poD2mu95DkQtFo87j/QEjK28drWUOvN+zRs15hA8ASLkVuZwxMOtA9BMgAWhiC7qltt
UAuE06IlYnKlyVSaNeFJ0eJ+zEKUKqf28f6U84fvkGi6iMouOU4TX0H74GORCw0oZ8QyFmP8Q1gH
xcGFLvVhPURTjKqFEAiSQ9j5mfMeRUk317JRpoUwQr8wiQpnUh/bX2TQkyzozbImczjfc0Vvmlg4
FfIbW+k4fb7II4i6LPxGHVOtvTEyhcxb2SCnhAvrSJ1L6N9iiu1y7zMvby+uKgFXm/0PYpcS7BMD
G9i/fEzlR5pkmxWgJcNPsudGqIu6OLzOtdmgb7IqaiT54MiSawIHtsF61BYpKoGB/d1t0T7k29ly
1XDxfR+cbZzJevy2MU8y5Gz1whTT/SP1J7AJtBBETlWOx4JQjwcubD0x/u0IBTkMVJK/auvYuotd
rNw840zsCrYn1k0el/jrzjeY5M+hUq6RyPHIiXokVrzNnHYS6W+m7ieD+M68G3lgE/aaHcngJbkf
s4wlZ7jX543Cgjj73cZpBQ0NLjcoRZlQbOAe4OFQJuvbHwkV4s6eiRvXElrMSfqKS+tWdS4kviWq
vO6Me1XbShvzoWxIORny280iQNlM9tGuH0ZTFHpga8YelALdCpSDg4EbQso8tL3mmg8iZBwqvuDO
ssFnt6b8gl3A4uHmI6Zhw0+uicCN2z7hOXz7ailu3Lr66ql3zeRns8eqNZlEZhjerT+kyKXcTiO9
d7TgeEE61m2O6vLTbZZImXVjZ3eOJM3tdmP4Omng0jmGfaa97lsJLlXGJAWC3avEd7Z2oOvR1t/E
IIScjlfdkBPqObX2R4nYiKgd49JQcncwMjepBsJm+JhdTgrChlGDKqVOOHWqQjAy/YfshzcNzGit
TMK7NTklWXyzPHmbAfZhVFVt6ZEB53ND6hxDpvY4C7/mL6jxN0k7s1bQzxVAjGN8Xf9oxQa8BJOb
DyvRPiDj+NPK11crzOVrKEhiwPVsq7sZ6v0rmhAQ15Y8anJNUkzA6Xhp2VNtehPy9NCy1ytcmSaY
Xd+pOJiy2EtDnI9LEJD5faKBr92tHHb+ut7u/c2mVWu3AxYf+E4amiCsnm762yCSxy6tXpgTwlAs
C4pnD9DcU6yzTMEayZBBl+MRvOiUD+EZJb+GWKE+3rv8+D0ruJrRXZ4rsXWkqCzbPM7EZUkPZZk2
gUp1n1X3o5qyvo2oH75ItWkd30CL+w/SJYbxMMqOVMrdST8qwRG7RTeB1Jx59Dw5f3VwkaktWXf3
CZrUU1+TTmM+rhahcdEI1/M9F1oV4HI0knWgTAk9QakzHdyvNtD07oUvRbKd9BSLRD0OAC4JVhP+
QfcMMFjXYmsnhc7PWLsvLLZGk5uSjYDmhDpt5xD1NxHFZiVM7+NEhEuEv1S6qw9MlNWAvi9PdGis
5xcm3MqbBtrsakOOtoa4L6qGbkuhtsWqu3k8Erf4WvUBmgdlDUK/+mNxPs+sVaykNW2UEEzJn9ln
WLNMLfpTgK1CSAjYyBukhB0tYJYIeP3RuZc7ZQyN1/az3/twkh1wCg9XOFes3qWjeSItHtCX40NI
HE9VKHA2m0cEGje/tyAemmYJxwXd4nAEnE74OwI3wQT4elBWsAWv2ZgOk7Mc9Ag/9PTxbJKOwN/M
Rz8j/DoOA2raByF1aSIPtDy4XSWw4v5AEmvciKc+nmSsjUmIgtPwXxPtl41AlqZn/1pGBe1FPTii
iX/shXySjQHNWhWjw4+MPUQ4XqF+TPdx/odqJ55DT6EvFBHAP2bv66GaKaHJ7t/eKSWYiMyEhBxG
RQE5pZmgwszwpqMeP2AJU6x8GzXI8RJtaW+9O3z10wY3aKLKQV1NO5NU7lGbJZ93KXvWQn5FcBAB
buXC283jXZcq5D3b4Yox59pEmKf9dOS/EI21ozLsLLHnSUAS0AXlfzZCQiavO6N9XaFNr7PShLop
8jY1EN99esoth0q/hmcPhqlF89/vwrz6qWNQPpLrGeKAdwcjcDqK3yyJYXYiJnNE6G309ozjy9eN
KKsugKshA2xDKRJQxPUJN/AOWbE+QrFCStKB6ScDR8gdVN5MekP8ar7jkb8LsSVM1JTAiaGwZrPB
BKxtWKo28jiUK2yfHMI7SflEHJza2eAN0yB915LxnkQCYnhY892337pa5jkCZkI/gl67MdmqRhRr
Hc1ASG3bW+7og46fcZeziUP3zriUA7mlIehHihfIVBc+cnzzVS2Yla73MIPdxOlNXunanDZwFInh
9GgLi03qRRnZuHJCQNT2qS2aBSBj9foOFqrG/vVdQY3jQSk8meEscOvZW0BmKTUpqYYkEmW/Ngh1
+WI3lUwJ05MQbkMhSPvxQXZFUCFb2bMB1QIWJiCr9caOXkzk5yL7nOz6V15v+W/C4wwm6lOijlnD
MiIkBxrwzixZeetJfEjNHIThNWxrcNZfSb+SkoKolQCh+iYoaCT6ATZaiWuOCOJ7MdKP+p+ISD52
bbPjNHlQSqUe4xGqz05KJAwoFTZ/ew0poqavdkDkYWT1aYqqXhl9VJ7LX+U2wmJ6we8yaKkEBPg2
xs18tTxeS5f0bYdtOmbrPi7Dyq63JAhpbVsrvsRwUZr4Nj7mlVT7LHTAXnF4KFuaohILCV+t/Hzf
/3fIPy2LUP1cnzcj7tCMZZgaBXGAwHqGjon2hj8D6rd98bmc7r1cUYVdYvIqmAX1gOhNeK0sFoCT
cWcW/7Ih44bDq3+tM07v1X5Qlwcnd/83qqMtzfSqFYLa1XvzJMpXfVFjnsbf2BVUH9nAOWi21r55
8sFnbZ/SMv/wv/88LToEMy30ytcBr4dvjHz86XSdwH2SrmqloUe7V+M/ZxSgkEwBmHfvqbn6poJh
u0MoDx0Cdjg0uBkeT3Kq6jmGkF6fJZ50cbRQpxUYE92IjqO/+DBnI4sNO0mMrZcvF45dv9KfsQgP
QxYLDdXA+g67J5EnxqWPwABc1WFlTEj48BbpVwmL3RevQ65hjdn2Z72tlsVQcloXpeH4aOPhOGd/
tB7f5w5oP6vTZbkCvz7F6Y9tG8YTyFh2QpMrVciNNsA0ZzYMnCy8EdYMip48IY1GgMHQZZBlHuJu
uiqw3o7vptcC+quwKKpJwWY3kKqGDGANfNa0WojVvxNAQiA0eF7bVLI9a5LR8VoJerAzPoC83uLz
ATXFMVzpTxoqm5jDnR4OmodZBgKvLwLeau492Ax4hAHByWY20T7LpMU8p53z2c8dZpxZtlze3WF6
SOptnE0Bw7/d52p+RJ4i+QnpfND/oZpCJ+88NOEeqPT8TsjX4NioQ790AHl6YYP4u14Ve8YLSD2u
0Vqs6W5H06IrE/HCshZ6LUuPgUTw0YrSG9CEnu9yyCz2Akcoqi5buuL7LlWvsRFJPWztxZ6JeJL2
/fEnhwzmeB9DR2CvWUxCJVbQSIsr2xYx7HIOs71Gb5uEBTlI47U7s5QU6V0NhnT6XXd10Y4O3AvV
w2hjDnPzawXV/JZUuZm/ML60Tt1IMQzTgng7eYjZ3W08ZgAlGqx7/gYb+Qg+joOhfBitABcUGM/9
E/e72NUdT2dzdvMUfvFWxEpOPWRzV+kh0jfUtk3HM8/w8SXJlA3QvZJl1e86yS+ivF27JE3cwRS8
7mqK9eEQitGCAmNJISzfvxQPy4d/aAQsBjEYFXH9NmetP+YJPphhJm7VxVjLxPG+0Vu0eItykojl
ILTDJD8zXOqy9VtDvPxqg61rISlGCarDVYDPt96QKf4lez5Mwcjd1QpUZnoHPmpAj0VRHgF/nsgL
Bzgi5PljyMRzB5iqF1G35gvuJeytVKeMfNrTcyGQL20GVP+Azt5oIngL3qQfn8LuygF7g/NjDZdj
qjrT/eIiMIJvQJAzYrGvXuQfPuHeu0QxBdskm9FzZthcpHv5DYnv3RDEcFgKNWjR4MmMmVjl+okd
0kJcEfk/hXXwwhY6KE2cPaSNuzVjndfXX3CT5uld+G3GmZhSj0O4QvHw0OhSVB0UF7KjC7M7uAKE
B4iVNeoy16wiAuhXRma4UgsqbgJrwXnlvmOUQSvQpDRz0ZvS7xuXf3mdonlCbkuh43F4ZLVIW/A/
t5skxvmZiK7qfut3/qXQAEcSsVDAybSuvppe26D6OQUo1jdQ+jc+FfMtLol4G3CVYk3V6rbSiop+
i6NVABA48jErNHEg7UeVRcZcvP1uB/EKmDiWLNK3brOws/S0QKR6zYgB4nwSRXMqHvTfVTYTvhKh
U7INrt2WEQMBWsky1s4QnyOayjRSzeuPZJXq/5ti++87TonL0fLReFhmnLZGUzQXtV2GQU/CG28a
05kBiYb5GxJ7ub3TrccgEcKgRuV6TxbRoH+2ks7LVpqRTaYZ4sGkkcAHCp4t0XT5u0g8JiNS31jf
IrbmOAEJWJCQ8Sb/tB9c2HUSzbfZqmo2lTcvzSH+XdqjqDYL58Zx6LHQKUHA88dZP7H3tuAAZ4Ym
JsXiFOKHWhGqNYM79pspVAHAaSA+UHjYoRaLZx4cC7kF2abVIoRWhz91p6J5r2O751NcG2BmMpBy
EwdhjzULrvZRNnkb7bSrjc489F3IjjtBKtVz4kTb5+/N/5rxQTB6l1eN/Jb7eSF0dprIwCE0j6H0
3uEnu/HR/Y/NsiSYuk937Z9G1eV9zSi13xvr4/uE5OhE7gE87nyxEezWKFj6oLGZ1zdhOAX0E6mY
XIcuNVurHsOGy021TQFaljV8Y6Z3rqBigHjzpbk58p/m2YpuI9meI1HY/aHZds/0/yu8j5wlamSJ
V4k1N6SQF33JZ6YrE1GGuZRpRP4ohqEbBxu/ZgykpHSH5TmwSZs62yM5RI3eYk7BvHAhqpBHKMSy
6GLWsXjrbBVTCAhwMSsNt4yrqaDR2eCNzvnYMZIVXE8glybbCtsBjaooMQNS+zytIw+GUHo2vAy1
sBWQgHCR3kLV6Kmk91y6liFIvoHtxAiFiwGve5dl7dC89izpeNxo93sJ3nDHyyshJ0C12Uz7jKSA
Cxv1/aNcLi2iHHAbwMlVPjZblHHAYim1LM2zVYJSFXSMsfLZ7Kgiv4kimPYUDh/vGFg6EKuTAFq2
6bp+8VQTlWipkXUlDNDvl60RLEK11d/CUowShXKCwE2ChM0jFCR59rX6BLQsQOuXYI0nKfOHG+ev
VEYJiPk0aIKD8FIfYP8MMpUyxi9UK/ubbCk1Eyb204K9KTfVN0lQuY8O52iUVzjVX4fjaLIe/nNk
C5zHuNRIDD+4p5RH5L2O+Lq8m7zOuZK9KQZfLSYEgJPGBnwWbryvRb5cFcv4dyb2ncqVyozgIwrv
zLCgZAzQMTpcbMq4VSWfUGSCG6QaUg1YGq3VyO6HinppOzRFbphTjdrV1Qg0YxvuTFQpeewWD5QF
NiMQoGmcdlfS0ZWEp01lP/2BGKYrHLEQMdryYc6Tdts7uOBugHO+uF4bkDJyHCR2I0rF/ZzSjL3x
IsQsCjXG9XVp+Mr9dx0iER1W0/5TaSCvw3qKz9alK8UW2od1q91db9Pnx8P09yp+kSq9kvjYJdvB
/i/FOXu+3lew4D9FP1FEv4d0LK2hGpwUDQYkyHm+UnitOQlY6x67qA7zgKFZLdDb9Y0TsFziy8IX
1f8nbDGihL9XEPXdIqO8I5ce1VqadQ4iSzO3hYnaJu5M/diPqBFEO605TVyMFsFEZpQVci3d1eKS
7QRGxGsrnJdRVEwhkMcrvSJMDzNmhAODZcE4jkW3uqNALKi7zoZc+v32V3yStapWz3qECbsWQIvx
2UJ8UITxzJNKAOW8olHctmYAhCvfGD37FLc/Cl8ndtN3mkAwwPWc7/4W0zGHnjVW0/Tbc9DFbQV0
EG08X/iC8Dny0Egv/0NHQDHKPgB73gsJH8tGTeXW9dtcGTo51Ic8bHoph1IIKh0GT5wGbzxxbqJx
8touXu4kuX9E88Hi7Y53zXMu1vPtupZcKrI0CStqz5gp1olsUsE7N1ofWhWTWI334ojVsQ/3A5Ze
lHoN3QJaTTWyOryYfUXwKjNclYkXWeBCWVmmPm/ejZ1qC9nrGqV0d/1MWjMjPlsG0HlQAXW2K6Li
EzeoGHYNundI2USU9ui9eQ7mVbfGMxZGDuojL5BZ9/6rYfFpBk66k1tubxRQmo8JSTDeIdeVeqt3
wsB4zD+16n26/v0ymC6VSfN7KNvSCqjBYa8VzjjkoZroovkDYnssbTqKIrNib99Srcinz9+AIrso
qiIPiWfG0O0X3uQTh1sA9lXpQJrlNn0rHLdCZOLnoyeJkheWe22kqKoEfLkKTRhhV34u31c8X0s0
8XXZiORR01PMXjiPWSdrOqvSn3goXwjCCEho03asf8janlUdVXc+nRe0nZlmS2IGpjOQg25SYyOM
pXHlmWG4O41iIWllMBykUV9wMwTnNYPhdG21Ps74WmRCaNsWpGVosfMHR8bQKvY/wBubgO/ygM+3
WaHk3LjxAdV6LB5Qlj+foS4iiwUcgXKgvBxOxmYMPDJEAxV9uD086unwNspwnpai5iDx9Q7ZIYTg
RhNEcw+Bjc5cMMUpWp5CXRjdKwYFxeS2r8dPJ5+UwVsJLXKMDl98Jv0yldFK7mLNQnmZYHaTN1nx
4qoKilWH/+gQLjb/IGkeTRm//cBdoxJTl0RgIFe4B7HcHbnzz51Dszd88c6pZlxZHZsIIJ5wEqEj
/FstRiHRG2gd4E7qoees+WJyeX6jzsJo7kPvirP5+q6vAzUkAIp8hWlpZ+9EtAbOprIs9vPJudEa
1xLci8yX3b3IrcXgtjIWe2zTRMu8eib4VMpFzAo0eYWGRPxTmql6YoiMmJDi8vEeNGKVWLPnuXJ4
h4z17Vcur6AEZr4dK+HGKimdgxPXiTGGKBrHZ64u6tFm0E26oMm/n93GzLM4CrK1aS3GtVViPGg7
RsLn/OGN/p18hpAVzdZTFEJsdEoPN7L2xFhuMtkBEe1tKNsMaVF/jgof2PhYTdjN/SbX5Cig21Rl
5DaWOtgj76Pbe47rOyidi0t5UUJfq4xraECKkSMNSKDDCdpuYMtpZXoWFovZqlUWqy8goJ23Ye5Z
a2jDRuk85sCCq1qIMSj1Oy3olS3CiFgzsotfshNYas6Tfq9nai1ns0GNY++MVWFJrJO6qOsrvAVm
pN/uMd2Q2SFO/K8pfIk/aFrO390pcsVT/SzvzIRKDn62yL0YJ72h/GMUpK/cDjZMQv1lWWy8vAbN
3a2SsnFHwZ6fbG71vHBxBRB8Gw4bKuTFhvizIak03yNLhWHtcc1v4u8zM+JxGOTKA7F3h5ZBNo9T
DvY92mgyOEIfjz4Cvw8QbMn7q5AN8Pr/wzJEiOlJzMD0YB8o+GERLOkRr7UZKNJecj+WdHEfQboK
gAImTeq0gEAiWfxX3LTfmHe6D4vhJ1nNSQ==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
