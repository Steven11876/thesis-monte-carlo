// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
`timescale 1ns/1ps
module GBM_control_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 12,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    output wire [63:0]                   S_0,
    output wire [63:0]                   S_1,
    output wire [63:0]                   S_2,
    output wire [63:0]                   S_3,
    output wire [63:0]                   S_4,
    output wire [63:0]                   S_5,
    output wire [63:0]                   S_6,
    output wire [63:0]                   S_7,
    output wire [63:0]                   S_8,
    output wire [63:0]                   S_9,
    output wire [63:0]                   S_10,
    output wire [63:0]                   S_11,
    output wire [63:0]                   S_12,
    output wire [63:0]                   S_13,
    output wire [63:0]                   S_14,
    output wire [63:0]                   S_15,
    output wire [63:0]                   S_16,
    output wire [63:0]                   S_17,
    output wire [63:0]                   S_18,
    output wire [63:0]                   S_19,
    output wire [63:0]                   S_20,
    output wire [63:0]                   S_21,
    output wire [63:0]                   S_22,
    output wire [63:0]                   S_23,
    output wire [63:0]                   S_24,
    output wire [63:0]                   S_25,
    output wire [63:0]                   S_26,
    output wire [63:0]                   S_27,
    output wire [63:0]                   S_28,
    output wire [63:0]                   S_29,
    output wire [63:0]                   S_30,
    output wire [63:0]                   S_31,
    output wire [63:0]                   S_32,
    output wire [63:0]                   S_33,
    output wire [63:0]                   S_34,
    output wire [63:0]                   S_35,
    output wire [63:0]                   S_36,
    output wire [63:0]                   S_37,
    output wire [63:0]                   S_38,
    output wire [63:0]                   S_39,
    output wire [63:0]                   S_40,
    output wire [63:0]                   S_41,
    output wire [63:0]                   S_42,
    output wire [63:0]                   S_43,
    output wire [63:0]                   S_44,
    output wire [63:0]                   S_45,
    output wire [63:0]                   S_46,
    output wire [63:0]                   S_47,
    output wire [63:0]                   S_48,
    output wire [63:0]                   S_49,
    output wire [63:0]                   S_50,
    output wire [63:0]                   S_51,
    output wire [63:0]                   S_52,
    output wire [63:0]                   S_53,
    output wire [63:0]                   S_54,
    output wire [63:0]                   S_55,
    output wire [63:0]                   S_56,
    output wire [63:0]                   S_57,
    output wire [63:0]                   S_58,
    output wire [63:0]                   S_59,
    output wire [63:0]                   S_60,
    output wire [63:0]                   S_61,
    output wire [63:0]                   S_62,
    output wire [63:0]                   S_63,
    output wire [63:0]                   S_64,
    output wire [63:0]                   S_65,
    output wire [63:0]                   S_66,
    output wire [63:0]                   S_67,
    output wire [63:0]                   S_68,
    output wire [63:0]                   S_69,
    output wire [63:0]                   S_70,
    output wire [63:0]                   S_71,
    output wire [63:0]                   S_72,
    output wire [63:0]                   S_73,
    output wire [63:0]                   S_74,
    output wire [63:0]                   S_75,
    output wire [63:0]                   S_76,
    output wire [63:0]                   S_77,
    output wire [63:0]                   S_78,
    output wire [63:0]                   S_79,
    output wire [63:0]                   S_80,
    output wire [63:0]                   S_81,
    output wire [63:0]                   S_82,
    output wire [63:0]                   S_83,
    output wire [63:0]                   S_84,
    output wire [63:0]                   S_85,
    output wire [63:0]                   S_86,
    output wire [63:0]                   S_87,
    output wire [63:0]                   S_88,
    output wire [63:0]                   S_89,
    output wire [63:0]                   S_90,
    output wire [63:0]                   S_91,
    output wire [63:0]                   S_92,
    output wire [63:0]                   S_93,
    output wire [63:0]                   S_94,
    output wire [63:0]                   S_95,
    output wire [63:0]                   S_96,
    output wire [63:0]                   S_97,
    output wire [63:0]                   S_98,
    output wire [63:0]                   S_99,
    output wire [63:0]                   S0,
    output wire [63:0]                   r,
    output wire [63:0]                   sigma,
    output wire [63:0]                   T,
    output wire [63:0]                   random_increments_0,
    output wire [63:0]                   random_increments_1,
    output wire [63:0]                   random_increments_2,
    output wire [63:0]                   random_increments_3,
    output wire [63:0]                   random_increments_4,
    output wire [63:0]                   random_increments_5,
    output wire [63:0]                   random_increments_6,
    output wire [63:0]                   random_increments_7,
    output wire [63:0]                   random_increments_8,
    output wire [63:0]                   random_increments_9,
    output wire [63:0]                   random_increments_10,
    output wire [63:0]                   random_increments_11,
    output wire [63:0]                   random_increments_12,
    output wire [63:0]                   random_increments_13,
    output wire [63:0]                   random_increments_14,
    output wire [63:0]                   random_increments_15,
    output wire [63:0]                   random_increments_16,
    output wire [63:0]                   random_increments_17,
    output wire [63:0]                   random_increments_18,
    output wire [63:0]                   random_increments_19,
    output wire [63:0]                   random_increments_20,
    output wire [63:0]                   random_increments_21,
    output wire [63:0]                   random_increments_22,
    output wire [63:0]                   random_increments_23,
    output wire [63:0]                   random_increments_24,
    output wire [63:0]                   random_increments_25,
    output wire [63:0]                   random_increments_26,
    output wire [63:0]                   random_increments_27,
    output wire [63:0]                   random_increments_28,
    output wire [63:0]                   random_increments_29,
    output wire [63:0]                   random_increments_30,
    output wire [63:0]                   random_increments_31,
    output wire [63:0]                   random_increments_32,
    output wire [63:0]                   random_increments_33,
    output wire [63:0]                   random_increments_34,
    output wire [63:0]                   random_increments_35,
    output wire [63:0]                   random_increments_36,
    output wire [63:0]                   random_increments_37,
    output wire [63:0]                   random_increments_38,
    output wire [63:0]                   random_increments_39,
    output wire [63:0]                   random_increments_40,
    output wire [63:0]                   random_increments_41,
    output wire [63:0]                   random_increments_42,
    output wire [63:0]                   random_increments_43,
    output wire [63:0]                   random_increments_44,
    output wire [63:0]                   random_increments_45,
    output wire [63:0]                   random_increments_46,
    output wire [63:0]                   random_increments_47,
    output wire [63:0]                   random_increments_48,
    output wire [63:0]                   random_increments_49,
    output wire [63:0]                   random_increments_50,
    output wire [63:0]                   random_increments_51,
    output wire [63:0]                   random_increments_52,
    output wire [63:0]                   random_increments_53,
    output wire [63:0]                   random_increments_54,
    output wire [63:0]                   random_increments_55,
    output wire [63:0]                   random_increments_56,
    output wire [63:0]                   random_increments_57,
    output wire [63:0]                   random_increments_58,
    output wire [63:0]                   random_increments_59,
    output wire [63:0]                   random_increments_60,
    output wire [63:0]                   random_increments_61,
    output wire [63:0]                   random_increments_62,
    output wire [63:0]                   random_increments_63,
    output wire [63:0]                   random_increments_64,
    output wire [63:0]                   random_increments_65,
    output wire [63:0]                   random_increments_66,
    output wire [63:0]                   random_increments_67,
    output wire [63:0]                   random_increments_68,
    output wire [63:0]                   random_increments_69,
    output wire [63:0]                   random_increments_70,
    output wire [63:0]                   random_increments_71,
    output wire [63:0]                   random_increments_72,
    output wire [63:0]                   random_increments_73,
    output wire [63:0]                   random_increments_74,
    output wire [63:0]                   random_increments_75,
    output wire [63:0]                   random_increments_76,
    output wire [63:0]                   random_increments_77,
    output wire [63:0]                   random_increments_78,
    output wire [63:0]                   random_increments_79,
    output wire [63:0]                   random_increments_80,
    output wire [63:0]                   random_increments_81,
    output wire [63:0]                   random_increments_82,
    output wire [63:0]                   random_increments_83,
    output wire [63:0]                   random_increments_84,
    output wire [63:0]                   random_increments_85,
    output wire [63:0]                   random_increments_86,
    output wire [63:0]                   random_increments_87,
    output wire [63:0]                   random_increments_88,
    output wire [63:0]                   random_increments_89,
    output wire [63:0]                   random_increments_90,
    output wire [63:0]                   random_increments_91,
    output wire [63:0]                   random_increments_92,
    output wire [63:0]                   random_increments_93,
    output wire [63:0]                   random_increments_94,
    output wire [63:0]                   random_increments_95,
    output wire [63:0]                   random_increments_96,
    output wire [63:0]                   random_increments_97,
    output wire [63:0]                   random_increments_98,
    output wire [63:0]                   random_increments_99,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    output wire                          ap_continue,
    input  wire                          ap_idle
);
//------------------------Address Info-------------------
// Protocol Used: ap_ctrl_chain
//
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read/COR)
//         bit 4  - ap_continue (Read/Write/SC)
//         bit 7  - auto_restart (Read/Write)
//         bit 9  - interrupt (Read)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0 - enable ap_done interrupt (Read/Write)
//         bit 1 - enable ap_ready interrupt (Read/Write)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0 - ap_done (Read/TOW)
//         bit 1 - ap_ready (Read/TOW)
//         others - reserved
// 0x010 : Data signal of S_0
//         bit 31~0 - S_0[31:0] (Read/Write)
// 0x014 : Data signal of S_0
//         bit 31~0 - S_0[63:32] (Read/Write)
// 0x018 : reserved
// 0x01c : Data signal of S_1
//         bit 31~0 - S_1[31:0] (Read/Write)
// 0x020 : Data signal of S_1
//         bit 31~0 - S_1[63:32] (Read/Write)
// 0x024 : reserved
// 0x028 : Data signal of S_2
//         bit 31~0 - S_2[31:0] (Read/Write)
// 0x02c : Data signal of S_2
//         bit 31~0 - S_2[63:32] (Read/Write)
// 0x030 : reserved
// 0x034 : Data signal of S_3
//         bit 31~0 - S_3[31:0] (Read/Write)
// 0x038 : Data signal of S_3
//         bit 31~0 - S_3[63:32] (Read/Write)
// 0x03c : reserved
// 0x040 : Data signal of S_4
//         bit 31~0 - S_4[31:0] (Read/Write)
// 0x044 : Data signal of S_4
//         bit 31~0 - S_4[63:32] (Read/Write)
// 0x048 : reserved
// 0x04c : Data signal of S_5
//         bit 31~0 - S_5[31:0] (Read/Write)
// 0x050 : Data signal of S_5
//         bit 31~0 - S_5[63:32] (Read/Write)
// 0x054 : reserved
// 0x058 : Data signal of S_6
//         bit 31~0 - S_6[31:0] (Read/Write)
// 0x05c : Data signal of S_6
//         bit 31~0 - S_6[63:32] (Read/Write)
// 0x060 : reserved
// 0x064 : Data signal of S_7
//         bit 31~0 - S_7[31:0] (Read/Write)
// 0x068 : Data signal of S_7
//         bit 31~0 - S_7[63:32] (Read/Write)
// 0x06c : reserved
// 0x070 : Data signal of S_8
//         bit 31~0 - S_8[31:0] (Read/Write)
// 0x074 : Data signal of S_8
//         bit 31~0 - S_8[63:32] (Read/Write)
// 0x078 : reserved
// 0x07c : Data signal of S_9
//         bit 31~0 - S_9[31:0] (Read/Write)
// 0x080 : Data signal of S_9
//         bit 31~0 - S_9[63:32] (Read/Write)
// 0x084 : reserved
// 0x088 : Data signal of S_10
//         bit 31~0 - S_10[31:0] (Read/Write)
// 0x08c : Data signal of S_10
//         bit 31~0 - S_10[63:32] (Read/Write)
// 0x090 : reserved
// 0x094 : Data signal of S_11
//         bit 31~0 - S_11[31:0] (Read/Write)
// 0x098 : Data signal of S_11
//         bit 31~0 - S_11[63:32] (Read/Write)
// 0x09c : reserved
// 0x0a0 : Data signal of S_12
//         bit 31~0 - S_12[31:0] (Read/Write)
// 0x0a4 : Data signal of S_12
//         bit 31~0 - S_12[63:32] (Read/Write)
// 0x0a8 : reserved
// 0x0ac : Data signal of S_13
//         bit 31~0 - S_13[31:0] (Read/Write)
// 0x0b0 : Data signal of S_13
//         bit 31~0 - S_13[63:32] (Read/Write)
// 0x0b4 : reserved
// 0x0b8 : Data signal of S_14
//         bit 31~0 - S_14[31:0] (Read/Write)
// 0x0bc : Data signal of S_14
//         bit 31~0 - S_14[63:32] (Read/Write)
// 0x0c0 : reserved
// 0x0c4 : Data signal of S_15
//         bit 31~0 - S_15[31:0] (Read/Write)
// 0x0c8 : Data signal of S_15
//         bit 31~0 - S_15[63:32] (Read/Write)
// 0x0cc : reserved
// 0x0d0 : Data signal of S_16
//         bit 31~0 - S_16[31:0] (Read/Write)
// 0x0d4 : Data signal of S_16
//         bit 31~0 - S_16[63:32] (Read/Write)
// 0x0d8 : reserved
// 0x0dc : Data signal of S_17
//         bit 31~0 - S_17[31:0] (Read/Write)
// 0x0e0 : Data signal of S_17
//         bit 31~0 - S_17[63:32] (Read/Write)
// 0x0e4 : reserved
// 0x0e8 : Data signal of S_18
//         bit 31~0 - S_18[31:0] (Read/Write)
// 0x0ec : Data signal of S_18
//         bit 31~0 - S_18[63:32] (Read/Write)
// 0x0f0 : reserved
// 0x0f4 : Data signal of S_19
//         bit 31~0 - S_19[31:0] (Read/Write)
// 0x0f8 : Data signal of S_19
//         bit 31~0 - S_19[63:32] (Read/Write)
// 0x0fc : reserved
// 0x100 : Data signal of S_20
//         bit 31~0 - S_20[31:0] (Read/Write)
// 0x104 : Data signal of S_20
//         bit 31~0 - S_20[63:32] (Read/Write)
// 0x108 : reserved
// 0x10c : Data signal of S_21
//         bit 31~0 - S_21[31:0] (Read/Write)
// 0x110 : Data signal of S_21
//         bit 31~0 - S_21[63:32] (Read/Write)
// 0x114 : reserved
// 0x118 : Data signal of S_22
//         bit 31~0 - S_22[31:0] (Read/Write)
// 0x11c : Data signal of S_22
//         bit 31~0 - S_22[63:32] (Read/Write)
// 0x120 : reserved
// 0x124 : Data signal of S_23
//         bit 31~0 - S_23[31:0] (Read/Write)
// 0x128 : Data signal of S_23
//         bit 31~0 - S_23[63:32] (Read/Write)
// 0x12c : reserved
// 0x130 : Data signal of S_24
//         bit 31~0 - S_24[31:0] (Read/Write)
// 0x134 : Data signal of S_24
//         bit 31~0 - S_24[63:32] (Read/Write)
// 0x138 : reserved
// 0x13c : Data signal of S_25
//         bit 31~0 - S_25[31:0] (Read/Write)
// 0x140 : Data signal of S_25
//         bit 31~0 - S_25[63:32] (Read/Write)
// 0x144 : reserved
// 0x148 : Data signal of S_26
//         bit 31~0 - S_26[31:0] (Read/Write)
// 0x14c : Data signal of S_26
//         bit 31~0 - S_26[63:32] (Read/Write)
// 0x150 : reserved
// 0x154 : Data signal of S_27
//         bit 31~0 - S_27[31:0] (Read/Write)
// 0x158 : Data signal of S_27
//         bit 31~0 - S_27[63:32] (Read/Write)
// 0x15c : reserved
// 0x160 : Data signal of S_28
//         bit 31~0 - S_28[31:0] (Read/Write)
// 0x164 : Data signal of S_28
//         bit 31~0 - S_28[63:32] (Read/Write)
// 0x168 : reserved
// 0x16c : Data signal of S_29
//         bit 31~0 - S_29[31:0] (Read/Write)
// 0x170 : Data signal of S_29
//         bit 31~0 - S_29[63:32] (Read/Write)
// 0x174 : reserved
// 0x178 : Data signal of S_30
//         bit 31~0 - S_30[31:0] (Read/Write)
// 0x17c : Data signal of S_30
//         bit 31~0 - S_30[63:32] (Read/Write)
// 0x180 : reserved
// 0x184 : Data signal of S_31
//         bit 31~0 - S_31[31:0] (Read/Write)
// 0x188 : Data signal of S_31
//         bit 31~0 - S_31[63:32] (Read/Write)
// 0x18c : reserved
// 0x190 : Data signal of S_32
//         bit 31~0 - S_32[31:0] (Read/Write)
// 0x194 : Data signal of S_32
//         bit 31~0 - S_32[63:32] (Read/Write)
// 0x198 : reserved
// 0x19c : Data signal of S_33
//         bit 31~0 - S_33[31:0] (Read/Write)
// 0x1a0 : Data signal of S_33
//         bit 31~0 - S_33[63:32] (Read/Write)
// 0x1a4 : reserved
// 0x1a8 : Data signal of S_34
//         bit 31~0 - S_34[31:0] (Read/Write)
// 0x1ac : Data signal of S_34
//         bit 31~0 - S_34[63:32] (Read/Write)
// 0x1b0 : reserved
// 0x1b4 : Data signal of S_35
//         bit 31~0 - S_35[31:0] (Read/Write)
// 0x1b8 : Data signal of S_35
//         bit 31~0 - S_35[63:32] (Read/Write)
// 0x1bc : reserved
// 0x1c0 : Data signal of S_36
//         bit 31~0 - S_36[31:0] (Read/Write)
// 0x1c4 : Data signal of S_36
//         bit 31~0 - S_36[63:32] (Read/Write)
// 0x1c8 : reserved
// 0x1cc : Data signal of S_37
//         bit 31~0 - S_37[31:0] (Read/Write)
// 0x1d0 : Data signal of S_37
//         bit 31~0 - S_37[63:32] (Read/Write)
// 0x1d4 : reserved
// 0x1d8 : Data signal of S_38
//         bit 31~0 - S_38[31:0] (Read/Write)
// 0x1dc : Data signal of S_38
//         bit 31~0 - S_38[63:32] (Read/Write)
// 0x1e0 : reserved
// 0x1e4 : Data signal of S_39
//         bit 31~0 - S_39[31:0] (Read/Write)
// 0x1e8 : Data signal of S_39
//         bit 31~0 - S_39[63:32] (Read/Write)
// 0x1ec : reserved
// 0x1f0 : Data signal of S_40
//         bit 31~0 - S_40[31:0] (Read/Write)
// 0x1f4 : Data signal of S_40
//         bit 31~0 - S_40[63:32] (Read/Write)
// 0x1f8 : reserved
// 0x1fc : Data signal of S_41
//         bit 31~0 - S_41[31:0] (Read/Write)
// 0x200 : Data signal of S_41
//         bit 31~0 - S_41[63:32] (Read/Write)
// 0x204 : reserved
// 0x208 : Data signal of S_42
//         bit 31~0 - S_42[31:0] (Read/Write)
// 0x20c : Data signal of S_42
//         bit 31~0 - S_42[63:32] (Read/Write)
// 0x210 : reserved
// 0x214 : Data signal of S_43
//         bit 31~0 - S_43[31:0] (Read/Write)
// 0x218 : Data signal of S_43
//         bit 31~0 - S_43[63:32] (Read/Write)
// 0x21c : reserved
// 0x220 : Data signal of S_44
//         bit 31~0 - S_44[31:0] (Read/Write)
// 0x224 : Data signal of S_44
//         bit 31~0 - S_44[63:32] (Read/Write)
// 0x228 : reserved
// 0x22c : Data signal of S_45
//         bit 31~0 - S_45[31:0] (Read/Write)
// 0x230 : Data signal of S_45
//         bit 31~0 - S_45[63:32] (Read/Write)
// 0x234 : reserved
// 0x238 : Data signal of S_46
//         bit 31~0 - S_46[31:0] (Read/Write)
// 0x23c : Data signal of S_46
//         bit 31~0 - S_46[63:32] (Read/Write)
// 0x240 : reserved
// 0x244 : Data signal of S_47
//         bit 31~0 - S_47[31:0] (Read/Write)
// 0x248 : Data signal of S_47
//         bit 31~0 - S_47[63:32] (Read/Write)
// 0x24c : reserved
// 0x250 : Data signal of S_48
//         bit 31~0 - S_48[31:0] (Read/Write)
// 0x254 : Data signal of S_48
//         bit 31~0 - S_48[63:32] (Read/Write)
// 0x258 : reserved
// 0x25c : Data signal of S_49
//         bit 31~0 - S_49[31:0] (Read/Write)
// 0x260 : Data signal of S_49
//         bit 31~0 - S_49[63:32] (Read/Write)
// 0x264 : reserved
// 0x268 : Data signal of S_50
//         bit 31~0 - S_50[31:0] (Read/Write)
// 0x26c : Data signal of S_50
//         bit 31~0 - S_50[63:32] (Read/Write)
// 0x270 : reserved
// 0x274 : Data signal of S_51
//         bit 31~0 - S_51[31:0] (Read/Write)
// 0x278 : Data signal of S_51
//         bit 31~0 - S_51[63:32] (Read/Write)
// 0x27c : reserved
// 0x280 : Data signal of S_52
//         bit 31~0 - S_52[31:0] (Read/Write)
// 0x284 : Data signal of S_52
//         bit 31~0 - S_52[63:32] (Read/Write)
// 0x288 : reserved
// 0x28c : Data signal of S_53
//         bit 31~0 - S_53[31:0] (Read/Write)
// 0x290 : Data signal of S_53
//         bit 31~0 - S_53[63:32] (Read/Write)
// 0x294 : reserved
// 0x298 : Data signal of S_54
//         bit 31~0 - S_54[31:0] (Read/Write)
// 0x29c : Data signal of S_54
//         bit 31~0 - S_54[63:32] (Read/Write)
// 0x2a0 : reserved
// 0x2a4 : Data signal of S_55
//         bit 31~0 - S_55[31:0] (Read/Write)
// 0x2a8 : Data signal of S_55
//         bit 31~0 - S_55[63:32] (Read/Write)
// 0x2ac : reserved
// 0x2b0 : Data signal of S_56
//         bit 31~0 - S_56[31:0] (Read/Write)
// 0x2b4 : Data signal of S_56
//         bit 31~0 - S_56[63:32] (Read/Write)
// 0x2b8 : reserved
// 0x2bc : Data signal of S_57
//         bit 31~0 - S_57[31:0] (Read/Write)
// 0x2c0 : Data signal of S_57
//         bit 31~0 - S_57[63:32] (Read/Write)
// 0x2c4 : reserved
// 0x2c8 : Data signal of S_58
//         bit 31~0 - S_58[31:0] (Read/Write)
// 0x2cc : Data signal of S_58
//         bit 31~0 - S_58[63:32] (Read/Write)
// 0x2d0 : reserved
// 0x2d4 : Data signal of S_59
//         bit 31~0 - S_59[31:0] (Read/Write)
// 0x2d8 : Data signal of S_59
//         bit 31~0 - S_59[63:32] (Read/Write)
// 0x2dc : reserved
// 0x2e0 : Data signal of S_60
//         bit 31~0 - S_60[31:0] (Read/Write)
// 0x2e4 : Data signal of S_60
//         bit 31~0 - S_60[63:32] (Read/Write)
// 0x2e8 : reserved
// 0x2ec : Data signal of S_61
//         bit 31~0 - S_61[31:0] (Read/Write)
// 0x2f0 : Data signal of S_61
//         bit 31~0 - S_61[63:32] (Read/Write)
// 0x2f4 : reserved
// 0x2f8 : Data signal of S_62
//         bit 31~0 - S_62[31:0] (Read/Write)
// 0x2fc : Data signal of S_62
//         bit 31~0 - S_62[63:32] (Read/Write)
// 0x300 : reserved
// 0x304 : Data signal of S_63
//         bit 31~0 - S_63[31:0] (Read/Write)
// 0x308 : Data signal of S_63
//         bit 31~0 - S_63[63:32] (Read/Write)
// 0x30c : reserved
// 0x310 : Data signal of S_64
//         bit 31~0 - S_64[31:0] (Read/Write)
// 0x314 : Data signal of S_64
//         bit 31~0 - S_64[63:32] (Read/Write)
// 0x318 : reserved
// 0x31c : Data signal of S_65
//         bit 31~0 - S_65[31:0] (Read/Write)
// 0x320 : Data signal of S_65
//         bit 31~0 - S_65[63:32] (Read/Write)
// 0x324 : reserved
// 0x328 : Data signal of S_66
//         bit 31~0 - S_66[31:0] (Read/Write)
// 0x32c : Data signal of S_66
//         bit 31~0 - S_66[63:32] (Read/Write)
// 0x330 : reserved
// 0x334 : Data signal of S_67
//         bit 31~0 - S_67[31:0] (Read/Write)
// 0x338 : Data signal of S_67
//         bit 31~0 - S_67[63:32] (Read/Write)
// 0x33c : reserved
// 0x340 : Data signal of S_68
//         bit 31~0 - S_68[31:0] (Read/Write)
// 0x344 : Data signal of S_68
//         bit 31~0 - S_68[63:32] (Read/Write)
// 0x348 : reserved
// 0x34c : Data signal of S_69
//         bit 31~0 - S_69[31:0] (Read/Write)
// 0x350 : Data signal of S_69
//         bit 31~0 - S_69[63:32] (Read/Write)
// 0x354 : reserved
// 0x358 : Data signal of S_70
//         bit 31~0 - S_70[31:0] (Read/Write)
// 0x35c : Data signal of S_70
//         bit 31~0 - S_70[63:32] (Read/Write)
// 0x360 : reserved
// 0x364 : Data signal of S_71
//         bit 31~0 - S_71[31:0] (Read/Write)
// 0x368 : Data signal of S_71
//         bit 31~0 - S_71[63:32] (Read/Write)
// 0x36c : reserved
// 0x370 : Data signal of S_72
//         bit 31~0 - S_72[31:0] (Read/Write)
// 0x374 : Data signal of S_72
//         bit 31~0 - S_72[63:32] (Read/Write)
// 0x378 : reserved
// 0x37c : Data signal of S_73
//         bit 31~0 - S_73[31:0] (Read/Write)
// 0x380 : Data signal of S_73
//         bit 31~0 - S_73[63:32] (Read/Write)
// 0x384 : reserved
// 0x388 : Data signal of S_74
//         bit 31~0 - S_74[31:0] (Read/Write)
// 0x38c : Data signal of S_74
//         bit 31~0 - S_74[63:32] (Read/Write)
// 0x390 : reserved
// 0x394 : Data signal of S_75
//         bit 31~0 - S_75[31:0] (Read/Write)
// 0x398 : Data signal of S_75
//         bit 31~0 - S_75[63:32] (Read/Write)
// 0x39c : reserved
// 0x3a0 : Data signal of S_76
//         bit 31~0 - S_76[31:0] (Read/Write)
// 0x3a4 : Data signal of S_76
//         bit 31~0 - S_76[63:32] (Read/Write)
// 0x3a8 : reserved
// 0x3ac : Data signal of S_77
//         bit 31~0 - S_77[31:0] (Read/Write)
// 0x3b0 : Data signal of S_77
//         bit 31~0 - S_77[63:32] (Read/Write)
// 0x3b4 : reserved
// 0x3b8 : Data signal of S_78
//         bit 31~0 - S_78[31:0] (Read/Write)
// 0x3bc : Data signal of S_78
//         bit 31~0 - S_78[63:32] (Read/Write)
// 0x3c0 : reserved
// 0x3c4 : Data signal of S_79
//         bit 31~0 - S_79[31:0] (Read/Write)
// 0x3c8 : Data signal of S_79
//         bit 31~0 - S_79[63:32] (Read/Write)
// 0x3cc : reserved
// 0x3d0 : Data signal of S_80
//         bit 31~0 - S_80[31:0] (Read/Write)
// 0x3d4 : Data signal of S_80
//         bit 31~0 - S_80[63:32] (Read/Write)
// 0x3d8 : reserved
// 0x3dc : Data signal of S_81
//         bit 31~0 - S_81[31:0] (Read/Write)
// 0x3e0 : Data signal of S_81
//         bit 31~0 - S_81[63:32] (Read/Write)
// 0x3e4 : reserved
// 0x3e8 : Data signal of S_82
//         bit 31~0 - S_82[31:0] (Read/Write)
// 0x3ec : Data signal of S_82
//         bit 31~0 - S_82[63:32] (Read/Write)
// 0x3f0 : reserved
// 0x3f4 : Data signal of S_83
//         bit 31~0 - S_83[31:0] (Read/Write)
// 0x3f8 : Data signal of S_83
//         bit 31~0 - S_83[63:32] (Read/Write)
// 0x3fc : reserved
// 0x400 : Data signal of S_84
//         bit 31~0 - S_84[31:0] (Read/Write)
// 0x404 : Data signal of S_84
//         bit 31~0 - S_84[63:32] (Read/Write)
// 0x408 : reserved
// 0x40c : Data signal of S_85
//         bit 31~0 - S_85[31:0] (Read/Write)
// 0x410 : Data signal of S_85
//         bit 31~0 - S_85[63:32] (Read/Write)
// 0x414 : reserved
// 0x418 : Data signal of S_86
//         bit 31~0 - S_86[31:0] (Read/Write)
// 0x41c : Data signal of S_86
//         bit 31~0 - S_86[63:32] (Read/Write)
// 0x420 : reserved
// 0x424 : Data signal of S_87
//         bit 31~0 - S_87[31:0] (Read/Write)
// 0x428 : Data signal of S_87
//         bit 31~0 - S_87[63:32] (Read/Write)
// 0x42c : reserved
// 0x430 : Data signal of S_88
//         bit 31~0 - S_88[31:0] (Read/Write)
// 0x434 : Data signal of S_88
//         bit 31~0 - S_88[63:32] (Read/Write)
// 0x438 : reserved
// 0x43c : Data signal of S_89
//         bit 31~0 - S_89[31:0] (Read/Write)
// 0x440 : Data signal of S_89
//         bit 31~0 - S_89[63:32] (Read/Write)
// 0x444 : reserved
// 0x448 : Data signal of S_90
//         bit 31~0 - S_90[31:0] (Read/Write)
// 0x44c : Data signal of S_90
//         bit 31~0 - S_90[63:32] (Read/Write)
// 0x450 : reserved
// 0x454 : Data signal of S_91
//         bit 31~0 - S_91[31:0] (Read/Write)
// 0x458 : Data signal of S_91
//         bit 31~0 - S_91[63:32] (Read/Write)
// 0x45c : reserved
// 0x460 : Data signal of S_92
//         bit 31~0 - S_92[31:0] (Read/Write)
// 0x464 : Data signal of S_92
//         bit 31~0 - S_92[63:32] (Read/Write)
// 0x468 : reserved
// 0x46c : Data signal of S_93
//         bit 31~0 - S_93[31:0] (Read/Write)
// 0x470 : Data signal of S_93
//         bit 31~0 - S_93[63:32] (Read/Write)
// 0x474 : reserved
// 0x478 : Data signal of S_94
//         bit 31~0 - S_94[31:0] (Read/Write)
// 0x47c : Data signal of S_94
//         bit 31~0 - S_94[63:32] (Read/Write)
// 0x480 : reserved
// 0x484 : Data signal of S_95
//         bit 31~0 - S_95[31:0] (Read/Write)
// 0x488 : Data signal of S_95
//         bit 31~0 - S_95[63:32] (Read/Write)
// 0x48c : reserved
// 0x490 : Data signal of S_96
//         bit 31~0 - S_96[31:0] (Read/Write)
// 0x494 : Data signal of S_96
//         bit 31~0 - S_96[63:32] (Read/Write)
// 0x498 : reserved
// 0x49c : Data signal of S_97
//         bit 31~0 - S_97[31:0] (Read/Write)
// 0x4a0 : Data signal of S_97
//         bit 31~0 - S_97[63:32] (Read/Write)
// 0x4a4 : reserved
// 0x4a8 : Data signal of S_98
//         bit 31~0 - S_98[31:0] (Read/Write)
// 0x4ac : Data signal of S_98
//         bit 31~0 - S_98[63:32] (Read/Write)
// 0x4b0 : reserved
// 0x4b4 : Data signal of S_99
//         bit 31~0 - S_99[31:0] (Read/Write)
// 0x4b8 : Data signal of S_99
//         bit 31~0 - S_99[63:32] (Read/Write)
// 0x4bc : reserved
// 0x4c0 : Data signal of S0
//         bit 31~0 - S0[31:0] (Read/Write)
// 0x4c4 : Data signal of S0
//         bit 31~0 - S0[63:32] (Read/Write)
// 0x4c8 : reserved
// 0x4cc : Data signal of r
//         bit 31~0 - r[31:0] (Read/Write)
// 0x4d0 : Data signal of r
//         bit 31~0 - r[63:32] (Read/Write)
// 0x4d4 : reserved
// 0x4d8 : Data signal of sigma
//         bit 31~0 - sigma[31:0] (Read/Write)
// 0x4dc : Data signal of sigma
//         bit 31~0 - sigma[63:32] (Read/Write)
// 0x4e0 : reserved
// 0x4e4 : Data signal of T
//         bit 31~0 - T[31:0] (Read/Write)
// 0x4e8 : Data signal of T
//         bit 31~0 - T[63:32] (Read/Write)
// 0x4ec : reserved
// 0x4f0 : Data signal of random_increments_0
//         bit 31~0 - random_increments_0[31:0] (Read/Write)
// 0x4f4 : Data signal of random_increments_0
//         bit 31~0 - random_increments_0[63:32] (Read/Write)
// 0x4f8 : reserved
// 0x4fc : Data signal of random_increments_1
//         bit 31~0 - random_increments_1[31:0] (Read/Write)
// 0x500 : Data signal of random_increments_1
//         bit 31~0 - random_increments_1[63:32] (Read/Write)
// 0x504 : reserved
// 0x508 : Data signal of random_increments_2
//         bit 31~0 - random_increments_2[31:0] (Read/Write)
// 0x50c : Data signal of random_increments_2
//         bit 31~0 - random_increments_2[63:32] (Read/Write)
// 0x510 : reserved
// 0x514 : Data signal of random_increments_3
//         bit 31~0 - random_increments_3[31:0] (Read/Write)
// 0x518 : Data signal of random_increments_3
//         bit 31~0 - random_increments_3[63:32] (Read/Write)
// 0x51c : reserved
// 0x520 : Data signal of random_increments_4
//         bit 31~0 - random_increments_4[31:0] (Read/Write)
// 0x524 : Data signal of random_increments_4
//         bit 31~0 - random_increments_4[63:32] (Read/Write)
// 0x528 : reserved
// 0x52c : Data signal of random_increments_5
//         bit 31~0 - random_increments_5[31:0] (Read/Write)
// 0x530 : Data signal of random_increments_5
//         bit 31~0 - random_increments_5[63:32] (Read/Write)
// 0x534 : reserved
// 0x538 : Data signal of random_increments_6
//         bit 31~0 - random_increments_6[31:0] (Read/Write)
// 0x53c : Data signal of random_increments_6
//         bit 31~0 - random_increments_6[63:32] (Read/Write)
// 0x540 : reserved
// 0x544 : Data signal of random_increments_7
//         bit 31~0 - random_increments_7[31:0] (Read/Write)
// 0x548 : Data signal of random_increments_7
//         bit 31~0 - random_increments_7[63:32] (Read/Write)
// 0x54c : reserved
// 0x550 : Data signal of random_increments_8
//         bit 31~0 - random_increments_8[31:0] (Read/Write)
// 0x554 : Data signal of random_increments_8
//         bit 31~0 - random_increments_8[63:32] (Read/Write)
// 0x558 : reserved
// 0x55c : Data signal of random_increments_9
//         bit 31~0 - random_increments_9[31:0] (Read/Write)
// 0x560 : Data signal of random_increments_9
//         bit 31~0 - random_increments_9[63:32] (Read/Write)
// 0x564 : reserved
// 0x568 : Data signal of random_increments_10
//         bit 31~0 - random_increments_10[31:0] (Read/Write)
// 0x56c : Data signal of random_increments_10
//         bit 31~0 - random_increments_10[63:32] (Read/Write)
// 0x570 : reserved
// 0x574 : Data signal of random_increments_11
//         bit 31~0 - random_increments_11[31:0] (Read/Write)
// 0x578 : Data signal of random_increments_11
//         bit 31~0 - random_increments_11[63:32] (Read/Write)
// 0x57c : reserved
// 0x580 : Data signal of random_increments_12
//         bit 31~0 - random_increments_12[31:0] (Read/Write)
// 0x584 : Data signal of random_increments_12
//         bit 31~0 - random_increments_12[63:32] (Read/Write)
// 0x588 : reserved
// 0x58c : Data signal of random_increments_13
//         bit 31~0 - random_increments_13[31:0] (Read/Write)
// 0x590 : Data signal of random_increments_13
//         bit 31~0 - random_increments_13[63:32] (Read/Write)
// 0x594 : reserved
// 0x598 : Data signal of random_increments_14
//         bit 31~0 - random_increments_14[31:0] (Read/Write)
// 0x59c : Data signal of random_increments_14
//         bit 31~0 - random_increments_14[63:32] (Read/Write)
// 0x5a0 : reserved
// 0x5a4 : Data signal of random_increments_15
//         bit 31~0 - random_increments_15[31:0] (Read/Write)
// 0x5a8 : Data signal of random_increments_15
//         bit 31~0 - random_increments_15[63:32] (Read/Write)
// 0x5ac : reserved
// 0x5b0 : Data signal of random_increments_16
//         bit 31~0 - random_increments_16[31:0] (Read/Write)
// 0x5b4 : Data signal of random_increments_16
//         bit 31~0 - random_increments_16[63:32] (Read/Write)
// 0x5b8 : reserved
// 0x5bc : Data signal of random_increments_17
//         bit 31~0 - random_increments_17[31:0] (Read/Write)
// 0x5c0 : Data signal of random_increments_17
//         bit 31~0 - random_increments_17[63:32] (Read/Write)
// 0x5c4 : reserved
// 0x5c8 : Data signal of random_increments_18
//         bit 31~0 - random_increments_18[31:0] (Read/Write)
// 0x5cc : Data signal of random_increments_18
//         bit 31~0 - random_increments_18[63:32] (Read/Write)
// 0x5d0 : reserved
// 0x5d4 : Data signal of random_increments_19
//         bit 31~0 - random_increments_19[31:0] (Read/Write)
// 0x5d8 : Data signal of random_increments_19
//         bit 31~0 - random_increments_19[63:32] (Read/Write)
// 0x5dc : reserved
// 0x5e0 : Data signal of random_increments_20
//         bit 31~0 - random_increments_20[31:0] (Read/Write)
// 0x5e4 : Data signal of random_increments_20
//         bit 31~0 - random_increments_20[63:32] (Read/Write)
// 0x5e8 : reserved
// 0x5ec : Data signal of random_increments_21
//         bit 31~0 - random_increments_21[31:0] (Read/Write)
// 0x5f0 : Data signal of random_increments_21
//         bit 31~0 - random_increments_21[63:32] (Read/Write)
// 0x5f4 : reserved
// 0x5f8 : Data signal of random_increments_22
//         bit 31~0 - random_increments_22[31:0] (Read/Write)
// 0x5fc : Data signal of random_increments_22
//         bit 31~0 - random_increments_22[63:32] (Read/Write)
// 0x600 : reserved
// 0x604 : Data signal of random_increments_23
//         bit 31~0 - random_increments_23[31:0] (Read/Write)
// 0x608 : Data signal of random_increments_23
//         bit 31~0 - random_increments_23[63:32] (Read/Write)
// 0x60c : reserved
// 0x610 : Data signal of random_increments_24
//         bit 31~0 - random_increments_24[31:0] (Read/Write)
// 0x614 : Data signal of random_increments_24
//         bit 31~0 - random_increments_24[63:32] (Read/Write)
// 0x618 : reserved
// 0x61c : Data signal of random_increments_25
//         bit 31~0 - random_increments_25[31:0] (Read/Write)
// 0x620 : Data signal of random_increments_25
//         bit 31~0 - random_increments_25[63:32] (Read/Write)
// 0x624 : reserved
// 0x628 : Data signal of random_increments_26
//         bit 31~0 - random_increments_26[31:0] (Read/Write)
// 0x62c : Data signal of random_increments_26
//         bit 31~0 - random_increments_26[63:32] (Read/Write)
// 0x630 : reserved
// 0x634 : Data signal of random_increments_27
//         bit 31~0 - random_increments_27[31:0] (Read/Write)
// 0x638 : Data signal of random_increments_27
//         bit 31~0 - random_increments_27[63:32] (Read/Write)
// 0x63c : reserved
// 0x640 : Data signal of random_increments_28
//         bit 31~0 - random_increments_28[31:0] (Read/Write)
// 0x644 : Data signal of random_increments_28
//         bit 31~0 - random_increments_28[63:32] (Read/Write)
// 0x648 : reserved
// 0x64c : Data signal of random_increments_29
//         bit 31~0 - random_increments_29[31:0] (Read/Write)
// 0x650 : Data signal of random_increments_29
//         bit 31~0 - random_increments_29[63:32] (Read/Write)
// 0x654 : reserved
// 0x658 : Data signal of random_increments_30
//         bit 31~0 - random_increments_30[31:0] (Read/Write)
// 0x65c : Data signal of random_increments_30
//         bit 31~0 - random_increments_30[63:32] (Read/Write)
// 0x660 : reserved
// 0x664 : Data signal of random_increments_31
//         bit 31~0 - random_increments_31[31:0] (Read/Write)
// 0x668 : Data signal of random_increments_31
//         bit 31~0 - random_increments_31[63:32] (Read/Write)
// 0x66c : reserved
// 0x670 : Data signal of random_increments_32
//         bit 31~0 - random_increments_32[31:0] (Read/Write)
// 0x674 : Data signal of random_increments_32
//         bit 31~0 - random_increments_32[63:32] (Read/Write)
// 0x678 : reserved
// 0x67c : Data signal of random_increments_33
//         bit 31~0 - random_increments_33[31:0] (Read/Write)
// 0x680 : Data signal of random_increments_33
//         bit 31~0 - random_increments_33[63:32] (Read/Write)
// 0x684 : reserved
// 0x688 : Data signal of random_increments_34
//         bit 31~0 - random_increments_34[31:0] (Read/Write)
// 0x68c : Data signal of random_increments_34
//         bit 31~0 - random_increments_34[63:32] (Read/Write)
// 0x690 : reserved
// 0x694 : Data signal of random_increments_35
//         bit 31~0 - random_increments_35[31:0] (Read/Write)
// 0x698 : Data signal of random_increments_35
//         bit 31~0 - random_increments_35[63:32] (Read/Write)
// 0x69c : reserved
// 0x6a0 : Data signal of random_increments_36
//         bit 31~0 - random_increments_36[31:0] (Read/Write)
// 0x6a4 : Data signal of random_increments_36
//         bit 31~0 - random_increments_36[63:32] (Read/Write)
// 0x6a8 : reserved
// 0x6ac : Data signal of random_increments_37
//         bit 31~0 - random_increments_37[31:0] (Read/Write)
// 0x6b0 : Data signal of random_increments_37
//         bit 31~0 - random_increments_37[63:32] (Read/Write)
// 0x6b4 : reserved
// 0x6b8 : Data signal of random_increments_38
//         bit 31~0 - random_increments_38[31:0] (Read/Write)
// 0x6bc : Data signal of random_increments_38
//         bit 31~0 - random_increments_38[63:32] (Read/Write)
// 0x6c0 : reserved
// 0x6c4 : Data signal of random_increments_39
//         bit 31~0 - random_increments_39[31:0] (Read/Write)
// 0x6c8 : Data signal of random_increments_39
//         bit 31~0 - random_increments_39[63:32] (Read/Write)
// 0x6cc : reserved
// 0x6d0 : Data signal of random_increments_40
//         bit 31~0 - random_increments_40[31:0] (Read/Write)
// 0x6d4 : Data signal of random_increments_40
//         bit 31~0 - random_increments_40[63:32] (Read/Write)
// 0x6d8 : reserved
// 0x6dc : Data signal of random_increments_41
//         bit 31~0 - random_increments_41[31:0] (Read/Write)
// 0x6e0 : Data signal of random_increments_41
//         bit 31~0 - random_increments_41[63:32] (Read/Write)
// 0x6e4 : reserved
// 0x6e8 : Data signal of random_increments_42
//         bit 31~0 - random_increments_42[31:0] (Read/Write)
// 0x6ec : Data signal of random_increments_42
//         bit 31~0 - random_increments_42[63:32] (Read/Write)
// 0x6f0 : reserved
// 0x6f4 : Data signal of random_increments_43
//         bit 31~0 - random_increments_43[31:0] (Read/Write)
// 0x6f8 : Data signal of random_increments_43
//         bit 31~0 - random_increments_43[63:32] (Read/Write)
// 0x6fc : reserved
// 0x700 : Data signal of random_increments_44
//         bit 31~0 - random_increments_44[31:0] (Read/Write)
// 0x704 : Data signal of random_increments_44
//         bit 31~0 - random_increments_44[63:32] (Read/Write)
// 0x708 : reserved
// 0x70c : Data signal of random_increments_45
//         bit 31~0 - random_increments_45[31:0] (Read/Write)
// 0x710 : Data signal of random_increments_45
//         bit 31~0 - random_increments_45[63:32] (Read/Write)
// 0x714 : reserved
// 0x718 : Data signal of random_increments_46
//         bit 31~0 - random_increments_46[31:0] (Read/Write)
// 0x71c : Data signal of random_increments_46
//         bit 31~0 - random_increments_46[63:32] (Read/Write)
// 0x720 : reserved
// 0x724 : Data signal of random_increments_47
//         bit 31~0 - random_increments_47[31:0] (Read/Write)
// 0x728 : Data signal of random_increments_47
//         bit 31~0 - random_increments_47[63:32] (Read/Write)
// 0x72c : reserved
// 0x730 : Data signal of random_increments_48
//         bit 31~0 - random_increments_48[31:0] (Read/Write)
// 0x734 : Data signal of random_increments_48
//         bit 31~0 - random_increments_48[63:32] (Read/Write)
// 0x738 : reserved
// 0x73c : Data signal of random_increments_49
//         bit 31~0 - random_increments_49[31:0] (Read/Write)
// 0x740 : Data signal of random_increments_49
//         bit 31~0 - random_increments_49[63:32] (Read/Write)
// 0x744 : reserved
// 0x748 : Data signal of random_increments_50
//         bit 31~0 - random_increments_50[31:0] (Read/Write)
// 0x74c : Data signal of random_increments_50
//         bit 31~0 - random_increments_50[63:32] (Read/Write)
// 0x750 : reserved
// 0x754 : Data signal of random_increments_51
//         bit 31~0 - random_increments_51[31:0] (Read/Write)
// 0x758 : Data signal of random_increments_51
//         bit 31~0 - random_increments_51[63:32] (Read/Write)
// 0x75c : reserved
// 0x760 : Data signal of random_increments_52
//         bit 31~0 - random_increments_52[31:0] (Read/Write)
// 0x764 : Data signal of random_increments_52
//         bit 31~0 - random_increments_52[63:32] (Read/Write)
// 0x768 : reserved
// 0x76c : Data signal of random_increments_53
//         bit 31~0 - random_increments_53[31:0] (Read/Write)
// 0x770 : Data signal of random_increments_53
//         bit 31~0 - random_increments_53[63:32] (Read/Write)
// 0x774 : reserved
// 0x778 : Data signal of random_increments_54
//         bit 31~0 - random_increments_54[31:0] (Read/Write)
// 0x77c : Data signal of random_increments_54
//         bit 31~0 - random_increments_54[63:32] (Read/Write)
// 0x780 : reserved
// 0x784 : Data signal of random_increments_55
//         bit 31~0 - random_increments_55[31:0] (Read/Write)
// 0x788 : Data signal of random_increments_55
//         bit 31~0 - random_increments_55[63:32] (Read/Write)
// 0x78c : reserved
// 0x790 : Data signal of random_increments_56
//         bit 31~0 - random_increments_56[31:0] (Read/Write)
// 0x794 : Data signal of random_increments_56
//         bit 31~0 - random_increments_56[63:32] (Read/Write)
// 0x798 : reserved
// 0x79c : Data signal of random_increments_57
//         bit 31~0 - random_increments_57[31:0] (Read/Write)
// 0x7a0 : Data signal of random_increments_57
//         bit 31~0 - random_increments_57[63:32] (Read/Write)
// 0x7a4 : reserved
// 0x7a8 : Data signal of random_increments_58
//         bit 31~0 - random_increments_58[31:0] (Read/Write)
// 0x7ac : Data signal of random_increments_58
//         bit 31~0 - random_increments_58[63:32] (Read/Write)
// 0x7b0 : reserved
// 0x7b4 : Data signal of random_increments_59
//         bit 31~0 - random_increments_59[31:0] (Read/Write)
// 0x7b8 : Data signal of random_increments_59
//         bit 31~0 - random_increments_59[63:32] (Read/Write)
// 0x7bc : reserved
// 0x7c0 : Data signal of random_increments_60
//         bit 31~0 - random_increments_60[31:0] (Read/Write)
// 0x7c4 : Data signal of random_increments_60
//         bit 31~0 - random_increments_60[63:32] (Read/Write)
// 0x7c8 : reserved
// 0x7cc : Data signal of random_increments_61
//         bit 31~0 - random_increments_61[31:0] (Read/Write)
// 0x7d0 : Data signal of random_increments_61
//         bit 31~0 - random_increments_61[63:32] (Read/Write)
// 0x7d4 : reserved
// 0x7d8 : Data signal of random_increments_62
//         bit 31~0 - random_increments_62[31:0] (Read/Write)
// 0x7dc : Data signal of random_increments_62
//         bit 31~0 - random_increments_62[63:32] (Read/Write)
// 0x7e0 : reserved
// 0x7e4 : Data signal of random_increments_63
//         bit 31~0 - random_increments_63[31:0] (Read/Write)
// 0x7e8 : Data signal of random_increments_63
//         bit 31~0 - random_increments_63[63:32] (Read/Write)
// 0x7ec : reserved
// 0x7f0 : Data signal of random_increments_64
//         bit 31~0 - random_increments_64[31:0] (Read/Write)
// 0x7f4 : Data signal of random_increments_64
//         bit 31~0 - random_increments_64[63:32] (Read/Write)
// 0x7f8 : reserved
// 0x7fc : Data signal of random_increments_65
//         bit 31~0 - random_increments_65[31:0] (Read/Write)
// 0x800 : Data signal of random_increments_65
//         bit 31~0 - random_increments_65[63:32] (Read/Write)
// 0x804 : reserved
// 0x808 : Data signal of random_increments_66
//         bit 31~0 - random_increments_66[31:0] (Read/Write)
// 0x80c : Data signal of random_increments_66
//         bit 31~0 - random_increments_66[63:32] (Read/Write)
// 0x810 : reserved
// 0x814 : Data signal of random_increments_67
//         bit 31~0 - random_increments_67[31:0] (Read/Write)
// 0x818 : Data signal of random_increments_67
//         bit 31~0 - random_increments_67[63:32] (Read/Write)
// 0x81c : reserved
// 0x820 : Data signal of random_increments_68
//         bit 31~0 - random_increments_68[31:0] (Read/Write)
// 0x824 : Data signal of random_increments_68
//         bit 31~0 - random_increments_68[63:32] (Read/Write)
// 0x828 : reserved
// 0x82c : Data signal of random_increments_69
//         bit 31~0 - random_increments_69[31:0] (Read/Write)
// 0x830 : Data signal of random_increments_69
//         bit 31~0 - random_increments_69[63:32] (Read/Write)
// 0x834 : reserved
// 0x838 : Data signal of random_increments_70
//         bit 31~0 - random_increments_70[31:0] (Read/Write)
// 0x83c : Data signal of random_increments_70
//         bit 31~0 - random_increments_70[63:32] (Read/Write)
// 0x840 : reserved
// 0x844 : Data signal of random_increments_71
//         bit 31~0 - random_increments_71[31:0] (Read/Write)
// 0x848 : Data signal of random_increments_71
//         bit 31~0 - random_increments_71[63:32] (Read/Write)
// 0x84c : reserved
// 0x850 : Data signal of random_increments_72
//         bit 31~0 - random_increments_72[31:0] (Read/Write)
// 0x854 : Data signal of random_increments_72
//         bit 31~0 - random_increments_72[63:32] (Read/Write)
// 0x858 : reserved
// 0x85c : Data signal of random_increments_73
//         bit 31~0 - random_increments_73[31:0] (Read/Write)
// 0x860 : Data signal of random_increments_73
//         bit 31~0 - random_increments_73[63:32] (Read/Write)
// 0x864 : reserved
// 0x868 : Data signal of random_increments_74
//         bit 31~0 - random_increments_74[31:0] (Read/Write)
// 0x86c : Data signal of random_increments_74
//         bit 31~0 - random_increments_74[63:32] (Read/Write)
// 0x870 : reserved
// 0x874 : Data signal of random_increments_75
//         bit 31~0 - random_increments_75[31:0] (Read/Write)
// 0x878 : Data signal of random_increments_75
//         bit 31~0 - random_increments_75[63:32] (Read/Write)
// 0x87c : reserved
// 0x880 : Data signal of random_increments_76
//         bit 31~0 - random_increments_76[31:0] (Read/Write)
// 0x884 : Data signal of random_increments_76
//         bit 31~0 - random_increments_76[63:32] (Read/Write)
// 0x888 : reserved
// 0x88c : Data signal of random_increments_77
//         bit 31~0 - random_increments_77[31:0] (Read/Write)
// 0x890 : Data signal of random_increments_77
//         bit 31~0 - random_increments_77[63:32] (Read/Write)
// 0x894 : reserved
// 0x898 : Data signal of random_increments_78
//         bit 31~0 - random_increments_78[31:0] (Read/Write)
// 0x89c : Data signal of random_increments_78
//         bit 31~0 - random_increments_78[63:32] (Read/Write)
// 0x8a0 : reserved
// 0x8a4 : Data signal of random_increments_79
//         bit 31~0 - random_increments_79[31:0] (Read/Write)
// 0x8a8 : Data signal of random_increments_79
//         bit 31~0 - random_increments_79[63:32] (Read/Write)
// 0x8ac : reserved
// 0x8b0 : Data signal of random_increments_80
//         bit 31~0 - random_increments_80[31:0] (Read/Write)
// 0x8b4 : Data signal of random_increments_80
//         bit 31~0 - random_increments_80[63:32] (Read/Write)
// 0x8b8 : reserved
// 0x8bc : Data signal of random_increments_81
//         bit 31~0 - random_increments_81[31:0] (Read/Write)
// 0x8c0 : Data signal of random_increments_81
//         bit 31~0 - random_increments_81[63:32] (Read/Write)
// 0x8c4 : reserved
// 0x8c8 : Data signal of random_increments_82
//         bit 31~0 - random_increments_82[31:0] (Read/Write)
// 0x8cc : Data signal of random_increments_82
//         bit 31~0 - random_increments_82[63:32] (Read/Write)
// 0x8d0 : reserved
// 0x8d4 : Data signal of random_increments_83
//         bit 31~0 - random_increments_83[31:0] (Read/Write)
// 0x8d8 : Data signal of random_increments_83
//         bit 31~0 - random_increments_83[63:32] (Read/Write)
// 0x8dc : reserved
// 0x8e0 : Data signal of random_increments_84
//         bit 31~0 - random_increments_84[31:0] (Read/Write)
// 0x8e4 : Data signal of random_increments_84
//         bit 31~0 - random_increments_84[63:32] (Read/Write)
// 0x8e8 : reserved
// 0x8ec : Data signal of random_increments_85
//         bit 31~0 - random_increments_85[31:0] (Read/Write)
// 0x8f0 : Data signal of random_increments_85
//         bit 31~0 - random_increments_85[63:32] (Read/Write)
// 0x8f4 : reserved
// 0x8f8 : Data signal of random_increments_86
//         bit 31~0 - random_increments_86[31:0] (Read/Write)
// 0x8fc : Data signal of random_increments_86
//         bit 31~0 - random_increments_86[63:32] (Read/Write)
// 0x900 : reserved
// 0x904 : Data signal of random_increments_87
//         bit 31~0 - random_increments_87[31:0] (Read/Write)
// 0x908 : Data signal of random_increments_87
//         bit 31~0 - random_increments_87[63:32] (Read/Write)
// 0x90c : reserved
// 0x910 : Data signal of random_increments_88
//         bit 31~0 - random_increments_88[31:0] (Read/Write)
// 0x914 : Data signal of random_increments_88
//         bit 31~0 - random_increments_88[63:32] (Read/Write)
// 0x918 : reserved
// 0x91c : Data signal of random_increments_89
//         bit 31~0 - random_increments_89[31:0] (Read/Write)
// 0x920 : Data signal of random_increments_89
//         bit 31~0 - random_increments_89[63:32] (Read/Write)
// 0x924 : reserved
// 0x928 : Data signal of random_increments_90
//         bit 31~0 - random_increments_90[31:0] (Read/Write)
// 0x92c : Data signal of random_increments_90
//         bit 31~0 - random_increments_90[63:32] (Read/Write)
// 0x930 : reserved
// 0x934 : Data signal of random_increments_91
//         bit 31~0 - random_increments_91[31:0] (Read/Write)
// 0x938 : Data signal of random_increments_91
//         bit 31~0 - random_increments_91[63:32] (Read/Write)
// 0x93c : reserved
// 0x940 : Data signal of random_increments_92
//         bit 31~0 - random_increments_92[31:0] (Read/Write)
// 0x944 : Data signal of random_increments_92
//         bit 31~0 - random_increments_92[63:32] (Read/Write)
// 0x948 : reserved
// 0x94c : Data signal of random_increments_93
//         bit 31~0 - random_increments_93[31:0] (Read/Write)
// 0x950 : Data signal of random_increments_93
//         bit 31~0 - random_increments_93[63:32] (Read/Write)
// 0x954 : reserved
// 0x958 : Data signal of random_increments_94
//         bit 31~0 - random_increments_94[31:0] (Read/Write)
// 0x95c : Data signal of random_increments_94
//         bit 31~0 - random_increments_94[63:32] (Read/Write)
// 0x960 : reserved
// 0x964 : Data signal of random_increments_95
//         bit 31~0 - random_increments_95[31:0] (Read/Write)
// 0x968 : Data signal of random_increments_95
//         bit 31~0 - random_increments_95[63:32] (Read/Write)
// 0x96c : reserved
// 0x970 : Data signal of random_increments_96
//         bit 31~0 - random_increments_96[31:0] (Read/Write)
// 0x974 : Data signal of random_increments_96
//         bit 31~0 - random_increments_96[63:32] (Read/Write)
// 0x978 : reserved
// 0x97c : Data signal of random_increments_97
//         bit 31~0 - random_increments_97[31:0] (Read/Write)
// 0x980 : Data signal of random_increments_97
//         bit 31~0 - random_increments_97[63:32] (Read/Write)
// 0x984 : reserved
// 0x988 : Data signal of random_increments_98
//         bit 31~0 - random_increments_98[31:0] (Read/Write)
// 0x98c : Data signal of random_increments_98
//         bit 31~0 - random_increments_98[63:32] (Read/Write)
// 0x990 : reserved
// 0x994 : Data signal of random_increments_99
//         bit 31~0 - random_increments_99[31:0] (Read/Write)
// 0x998 : Data signal of random_increments_99
//         bit 31~0 - random_increments_99[63:32] (Read/Write)
// 0x99c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL                     = 12'h000,
    ADDR_GIE                         = 12'h004,
    ADDR_IER                         = 12'h008,
    ADDR_ISR                         = 12'h00c,
    ADDR_S_0_DATA_0                  = 12'h010,
    ADDR_S_0_DATA_1                  = 12'h014,
    ADDR_S_0_CTRL                    = 12'h018,
    ADDR_S_1_DATA_0                  = 12'h01c,
    ADDR_S_1_DATA_1                  = 12'h020,
    ADDR_S_1_CTRL                    = 12'h024,
    ADDR_S_2_DATA_0                  = 12'h028,
    ADDR_S_2_DATA_1                  = 12'h02c,
    ADDR_S_2_CTRL                    = 12'h030,
    ADDR_S_3_DATA_0                  = 12'h034,
    ADDR_S_3_DATA_1                  = 12'h038,
    ADDR_S_3_CTRL                    = 12'h03c,
    ADDR_S_4_DATA_0                  = 12'h040,
    ADDR_S_4_DATA_1                  = 12'h044,
    ADDR_S_4_CTRL                    = 12'h048,
    ADDR_S_5_DATA_0                  = 12'h04c,
    ADDR_S_5_DATA_1                  = 12'h050,
    ADDR_S_5_CTRL                    = 12'h054,
    ADDR_S_6_DATA_0                  = 12'h058,
    ADDR_S_6_DATA_1                  = 12'h05c,
    ADDR_S_6_CTRL                    = 12'h060,
    ADDR_S_7_DATA_0                  = 12'h064,
    ADDR_S_7_DATA_1                  = 12'h068,
    ADDR_S_7_CTRL                    = 12'h06c,
    ADDR_S_8_DATA_0                  = 12'h070,
    ADDR_S_8_DATA_1                  = 12'h074,
    ADDR_S_8_CTRL                    = 12'h078,
    ADDR_S_9_DATA_0                  = 12'h07c,
    ADDR_S_9_DATA_1                  = 12'h080,
    ADDR_S_9_CTRL                    = 12'h084,
    ADDR_S_10_DATA_0                 = 12'h088,
    ADDR_S_10_DATA_1                 = 12'h08c,
    ADDR_S_10_CTRL                   = 12'h090,
    ADDR_S_11_DATA_0                 = 12'h094,
    ADDR_S_11_DATA_1                 = 12'h098,
    ADDR_S_11_CTRL                   = 12'h09c,
    ADDR_S_12_DATA_0                 = 12'h0a0,
    ADDR_S_12_DATA_1                 = 12'h0a4,
    ADDR_S_12_CTRL                   = 12'h0a8,
    ADDR_S_13_DATA_0                 = 12'h0ac,
    ADDR_S_13_DATA_1                 = 12'h0b0,
    ADDR_S_13_CTRL                   = 12'h0b4,
    ADDR_S_14_DATA_0                 = 12'h0b8,
    ADDR_S_14_DATA_1                 = 12'h0bc,
    ADDR_S_14_CTRL                   = 12'h0c0,
    ADDR_S_15_DATA_0                 = 12'h0c4,
    ADDR_S_15_DATA_1                 = 12'h0c8,
    ADDR_S_15_CTRL                   = 12'h0cc,
    ADDR_S_16_DATA_0                 = 12'h0d0,
    ADDR_S_16_DATA_1                 = 12'h0d4,
    ADDR_S_16_CTRL                   = 12'h0d8,
    ADDR_S_17_DATA_0                 = 12'h0dc,
    ADDR_S_17_DATA_1                 = 12'h0e0,
    ADDR_S_17_CTRL                   = 12'h0e4,
    ADDR_S_18_DATA_0                 = 12'h0e8,
    ADDR_S_18_DATA_1                 = 12'h0ec,
    ADDR_S_18_CTRL                   = 12'h0f0,
    ADDR_S_19_DATA_0                 = 12'h0f4,
    ADDR_S_19_DATA_1                 = 12'h0f8,
    ADDR_S_19_CTRL                   = 12'h0fc,
    ADDR_S_20_DATA_0                 = 12'h100,
    ADDR_S_20_DATA_1                 = 12'h104,
    ADDR_S_20_CTRL                   = 12'h108,
    ADDR_S_21_DATA_0                 = 12'h10c,
    ADDR_S_21_DATA_1                 = 12'h110,
    ADDR_S_21_CTRL                   = 12'h114,
    ADDR_S_22_DATA_0                 = 12'h118,
    ADDR_S_22_DATA_1                 = 12'h11c,
    ADDR_S_22_CTRL                   = 12'h120,
    ADDR_S_23_DATA_0                 = 12'h124,
    ADDR_S_23_DATA_1                 = 12'h128,
    ADDR_S_23_CTRL                   = 12'h12c,
    ADDR_S_24_DATA_0                 = 12'h130,
    ADDR_S_24_DATA_1                 = 12'h134,
    ADDR_S_24_CTRL                   = 12'h138,
    ADDR_S_25_DATA_0                 = 12'h13c,
    ADDR_S_25_DATA_1                 = 12'h140,
    ADDR_S_25_CTRL                   = 12'h144,
    ADDR_S_26_DATA_0                 = 12'h148,
    ADDR_S_26_DATA_1                 = 12'h14c,
    ADDR_S_26_CTRL                   = 12'h150,
    ADDR_S_27_DATA_0                 = 12'h154,
    ADDR_S_27_DATA_1                 = 12'h158,
    ADDR_S_27_CTRL                   = 12'h15c,
    ADDR_S_28_DATA_0                 = 12'h160,
    ADDR_S_28_DATA_1                 = 12'h164,
    ADDR_S_28_CTRL                   = 12'h168,
    ADDR_S_29_DATA_0                 = 12'h16c,
    ADDR_S_29_DATA_1                 = 12'h170,
    ADDR_S_29_CTRL                   = 12'h174,
    ADDR_S_30_DATA_0                 = 12'h178,
    ADDR_S_30_DATA_1                 = 12'h17c,
    ADDR_S_30_CTRL                   = 12'h180,
    ADDR_S_31_DATA_0                 = 12'h184,
    ADDR_S_31_DATA_1                 = 12'h188,
    ADDR_S_31_CTRL                   = 12'h18c,
    ADDR_S_32_DATA_0                 = 12'h190,
    ADDR_S_32_DATA_1                 = 12'h194,
    ADDR_S_32_CTRL                   = 12'h198,
    ADDR_S_33_DATA_0                 = 12'h19c,
    ADDR_S_33_DATA_1                 = 12'h1a0,
    ADDR_S_33_CTRL                   = 12'h1a4,
    ADDR_S_34_DATA_0                 = 12'h1a8,
    ADDR_S_34_DATA_1                 = 12'h1ac,
    ADDR_S_34_CTRL                   = 12'h1b0,
    ADDR_S_35_DATA_0                 = 12'h1b4,
    ADDR_S_35_DATA_1                 = 12'h1b8,
    ADDR_S_35_CTRL                   = 12'h1bc,
    ADDR_S_36_DATA_0                 = 12'h1c0,
    ADDR_S_36_DATA_1                 = 12'h1c4,
    ADDR_S_36_CTRL                   = 12'h1c8,
    ADDR_S_37_DATA_0                 = 12'h1cc,
    ADDR_S_37_DATA_1                 = 12'h1d0,
    ADDR_S_37_CTRL                   = 12'h1d4,
    ADDR_S_38_DATA_0                 = 12'h1d8,
    ADDR_S_38_DATA_1                 = 12'h1dc,
    ADDR_S_38_CTRL                   = 12'h1e0,
    ADDR_S_39_DATA_0                 = 12'h1e4,
    ADDR_S_39_DATA_1                 = 12'h1e8,
    ADDR_S_39_CTRL                   = 12'h1ec,
    ADDR_S_40_DATA_0                 = 12'h1f0,
    ADDR_S_40_DATA_1                 = 12'h1f4,
    ADDR_S_40_CTRL                   = 12'h1f8,
    ADDR_S_41_DATA_0                 = 12'h1fc,
    ADDR_S_41_DATA_1                 = 12'h200,
    ADDR_S_41_CTRL                   = 12'h204,
    ADDR_S_42_DATA_0                 = 12'h208,
    ADDR_S_42_DATA_1                 = 12'h20c,
    ADDR_S_42_CTRL                   = 12'h210,
    ADDR_S_43_DATA_0                 = 12'h214,
    ADDR_S_43_DATA_1                 = 12'h218,
    ADDR_S_43_CTRL                   = 12'h21c,
    ADDR_S_44_DATA_0                 = 12'h220,
    ADDR_S_44_DATA_1                 = 12'h224,
    ADDR_S_44_CTRL                   = 12'h228,
    ADDR_S_45_DATA_0                 = 12'h22c,
    ADDR_S_45_DATA_1                 = 12'h230,
    ADDR_S_45_CTRL                   = 12'h234,
    ADDR_S_46_DATA_0                 = 12'h238,
    ADDR_S_46_DATA_1                 = 12'h23c,
    ADDR_S_46_CTRL                   = 12'h240,
    ADDR_S_47_DATA_0                 = 12'h244,
    ADDR_S_47_DATA_1                 = 12'h248,
    ADDR_S_47_CTRL                   = 12'h24c,
    ADDR_S_48_DATA_0                 = 12'h250,
    ADDR_S_48_DATA_1                 = 12'h254,
    ADDR_S_48_CTRL                   = 12'h258,
    ADDR_S_49_DATA_0                 = 12'h25c,
    ADDR_S_49_DATA_1                 = 12'h260,
    ADDR_S_49_CTRL                   = 12'h264,
    ADDR_S_50_DATA_0                 = 12'h268,
    ADDR_S_50_DATA_1                 = 12'h26c,
    ADDR_S_50_CTRL                   = 12'h270,
    ADDR_S_51_DATA_0                 = 12'h274,
    ADDR_S_51_DATA_1                 = 12'h278,
    ADDR_S_51_CTRL                   = 12'h27c,
    ADDR_S_52_DATA_0                 = 12'h280,
    ADDR_S_52_DATA_1                 = 12'h284,
    ADDR_S_52_CTRL                   = 12'h288,
    ADDR_S_53_DATA_0                 = 12'h28c,
    ADDR_S_53_DATA_1                 = 12'h290,
    ADDR_S_53_CTRL                   = 12'h294,
    ADDR_S_54_DATA_0                 = 12'h298,
    ADDR_S_54_DATA_1                 = 12'h29c,
    ADDR_S_54_CTRL                   = 12'h2a0,
    ADDR_S_55_DATA_0                 = 12'h2a4,
    ADDR_S_55_DATA_1                 = 12'h2a8,
    ADDR_S_55_CTRL                   = 12'h2ac,
    ADDR_S_56_DATA_0                 = 12'h2b0,
    ADDR_S_56_DATA_1                 = 12'h2b4,
    ADDR_S_56_CTRL                   = 12'h2b8,
    ADDR_S_57_DATA_0                 = 12'h2bc,
    ADDR_S_57_DATA_1                 = 12'h2c0,
    ADDR_S_57_CTRL                   = 12'h2c4,
    ADDR_S_58_DATA_0                 = 12'h2c8,
    ADDR_S_58_DATA_1                 = 12'h2cc,
    ADDR_S_58_CTRL                   = 12'h2d0,
    ADDR_S_59_DATA_0                 = 12'h2d4,
    ADDR_S_59_DATA_1                 = 12'h2d8,
    ADDR_S_59_CTRL                   = 12'h2dc,
    ADDR_S_60_DATA_0                 = 12'h2e0,
    ADDR_S_60_DATA_1                 = 12'h2e4,
    ADDR_S_60_CTRL                   = 12'h2e8,
    ADDR_S_61_DATA_0                 = 12'h2ec,
    ADDR_S_61_DATA_1                 = 12'h2f0,
    ADDR_S_61_CTRL                   = 12'h2f4,
    ADDR_S_62_DATA_0                 = 12'h2f8,
    ADDR_S_62_DATA_1                 = 12'h2fc,
    ADDR_S_62_CTRL                   = 12'h300,
    ADDR_S_63_DATA_0                 = 12'h304,
    ADDR_S_63_DATA_1                 = 12'h308,
    ADDR_S_63_CTRL                   = 12'h30c,
    ADDR_S_64_DATA_0                 = 12'h310,
    ADDR_S_64_DATA_1                 = 12'h314,
    ADDR_S_64_CTRL                   = 12'h318,
    ADDR_S_65_DATA_0                 = 12'h31c,
    ADDR_S_65_DATA_1                 = 12'h320,
    ADDR_S_65_CTRL                   = 12'h324,
    ADDR_S_66_DATA_0                 = 12'h328,
    ADDR_S_66_DATA_1                 = 12'h32c,
    ADDR_S_66_CTRL                   = 12'h330,
    ADDR_S_67_DATA_0                 = 12'h334,
    ADDR_S_67_DATA_1                 = 12'h338,
    ADDR_S_67_CTRL                   = 12'h33c,
    ADDR_S_68_DATA_0                 = 12'h340,
    ADDR_S_68_DATA_1                 = 12'h344,
    ADDR_S_68_CTRL                   = 12'h348,
    ADDR_S_69_DATA_0                 = 12'h34c,
    ADDR_S_69_DATA_1                 = 12'h350,
    ADDR_S_69_CTRL                   = 12'h354,
    ADDR_S_70_DATA_0                 = 12'h358,
    ADDR_S_70_DATA_1                 = 12'h35c,
    ADDR_S_70_CTRL                   = 12'h360,
    ADDR_S_71_DATA_0                 = 12'h364,
    ADDR_S_71_DATA_1                 = 12'h368,
    ADDR_S_71_CTRL                   = 12'h36c,
    ADDR_S_72_DATA_0                 = 12'h370,
    ADDR_S_72_DATA_1                 = 12'h374,
    ADDR_S_72_CTRL                   = 12'h378,
    ADDR_S_73_DATA_0                 = 12'h37c,
    ADDR_S_73_DATA_1                 = 12'h380,
    ADDR_S_73_CTRL                   = 12'h384,
    ADDR_S_74_DATA_0                 = 12'h388,
    ADDR_S_74_DATA_1                 = 12'h38c,
    ADDR_S_74_CTRL                   = 12'h390,
    ADDR_S_75_DATA_0                 = 12'h394,
    ADDR_S_75_DATA_1                 = 12'h398,
    ADDR_S_75_CTRL                   = 12'h39c,
    ADDR_S_76_DATA_0                 = 12'h3a0,
    ADDR_S_76_DATA_1                 = 12'h3a4,
    ADDR_S_76_CTRL                   = 12'h3a8,
    ADDR_S_77_DATA_0                 = 12'h3ac,
    ADDR_S_77_DATA_1                 = 12'h3b0,
    ADDR_S_77_CTRL                   = 12'h3b4,
    ADDR_S_78_DATA_0                 = 12'h3b8,
    ADDR_S_78_DATA_1                 = 12'h3bc,
    ADDR_S_78_CTRL                   = 12'h3c0,
    ADDR_S_79_DATA_0                 = 12'h3c4,
    ADDR_S_79_DATA_1                 = 12'h3c8,
    ADDR_S_79_CTRL                   = 12'h3cc,
    ADDR_S_80_DATA_0                 = 12'h3d0,
    ADDR_S_80_DATA_1                 = 12'h3d4,
    ADDR_S_80_CTRL                   = 12'h3d8,
    ADDR_S_81_DATA_0                 = 12'h3dc,
    ADDR_S_81_DATA_1                 = 12'h3e0,
    ADDR_S_81_CTRL                   = 12'h3e4,
    ADDR_S_82_DATA_0                 = 12'h3e8,
    ADDR_S_82_DATA_1                 = 12'h3ec,
    ADDR_S_82_CTRL                   = 12'h3f0,
    ADDR_S_83_DATA_0                 = 12'h3f4,
    ADDR_S_83_DATA_1                 = 12'h3f8,
    ADDR_S_83_CTRL                   = 12'h3fc,
    ADDR_S_84_DATA_0                 = 12'h400,
    ADDR_S_84_DATA_1                 = 12'h404,
    ADDR_S_84_CTRL                   = 12'h408,
    ADDR_S_85_DATA_0                 = 12'h40c,
    ADDR_S_85_DATA_1                 = 12'h410,
    ADDR_S_85_CTRL                   = 12'h414,
    ADDR_S_86_DATA_0                 = 12'h418,
    ADDR_S_86_DATA_1                 = 12'h41c,
    ADDR_S_86_CTRL                   = 12'h420,
    ADDR_S_87_DATA_0                 = 12'h424,
    ADDR_S_87_DATA_1                 = 12'h428,
    ADDR_S_87_CTRL                   = 12'h42c,
    ADDR_S_88_DATA_0                 = 12'h430,
    ADDR_S_88_DATA_1                 = 12'h434,
    ADDR_S_88_CTRL                   = 12'h438,
    ADDR_S_89_DATA_0                 = 12'h43c,
    ADDR_S_89_DATA_1                 = 12'h440,
    ADDR_S_89_CTRL                   = 12'h444,
    ADDR_S_90_DATA_0                 = 12'h448,
    ADDR_S_90_DATA_1                 = 12'h44c,
    ADDR_S_90_CTRL                   = 12'h450,
    ADDR_S_91_DATA_0                 = 12'h454,
    ADDR_S_91_DATA_1                 = 12'h458,
    ADDR_S_91_CTRL                   = 12'h45c,
    ADDR_S_92_DATA_0                 = 12'h460,
    ADDR_S_92_DATA_1                 = 12'h464,
    ADDR_S_92_CTRL                   = 12'h468,
    ADDR_S_93_DATA_0                 = 12'h46c,
    ADDR_S_93_DATA_1                 = 12'h470,
    ADDR_S_93_CTRL                   = 12'h474,
    ADDR_S_94_DATA_0                 = 12'h478,
    ADDR_S_94_DATA_1                 = 12'h47c,
    ADDR_S_94_CTRL                   = 12'h480,
    ADDR_S_95_DATA_0                 = 12'h484,
    ADDR_S_95_DATA_1                 = 12'h488,
    ADDR_S_95_CTRL                   = 12'h48c,
    ADDR_S_96_DATA_0                 = 12'h490,
    ADDR_S_96_DATA_1                 = 12'h494,
    ADDR_S_96_CTRL                   = 12'h498,
    ADDR_S_97_DATA_0                 = 12'h49c,
    ADDR_S_97_DATA_1                 = 12'h4a0,
    ADDR_S_97_CTRL                   = 12'h4a4,
    ADDR_S_98_DATA_0                 = 12'h4a8,
    ADDR_S_98_DATA_1                 = 12'h4ac,
    ADDR_S_98_CTRL                   = 12'h4b0,
    ADDR_S_99_DATA_0                 = 12'h4b4,
    ADDR_S_99_DATA_1                 = 12'h4b8,
    ADDR_S_99_CTRL                   = 12'h4bc,
    ADDR_S0_DATA_0                   = 12'h4c0,
    ADDR_S0_DATA_1                   = 12'h4c4,
    ADDR_S0_CTRL                     = 12'h4c8,
    ADDR_R_DATA_0                    = 12'h4cc,
    ADDR_R_DATA_1                    = 12'h4d0,
    ADDR_R_CTRL                      = 12'h4d4,
    ADDR_SIGMA_DATA_0                = 12'h4d8,
    ADDR_SIGMA_DATA_1                = 12'h4dc,
    ADDR_SIGMA_CTRL                  = 12'h4e0,
    ADDR_T_DATA_0                    = 12'h4e4,
    ADDR_T_DATA_1                    = 12'h4e8,
    ADDR_T_CTRL                      = 12'h4ec,
    ADDR_RANDOM_INCREMENTS_0_DATA_0  = 12'h4f0,
    ADDR_RANDOM_INCREMENTS_0_DATA_1  = 12'h4f4,
    ADDR_RANDOM_INCREMENTS_0_CTRL    = 12'h4f8,
    ADDR_RANDOM_INCREMENTS_1_DATA_0  = 12'h4fc,
    ADDR_RANDOM_INCREMENTS_1_DATA_1  = 12'h500,
    ADDR_RANDOM_INCREMENTS_1_CTRL    = 12'h504,
    ADDR_RANDOM_INCREMENTS_2_DATA_0  = 12'h508,
    ADDR_RANDOM_INCREMENTS_2_DATA_1  = 12'h50c,
    ADDR_RANDOM_INCREMENTS_2_CTRL    = 12'h510,
    ADDR_RANDOM_INCREMENTS_3_DATA_0  = 12'h514,
    ADDR_RANDOM_INCREMENTS_3_DATA_1  = 12'h518,
    ADDR_RANDOM_INCREMENTS_3_CTRL    = 12'h51c,
    ADDR_RANDOM_INCREMENTS_4_DATA_0  = 12'h520,
    ADDR_RANDOM_INCREMENTS_4_DATA_1  = 12'h524,
    ADDR_RANDOM_INCREMENTS_4_CTRL    = 12'h528,
    ADDR_RANDOM_INCREMENTS_5_DATA_0  = 12'h52c,
    ADDR_RANDOM_INCREMENTS_5_DATA_1  = 12'h530,
    ADDR_RANDOM_INCREMENTS_5_CTRL    = 12'h534,
    ADDR_RANDOM_INCREMENTS_6_DATA_0  = 12'h538,
    ADDR_RANDOM_INCREMENTS_6_DATA_1  = 12'h53c,
    ADDR_RANDOM_INCREMENTS_6_CTRL    = 12'h540,
    ADDR_RANDOM_INCREMENTS_7_DATA_0  = 12'h544,
    ADDR_RANDOM_INCREMENTS_7_DATA_1  = 12'h548,
    ADDR_RANDOM_INCREMENTS_7_CTRL    = 12'h54c,
    ADDR_RANDOM_INCREMENTS_8_DATA_0  = 12'h550,
    ADDR_RANDOM_INCREMENTS_8_DATA_1  = 12'h554,
    ADDR_RANDOM_INCREMENTS_8_CTRL    = 12'h558,
    ADDR_RANDOM_INCREMENTS_9_DATA_0  = 12'h55c,
    ADDR_RANDOM_INCREMENTS_9_DATA_1  = 12'h560,
    ADDR_RANDOM_INCREMENTS_9_CTRL    = 12'h564,
    ADDR_RANDOM_INCREMENTS_10_DATA_0 = 12'h568,
    ADDR_RANDOM_INCREMENTS_10_DATA_1 = 12'h56c,
    ADDR_RANDOM_INCREMENTS_10_CTRL   = 12'h570,
    ADDR_RANDOM_INCREMENTS_11_DATA_0 = 12'h574,
    ADDR_RANDOM_INCREMENTS_11_DATA_1 = 12'h578,
    ADDR_RANDOM_INCREMENTS_11_CTRL   = 12'h57c,
    ADDR_RANDOM_INCREMENTS_12_DATA_0 = 12'h580,
    ADDR_RANDOM_INCREMENTS_12_DATA_1 = 12'h584,
    ADDR_RANDOM_INCREMENTS_12_CTRL   = 12'h588,
    ADDR_RANDOM_INCREMENTS_13_DATA_0 = 12'h58c,
    ADDR_RANDOM_INCREMENTS_13_DATA_1 = 12'h590,
    ADDR_RANDOM_INCREMENTS_13_CTRL   = 12'h594,
    ADDR_RANDOM_INCREMENTS_14_DATA_0 = 12'h598,
    ADDR_RANDOM_INCREMENTS_14_DATA_1 = 12'h59c,
    ADDR_RANDOM_INCREMENTS_14_CTRL   = 12'h5a0,
    ADDR_RANDOM_INCREMENTS_15_DATA_0 = 12'h5a4,
    ADDR_RANDOM_INCREMENTS_15_DATA_1 = 12'h5a8,
    ADDR_RANDOM_INCREMENTS_15_CTRL   = 12'h5ac,
    ADDR_RANDOM_INCREMENTS_16_DATA_0 = 12'h5b0,
    ADDR_RANDOM_INCREMENTS_16_DATA_1 = 12'h5b4,
    ADDR_RANDOM_INCREMENTS_16_CTRL   = 12'h5b8,
    ADDR_RANDOM_INCREMENTS_17_DATA_0 = 12'h5bc,
    ADDR_RANDOM_INCREMENTS_17_DATA_1 = 12'h5c0,
    ADDR_RANDOM_INCREMENTS_17_CTRL   = 12'h5c4,
    ADDR_RANDOM_INCREMENTS_18_DATA_0 = 12'h5c8,
    ADDR_RANDOM_INCREMENTS_18_DATA_1 = 12'h5cc,
    ADDR_RANDOM_INCREMENTS_18_CTRL   = 12'h5d0,
    ADDR_RANDOM_INCREMENTS_19_DATA_0 = 12'h5d4,
    ADDR_RANDOM_INCREMENTS_19_DATA_1 = 12'h5d8,
    ADDR_RANDOM_INCREMENTS_19_CTRL   = 12'h5dc,
    ADDR_RANDOM_INCREMENTS_20_DATA_0 = 12'h5e0,
    ADDR_RANDOM_INCREMENTS_20_DATA_1 = 12'h5e4,
    ADDR_RANDOM_INCREMENTS_20_CTRL   = 12'h5e8,
    ADDR_RANDOM_INCREMENTS_21_DATA_0 = 12'h5ec,
    ADDR_RANDOM_INCREMENTS_21_DATA_1 = 12'h5f0,
    ADDR_RANDOM_INCREMENTS_21_CTRL   = 12'h5f4,
    ADDR_RANDOM_INCREMENTS_22_DATA_0 = 12'h5f8,
    ADDR_RANDOM_INCREMENTS_22_DATA_1 = 12'h5fc,
    ADDR_RANDOM_INCREMENTS_22_CTRL   = 12'h600,
    ADDR_RANDOM_INCREMENTS_23_DATA_0 = 12'h604,
    ADDR_RANDOM_INCREMENTS_23_DATA_1 = 12'h608,
    ADDR_RANDOM_INCREMENTS_23_CTRL   = 12'h60c,
    ADDR_RANDOM_INCREMENTS_24_DATA_0 = 12'h610,
    ADDR_RANDOM_INCREMENTS_24_DATA_1 = 12'h614,
    ADDR_RANDOM_INCREMENTS_24_CTRL   = 12'h618,
    ADDR_RANDOM_INCREMENTS_25_DATA_0 = 12'h61c,
    ADDR_RANDOM_INCREMENTS_25_DATA_1 = 12'h620,
    ADDR_RANDOM_INCREMENTS_25_CTRL   = 12'h624,
    ADDR_RANDOM_INCREMENTS_26_DATA_0 = 12'h628,
    ADDR_RANDOM_INCREMENTS_26_DATA_1 = 12'h62c,
    ADDR_RANDOM_INCREMENTS_26_CTRL   = 12'h630,
    ADDR_RANDOM_INCREMENTS_27_DATA_0 = 12'h634,
    ADDR_RANDOM_INCREMENTS_27_DATA_1 = 12'h638,
    ADDR_RANDOM_INCREMENTS_27_CTRL   = 12'h63c,
    ADDR_RANDOM_INCREMENTS_28_DATA_0 = 12'h640,
    ADDR_RANDOM_INCREMENTS_28_DATA_1 = 12'h644,
    ADDR_RANDOM_INCREMENTS_28_CTRL   = 12'h648,
    ADDR_RANDOM_INCREMENTS_29_DATA_0 = 12'h64c,
    ADDR_RANDOM_INCREMENTS_29_DATA_1 = 12'h650,
    ADDR_RANDOM_INCREMENTS_29_CTRL   = 12'h654,
    ADDR_RANDOM_INCREMENTS_30_DATA_0 = 12'h658,
    ADDR_RANDOM_INCREMENTS_30_DATA_1 = 12'h65c,
    ADDR_RANDOM_INCREMENTS_30_CTRL   = 12'h660,
    ADDR_RANDOM_INCREMENTS_31_DATA_0 = 12'h664,
    ADDR_RANDOM_INCREMENTS_31_DATA_1 = 12'h668,
    ADDR_RANDOM_INCREMENTS_31_CTRL   = 12'h66c,
    ADDR_RANDOM_INCREMENTS_32_DATA_0 = 12'h670,
    ADDR_RANDOM_INCREMENTS_32_DATA_1 = 12'h674,
    ADDR_RANDOM_INCREMENTS_32_CTRL   = 12'h678,
    ADDR_RANDOM_INCREMENTS_33_DATA_0 = 12'h67c,
    ADDR_RANDOM_INCREMENTS_33_DATA_1 = 12'h680,
    ADDR_RANDOM_INCREMENTS_33_CTRL   = 12'h684,
    ADDR_RANDOM_INCREMENTS_34_DATA_0 = 12'h688,
    ADDR_RANDOM_INCREMENTS_34_DATA_1 = 12'h68c,
    ADDR_RANDOM_INCREMENTS_34_CTRL   = 12'h690,
    ADDR_RANDOM_INCREMENTS_35_DATA_0 = 12'h694,
    ADDR_RANDOM_INCREMENTS_35_DATA_1 = 12'h698,
    ADDR_RANDOM_INCREMENTS_35_CTRL   = 12'h69c,
    ADDR_RANDOM_INCREMENTS_36_DATA_0 = 12'h6a0,
    ADDR_RANDOM_INCREMENTS_36_DATA_1 = 12'h6a4,
    ADDR_RANDOM_INCREMENTS_36_CTRL   = 12'h6a8,
    ADDR_RANDOM_INCREMENTS_37_DATA_0 = 12'h6ac,
    ADDR_RANDOM_INCREMENTS_37_DATA_1 = 12'h6b0,
    ADDR_RANDOM_INCREMENTS_37_CTRL   = 12'h6b4,
    ADDR_RANDOM_INCREMENTS_38_DATA_0 = 12'h6b8,
    ADDR_RANDOM_INCREMENTS_38_DATA_1 = 12'h6bc,
    ADDR_RANDOM_INCREMENTS_38_CTRL   = 12'h6c0,
    ADDR_RANDOM_INCREMENTS_39_DATA_0 = 12'h6c4,
    ADDR_RANDOM_INCREMENTS_39_DATA_1 = 12'h6c8,
    ADDR_RANDOM_INCREMENTS_39_CTRL   = 12'h6cc,
    ADDR_RANDOM_INCREMENTS_40_DATA_0 = 12'h6d0,
    ADDR_RANDOM_INCREMENTS_40_DATA_1 = 12'h6d4,
    ADDR_RANDOM_INCREMENTS_40_CTRL   = 12'h6d8,
    ADDR_RANDOM_INCREMENTS_41_DATA_0 = 12'h6dc,
    ADDR_RANDOM_INCREMENTS_41_DATA_1 = 12'h6e0,
    ADDR_RANDOM_INCREMENTS_41_CTRL   = 12'h6e4,
    ADDR_RANDOM_INCREMENTS_42_DATA_0 = 12'h6e8,
    ADDR_RANDOM_INCREMENTS_42_DATA_1 = 12'h6ec,
    ADDR_RANDOM_INCREMENTS_42_CTRL   = 12'h6f0,
    ADDR_RANDOM_INCREMENTS_43_DATA_0 = 12'h6f4,
    ADDR_RANDOM_INCREMENTS_43_DATA_1 = 12'h6f8,
    ADDR_RANDOM_INCREMENTS_43_CTRL   = 12'h6fc,
    ADDR_RANDOM_INCREMENTS_44_DATA_0 = 12'h700,
    ADDR_RANDOM_INCREMENTS_44_DATA_1 = 12'h704,
    ADDR_RANDOM_INCREMENTS_44_CTRL   = 12'h708,
    ADDR_RANDOM_INCREMENTS_45_DATA_0 = 12'h70c,
    ADDR_RANDOM_INCREMENTS_45_DATA_1 = 12'h710,
    ADDR_RANDOM_INCREMENTS_45_CTRL   = 12'h714,
    ADDR_RANDOM_INCREMENTS_46_DATA_0 = 12'h718,
    ADDR_RANDOM_INCREMENTS_46_DATA_1 = 12'h71c,
    ADDR_RANDOM_INCREMENTS_46_CTRL   = 12'h720,
    ADDR_RANDOM_INCREMENTS_47_DATA_0 = 12'h724,
    ADDR_RANDOM_INCREMENTS_47_DATA_1 = 12'h728,
    ADDR_RANDOM_INCREMENTS_47_CTRL   = 12'h72c,
    ADDR_RANDOM_INCREMENTS_48_DATA_0 = 12'h730,
    ADDR_RANDOM_INCREMENTS_48_DATA_1 = 12'h734,
    ADDR_RANDOM_INCREMENTS_48_CTRL   = 12'h738,
    ADDR_RANDOM_INCREMENTS_49_DATA_0 = 12'h73c,
    ADDR_RANDOM_INCREMENTS_49_DATA_1 = 12'h740,
    ADDR_RANDOM_INCREMENTS_49_CTRL   = 12'h744,
    ADDR_RANDOM_INCREMENTS_50_DATA_0 = 12'h748,
    ADDR_RANDOM_INCREMENTS_50_DATA_1 = 12'h74c,
    ADDR_RANDOM_INCREMENTS_50_CTRL   = 12'h750,
    ADDR_RANDOM_INCREMENTS_51_DATA_0 = 12'h754,
    ADDR_RANDOM_INCREMENTS_51_DATA_1 = 12'h758,
    ADDR_RANDOM_INCREMENTS_51_CTRL   = 12'h75c,
    ADDR_RANDOM_INCREMENTS_52_DATA_0 = 12'h760,
    ADDR_RANDOM_INCREMENTS_52_DATA_1 = 12'h764,
    ADDR_RANDOM_INCREMENTS_52_CTRL   = 12'h768,
    ADDR_RANDOM_INCREMENTS_53_DATA_0 = 12'h76c,
    ADDR_RANDOM_INCREMENTS_53_DATA_1 = 12'h770,
    ADDR_RANDOM_INCREMENTS_53_CTRL   = 12'h774,
    ADDR_RANDOM_INCREMENTS_54_DATA_0 = 12'h778,
    ADDR_RANDOM_INCREMENTS_54_DATA_1 = 12'h77c,
    ADDR_RANDOM_INCREMENTS_54_CTRL   = 12'h780,
    ADDR_RANDOM_INCREMENTS_55_DATA_0 = 12'h784,
    ADDR_RANDOM_INCREMENTS_55_DATA_1 = 12'h788,
    ADDR_RANDOM_INCREMENTS_55_CTRL   = 12'h78c,
    ADDR_RANDOM_INCREMENTS_56_DATA_0 = 12'h790,
    ADDR_RANDOM_INCREMENTS_56_DATA_1 = 12'h794,
    ADDR_RANDOM_INCREMENTS_56_CTRL   = 12'h798,
    ADDR_RANDOM_INCREMENTS_57_DATA_0 = 12'h79c,
    ADDR_RANDOM_INCREMENTS_57_DATA_1 = 12'h7a0,
    ADDR_RANDOM_INCREMENTS_57_CTRL   = 12'h7a4,
    ADDR_RANDOM_INCREMENTS_58_DATA_0 = 12'h7a8,
    ADDR_RANDOM_INCREMENTS_58_DATA_1 = 12'h7ac,
    ADDR_RANDOM_INCREMENTS_58_CTRL   = 12'h7b0,
    ADDR_RANDOM_INCREMENTS_59_DATA_0 = 12'h7b4,
    ADDR_RANDOM_INCREMENTS_59_DATA_1 = 12'h7b8,
    ADDR_RANDOM_INCREMENTS_59_CTRL   = 12'h7bc,
    ADDR_RANDOM_INCREMENTS_60_DATA_0 = 12'h7c0,
    ADDR_RANDOM_INCREMENTS_60_DATA_1 = 12'h7c4,
    ADDR_RANDOM_INCREMENTS_60_CTRL   = 12'h7c8,
    ADDR_RANDOM_INCREMENTS_61_DATA_0 = 12'h7cc,
    ADDR_RANDOM_INCREMENTS_61_DATA_1 = 12'h7d0,
    ADDR_RANDOM_INCREMENTS_61_CTRL   = 12'h7d4,
    ADDR_RANDOM_INCREMENTS_62_DATA_0 = 12'h7d8,
    ADDR_RANDOM_INCREMENTS_62_DATA_1 = 12'h7dc,
    ADDR_RANDOM_INCREMENTS_62_CTRL   = 12'h7e0,
    ADDR_RANDOM_INCREMENTS_63_DATA_0 = 12'h7e4,
    ADDR_RANDOM_INCREMENTS_63_DATA_1 = 12'h7e8,
    ADDR_RANDOM_INCREMENTS_63_CTRL   = 12'h7ec,
    ADDR_RANDOM_INCREMENTS_64_DATA_0 = 12'h7f0,
    ADDR_RANDOM_INCREMENTS_64_DATA_1 = 12'h7f4,
    ADDR_RANDOM_INCREMENTS_64_CTRL   = 12'h7f8,
    ADDR_RANDOM_INCREMENTS_65_DATA_0 = 12'h7fc,
    ADDR_RANDOM_INCREMENTS_65_DATA_1 = 12'h800,
    ADDR_RANDOM_INCREMENTS_65_CTRL   = 12'h804,
    ADDR_RANDOM_INCREMENTS_66_DATA_0 = 12'h808,
    ADDR_RANDOM_INCREMENTS_66_DATA_1 = 12'h80c,
    ADDR_RANDOM_INCREMENTS_66_CTRL   = 12'h810,
    ADDR_RANDOM_INCREMENTS_67_DATA_0 = 12'h814,
    ADDR_RANDOM_INCREMENTS_67_DATA_1 = 12'h818,
    ADDR_RANDOM_INCREMENTS_67_CTRL   = 12'h81c,
    ADDR_RANDOM_INCREMENTS_68_DATA_0 = 12'h820,
    ADDR_RANDOM_INCREMENTS_68_DATA_1 = 12'h824,
    ADDR_RANDOM_INCREMENTS_68_CTRL   = 12'h828,
    ADDR_RANDOM_INCREMENTS_69_DATA_0 = 12'h82c,
    ADDR_RANDOM_INCREMENTS_69_DATA_1 = 12'h830,
    ADDR_RANDOM_INCREMENTS_69_CTRL   = 12'h834,
    ADDR_RANDOM_INCREMENTS_70_DATA_0 = 12'h838,
    ADDR_RANDOM_INCREMENTS_70_DATA_1 = 12'h83c,
    ADDR_RANDOM_INCREMENTS_70_CTRL   = 12'h840,
    ADDR_RANDOM_INCREMENTS_71_DATA_0 = 12'h844,
    ADDR_RANDOM_INCREMENTS_71_DATA_1 = 12'h848,
    ADDR_RANDOM_INCREMENTS_71_CTRL   = 12'h84c,
    ADDR_RANDOM_INCREMENTS_72_DATA_0 = 12'h850,
    ADDR_RANDOM_INCREMENTS_72_DATA_1 = 12'h854,
    ADDR_RANDOM_INCREMENTS_72_CTRL   = 12'h858,
    ADDR_RANDOM_INCREMENTS_73_DATA_0 = 12'h85c,
    ADDR_RANDOM_INCREMENTS_73_DATA_1 = 12'h860,
    ADDR_RANDOM_INCREMENTS_73_CTRL   = 12'h864,
    ADDR_RANDOM_INCREMENTS_74_DATA_0 = 12'h868,
    ADDR_RANDOM_INCREMENTS_74_DATA_1 = 12'h86c,
    ADDR_RANDOM_INCREMENTS_74_CTRL   = 12'h870,
    ADDR_RANDOM_INCREMENTS_75_DATA_0 = 12'h874,
    ADDR_RANDOM_INCREMENTS_75_DATA_1 = 12'h878,
    ADDR_RANDOM_INCREMENTS_75_CTRL   = 12'h87c,
    ADDR_RANDOM_INCREMENTS_76_DATA_0 = 12'h880,
    ADDR_RANDOM_INCREMENTS_76_DATA_1 = 12'h884,
    ADDR_RANDOM_INCREMENTS_76_CTRL   = 12'h888,
    ADDR_RANDOM_INCREMENTS_77_DATA_0 = 12'h88c,
    ADDR_RANDOM_INCREMENTS_77_DATA_1 = 12'h890,
    ADDR_RANDOM_INCREMENTS_77_CTRL   = 12'h894,
    ADDR_RANDOM_INCREMENTS_78_DATA_0 = 12'h898,
    ADDR_RANDOM_INCREMENTS_78_DATA_1 = 12'h89c,
    ADDR_RANDOM_INCREMENTS_78_CTRL   = 12'h8a0,
    ADDR_RANDOM_INCREMENTS_79_DATA_0 = 12'h8a4,
    ADDR_RANDOM_INCREMENTS_79_DATA_1 = 12'h8a8,
    ADDR_RANDOM_INCREMENTS_79_CTRL   = 12'h8ac,
    ADDR_RANDOM_INCREMENTS_80_DATA_0 = 12'h8b0,
    ADDR_RANDOM_INCREMENTS_80_DATA_1 = 12'h8b4,
    ADDR_RANDOM_INCREMENTS_80_CTRL   = 12'h8b8,
    ADDR_RANDOM_INCREMENTS_81_DATA_0 = 12'h8bc,
    ADDR_RANDOM_INCREMENTS_81_DATA_1 = 12'h8c0,
    ADDR_RANDOM_INCREMENTS_81_CTRL   = 12'h8c4,
    ADDR_RANDOM_INCREMENTS_82_DATA_0 = 12'h8c8,
    ADDR_RANDOM_INCREMENTS_82_DATA_1 = 12'h8cc,
    ADDR_RANDOM_INCREMENTS_82_CTRL   = 12'h8d0,
    ADDR_RANDOM_INCREMENTS_83_DATA_0 = 12'h8d4,
    ADDR_RANDOM_INCREMENTS_83_DATA_1 = 12'h8d8,
    ADDR_RANDOM_INCREMENTS_83_CTRL   = 12'h8dc,
    ADDR_RANDOM_INCREMENTS_84_DATA_0 = 12'h8e0,
    ADDR_RANDOM_INCREMENTS_84_DATA_1 = 12'h8e4,
    ADDR_RANDOM_INCREMENTS_84_CTRL   = 12'h8e8,
    ADDR_RANDOM_INCREMENTS_85_DATA_0 = 12'h8ec,
    ADDR_RANDOM_INCREMENTS_85_DATA_1 = 12'h8f0,
    ADDR_RANDOM_INCREMENTS_85_CTRL   = 12'h8f4,
    ADDR_RANDOM_INCREMENTS_86_DATA_0 = 12'h8f8,
    ADDR_RANDOM_INCREMENTS_86_DATA_1 = 12'h8fc,
    ADDR_RANDOM_INCREMENTS_86_CTRL   = 12'h900,
    ADDR_RANDOM_INCREMENTS_87_DATA_0 = 12'h904,
    ADDR_RANDOM_INCREMENTS_87_DATA_1 = 12'h908,
    ADDR_RANDOM_INCREMENTS_87_CTRL   = 12'h90c,
    ADDR_RANDOM_INCREMENTS_88_DATA_0 = 12'h910,
    ADDR_RANDOM_INCREMENTS_88_DATA_1 = 12'h914,
    ADDR_RANDOM_INCREMENTS_88_CTRL   = 12'h918,
    ADDR_RANDOM_INCREMENTS_89_DATA_0 = 12'h91c,
    ADDR_RANDOM_INCREMENTS_89_DATA_1 = 12'h920,
    ADDR_RANDOM_INCREMENTS_89_CTRL   = 12'h924,
    ADDR_RANDOM_INCREMENTS_90_DATA_0 = 12'h928,
    ADDR_RANDOM_INCREMENTS_90_DATA_1 = 12'h92c,
    ADDR_RANDOM_INCREMENTS_90_CTRL   = 12'h930,
    ADDR_RANDOM_INCREMENTS_91_DATA_0 = 12'h934,
    ADDR_RANDOM_INCREMENTS_91_DATA_1 = 12'h938,
    ADDR_RANDOM_INCREMENTS_91_CTRL   = 12'h93c,
    ADDR_RANDOM_INCREMENTS_92_DATA_0 = 12'h940,
    ADDR_RANDOM_INCREMENTS_92_DATA_1 = 12'h944,
    ADDR_RANDOM_INCREMENTS_92_CTRL   = 12'h948,
    ADDR_RANDOM_INCREMENTS_93_DATA_0 = 12'h94c,
    ADDR_RANDOM_INCREMENTS_93_DATA_1 = 12'h950,
    ADDR_RANDOM_INCREMENTS_93_CTRL   = 12'h954,
    ADDR_RANDOM_INCREMENTS_94_DATA_0 = 12'h958,
    ADDR_RANDOM_INCREMENTS_94_DATA_1 = 12'h95c,
    ADDR_RANDOM_INCREMENTS_94_CTRL   = 12'h960,
    ADDR_RANDOM_INCREMENTS_95_DATA_0 = 12'h964,
    ADDR_RANDOM_INCREMENTS_95_DATA_1 = 12'h968,
    ADDR_RANDOM_INCREMENTS_95_CTRL   = 12'h96c,
    ADDR_RANDOM_INCREMENTS_96_DATA_0 = 12'h970,
    ADDR_RANDOM_INCREMENTS_96_DATA_1 = 12'h974,
    ADDR_RANDOM_INCREMENTS_96_CTRL   = 12'h978,
    ADDR_RANDOM_INCREMENTS_97_DATA_0 = 12'h97c,
    ADDR_RANDOM_INCREMENTS_97_DATA_1 = 12'h980,
    ADDR_RANDOM_INCREMENTS_97_CTRL   = 12'h984,
    ADDR_RANDOM_INCREMENTS_98_DATA_0 = 12'h988,
    ADDR_RANDOM_INCREMENTS_98_DATA_1 = 12'h98c,
    ADDR_RANDOM_INCREMENTS_98_CTRL   = 12'h990,
    ADDR_RANDOM_INCREMENTS_99_DATA_0 = 12'h994,
    ADDR_RANDOM_INCREMENTS_99_DATA_1 = 12'h998,
    ADDR_RANDOM_INCREMENTS_99_CTRL   = 12'h99c,
    WRIDLE                           = 2'd0,
    WRDATA                           = 2'd1,
    WRRESP                           = 2'd2,
    WRRESET                          = 2'd3,
    RDIDLE                           = 2'd0,
    RDDATA                           = 2'd1,
    RDRESET                          = 2'd2,
    ADDR_BITS                = 12;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_ap_idle = 1'b0;
    reg                           int_ap_continue = 1'b0;
    reg                           int_ap_ready = 1'b0;
    wire                          task_ap_ready;
    reg                           int_ap_done = 1'b0;
    wire                          task_ap_done;
    reg                           int_task_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_interrupt = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           auto_restart_status = 1'b0;
    reg                           auto_restart_done = 1'b0;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    reg  [63:0]                   int_S_0 = 'b0;
    reg  [63:0]                   int_S_1 = 'b0;
    reg  [63:0]                   int_S_2 = 'b0;
    reg  [63:0]                   int_S_3 = 'b0;
    reg  [63:0]                   int_S_4 = 'b0;
    reg  [63:0]                   int_S_5 = 'b0;
    reg  [63:0]                   int_S_6 = 'b0;
    reg  [63:0]                   int_S_7 = 'b0;
    reg  [63:0]                   int_S_8 = 'b0;
    reg  [63:0]                   int_S_9 = 'b0;
    reg  [63:0]                   int_S_10 = 'b0;
    reg  [63:0]                   int_S_11 = 'b0;
    reg  [63:0]                   int_S_12 = 'b0;
    reg  [63:0]                   int_S_13 = 'b0;
    reg  [63:0]                   int_S_14 = 'b0;
    reg  [63:0]                   int_S_15 = 'b0;
    reg  [63:0]                   int_S_16 = 'b0;
    reg  [63:0]                   int_S_17 = 'b0;
    reg  [63:0]                   int_S_18 = 'b0;
    reg  [63:0]                   int_S_19 = 'b0;
    reg  [63:0]                   int_S_20 = 'b0;
    reg  [63:0]                   int_S_21 = 'b0;
    reg  [63:0]                   int_S_22 = 'b0;
    reg  [63:0]                   int_S_23 = 'b0;
    reg  [63:0]                   int_S_24 = 'b0;
    reg  [63:0]                   int_S_25 = 'b0;
    reg  [63:0]                   int_S_26 = 'b0;
    reg  [63:0]                   int_S_27 = 'b0;
    reg  [63:0]                   int_S_28 = 'b0;
    reg  [63:0]                   int_S_29 = 'b0;
    reg  [63:0]                   int_S_30 = 'b0;
    reg  [63:0]                   int_S_31 = 'b0;
    reg  [63:0]                   int_S_32 = 'b0;
    reg  [63:0]                   int_S_33 = 'b0;
    reg  [63:0]                   int_S_34 = 'b0;
    reg  [63:0]                   int_S_35 = 'b0;
    reg  [63:0]                   int_S_36 = 'b0;
    reg  [63:0]                   int_S_37 = 'b0;
    reg  [63:0]                   int_S_38 = 'b0;
    reg  [63:0]                   int_S_39 = 'b0;
    reg  [63:0]                   int_S_40 = 'b0;
    reg  [63:0]                   int_S_41 = 'b0;
    reg  [63:0]                   int_S_42 = 'b0;
    reg  [63:0]                   int_S_43 = 'b0;
    reg  [63:0]                   int_S_44 = 'b0;
    reg  [63:0]                   int_S_45 = 'b0;
    reg  [63:0]                   int_S_46 = 'b0;
    reg  [63:0]                   int_S_47 = 'b0;
    reg  [63:0]                   int_S_48 = 'b0;
    reg  [63:0]                   int_S_49 = 'b0;
    reg  [63:0]                   int_S_50 = 'b0;
    reg  [63:0]                   int_S_51 = 'b0;
    reg  [63:0]                   int_S_52 = 'b0;
    reg  [63:0]                   int_S_53 = 'b0;
    reg  [63:0]                   int_S_54 = 'b0;
    reg  [63:0]                   int_S_55 = 'b0;
    reg  [63:0]                   int_S_56 = 'b0;
    reg  [63:0]                   int_S_57 = 'b0;
    reg  [63:0]                   int_S_58 = 'b0;
    reg  [63:0]                   int_S_59 = 'b0;
    reg  [63:0]                   int_S_60 = 'b0;
    reg  [63:0]                   int_S_61 = 'b0;
    reg  [63:0]                   int_S_62 = 'b0;
    reg  [63:0]                   int_S_63 = 'b0;
    reg  [63:0]                   int_S_64 = 'b0;
    reg  [63:0]                   int_S_65 = 'b0;
    reg  [63:0]                   int_S_66 = 'b0;
    reg  [63:0]                   int_S_67 = 'b0;
    reg  [63:0]                   int_S_68 = 'b0;
    reg  [63:0]                   int_S_69 = 'b0;
    reg  [63:0]                   int_S_70 = 'b0;
    reg  [63:0]                   int_S_71 = 'b0;
    reg  [63:0]                   int_S_72 = 'b0;
    reg  [63:0]                   int_S_73 = 'b0;
    reg  [63:0]                   int_S_74 = 'b0;
    reg  [63:0]                   int_S_75 = 'b0;
    reg  [63:0]                   int_S_76 = 'b0;
    reg  [63:0]                   int_S_77 = 'b0;
    reg  [63:0]                   int_S_78 = 'b0;
    reg  [63:0]                   int_S_79 = 'b0;
    reg  [63:0]                   int_S_80 = 'b0;
    reg  [63:0]                   int_S_81 = 'b0;
    reg  [63:0]                   int_S_82 = 'b0;
    reg  [63:0]                   int_S_83 = 'b0;
    reg  [63:0]                   int_S_84 = 'b0;
    reg  [63:0]                   int_S_85 = 'b0;
    reg  [63:0]                   int_S_86 = 'b0;
    reg  [63:0]                   int_S_87 = 'b0;
    reg  [63:0]                   int_S_88 = 'b0;
    reg  [63:0]                   int_S_89 = 'b0;
    reg  [63:0]                   int_S_90 = 'b0;
    reg  [63:0]                   int_S_91 = 'b0;
    reg  [63:0]                   int_S_92 = 'b0;
    reg  [63:0]                   int_S_93 = 'b0;
    reg  [63:0]                   int_S_94 = 'b0;
    reg  [63:0]                   int_S_95 = 'b0;
    reg  [63:0]                   int_S_96 = 'b0;
    reg  [63:0]                   int_S_97 = 'b0;
    reg  [63:0]                   int_S_98 = 'b0;
    reg  [63:0]                   int_S_99 = 'b0;
    reg  [63:0]                   int_S0 = 'b0;
    reg  [63:0]                   int_r = 'b0;
    reg  [63:0]                   int_sigma = 'b0;
    reg  [63:0]                   int_T = 'b0;
    reg  [63:0]                   int_random_increments_0 = 'b0;
    reg  [63:0]                   int_random_increments_1 = 'b0;
    reg  [63:0]                   int_random_increments_2 = 'b0;
    reg  [63:0]                   int_random_increments_3 = 'b0;
    reg  [63:0]                   int_random_increments_4 = 'b0;
    reg  [63:0]                   int_random_increments_5 = 'b0;
    reg  [63:0]                   int_random_increments_6 = 'b0;
    reg  [63:0]                   int_random_increments_7 = 'b0;
    reg  [63:0]                   int_random_increments_8 = 'b0;
    reg  [63:0]                   int_random_increments_9 = 'b0;
    reg  [63:0]                   int_random_increments_10 = 'b0;
    reg  [63:0]                   int_random_increments_11 = 'b0;
    reg  [63:0]                   int_random_increments_12 = 'b0;
    reg  [63:0]                   int_random_increments_13 = 'b0;
    reg  [63:0]                   int_random_increments_14 = 'b0;
    reg  [63:0]                   int_random_increments_15 = 'b0;
    reg  [63:0]                   int_random_increments_16 = 'b0;
    reg  [63:0]                   int_random_increments_17 = 'b0;
    reg  [63:0]                   int_random_increments_18 = 'b0;
    reg  [63:0]                   int_random_increments_19 = 'b0;
    reg  [63:0]                   int_random_increments_20 = 'b0;
    reg  [63:0]                   int_random_increments_21 = 'b0;
    reg  [63:0]                   int_random_increments_22 = 'b0;
    reg  [63:0]                   int_random_increments_23 = 'b0;
    reg  [63:0]                   int_random_increments_24 = 'b0;
    reg  [63:0]                   int_random_increments_25 = 'b0;
    reg  [63:0]                   int_random_increments_26 = 'b0;
    reg  [63:0]                   int_random_increments_27 = 'b0;
    reg  [63:0]                   int_random_increments_28 = 'b0;
    reg  [63:0]                   int_random_increments_29 = 'b0;
    reg  [63:0]                   int_random_increments_30 = 'b0;
    reg  [63:0]                   int_random_increments_31 = 'b0;
    reg  [63:0]                   int_random_increments_32 = 'b0;
    reg  [63:0]                   int_random_increments_33 = 'b0;
    reg  [63:0]                   int_random_increments_34 = 'b0;
    reg  [63:0]                   int_random_increments_35 = 'b0;
    reg  [63:0]                   int_random_increments_36 = 'b0;
    reg  [63:0]                   int_random_increments_37 = 'b0;
    reg  [63:0]                   int_random_increments_38 = 'b0;
    reg  [63:0]                   int_random_increments_39 = 'b0;
    reg  [63:0]                   int_random_increments_40 = 'b0;
    reg  [63:0]                   int_random_increments_41 = 'b0;
    reg  [63:0]                   int_random_increments_42 = 'b0;
    reg  [63:0]                   int_random_increments_43 = 'b0;
    reg  [63:0]                   int_random_increments_44 = 'b0;
    reg  [63:0]                   int_random_increments_45 = 'b0;
    reg  [63:0]                   int_random_increments_46 = 'b0;
    reg  [63:0]                   int_random_increments_47 = 'b0;
    reg  [63:0]                   int_random_increments_48 = 'b0;
    reg  [63:0]                   int_random_increments_49 = 'b0;
    reg  [63:0]                   int_random_increments_50 = 'b0;
    reg  [63:0]                   int_random_increments_51 = 'b0;
    reg  [63:0]                   int_random_increments_52 = 'b0;
    reg  [63:0]                   int_random_increments_53 = 'b0;
    reg  [63:0]                   int_random_increments_54 = 'b0;
    reg  [63:0]                   int_random_increments_55 = 'b0;
    reg  [63:0]                   int_random_increments_56 = 'b0;
    reg  [63:0]                   int_random_increments_57 = 'b0;
    reg  [63:0]                   int_random_increments_58 = 'b0;
    reg  [63:0]                   int_random_increments_59 = 'b0;
    reg  [63:0]                   int_random_increments_60 = 'b0;
    reg  [63:0]                   int_random_increments_61 = 'b0;
    reg  [63:0]                   int_random_increments_62 = 'b0;
    reg  [63:0]                   int_random_increments_63 = 'b0;
    reg  [63:0]                   int_random_increments_64 = 'b0;
    reg  [63:0]                   int_random_increments_65 = 'b0;
    reg  [63:0]                   int_random_increments_66 = 'b0;
    reg  [63:0]                   int_random_increments_67 = 'b0;
    reg  [63:0]                   int_random_increments_68 = 'b0;
    reg  [63:0]                   int_random_increments_69 = 'b0;
    reg  [63:0]                   int_random_increments_70 = 'b0;
    reg  [63:0]                   int_random_increments_71 = 'b0;
    reg  [63:0]                   int_random_increments_72 = 'b0;
    reg  [63:0]                   int_random_increments_73 = 'b0;
    reg  [63:0]                   int_random_increments_74 = 'b0;
    reg  [63:0]                   int_random_increments_75 = 'b0;
    reg  [63:0]                   int_random_increments_76 = 'b0;
    reg  [63:0]                   int_random_increments_77 = 'b0;
    reg  [63:0]                   int_random_increments_78 = 'b0;
    reg  [63:0]                   int_random_increments_79 = 'b0;
    reg  [63:0]                   int_random_increments_80 = 'b0;
    reg  [63:0]                   int_random_increments_81 = 'b0;
    reg  [63:0]                   int_random_increments_82 = 'b0;
    reg  [63:0]                   int_random_increments_83 = 'b0;
    reg  [63:0]                   int_random_increments_84 = 'b0;
    reg  [63:0]                   int_random_increments_85 = 'b0;
    reg  [63:0]                   int_random_increments_86 = 'b0;
    reg  [63:0]                   int_random_increments_87 = 'b0;
    reg  [63:0]                   int_random_increments_88 = 'b0;
    reg  [63:0]                   int_random_increments_89 = 'b0;
    reg  [63:0]                   int_random_increments_90 = 'b0;
    reg  [63:0]                   int_random_increments_91 = 'b0;
    reg  [63:0]                   int_random_increments_92 = 'b0;
    reg  [63:0]                   int_random_increments_93 = 'b0;
    reg  [63:0]                   int_random_increments_94 = 'b0;
    reg  [63:0]                   int_random_increments_95 = 'b0;
    reg  [63:0]                   int_random_increments_96 = 'b0;
    reg  [63:0]                   int_random_increments_97 = 'b0;
    reg  [63:0]                   int_random_increments_98 = 'b0;
    reg  [63:0]                   int_random_increments_99 = 'b0;

//------------------------Instantiation------------------


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= {AWADDR[ADDR_BITS-1:2], {2{1'b0}}};
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_task_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[4] <= int_ap_continue;
                    rdata[7] <= int_auto_restart;
                    rdata[9] <= int_interrupt;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_S_0_DATA_0: begin
                    rdata <= int_S_0[31:0];
                end
                ADDR_S_0_DATA_1: begin
                    rdata <= int_S_0[63:32];
                end
                ADDR_S_1_DATA_0: begin
                    rdata <= int_S_1[31:0];
                end
                ADDR_S_1_DATA_1: begin
                    rdata <= int_S_1[63:32];
                end
                ADDR_S_2_DATA_0: begin
                    rdata <= int_S_2[31:0];
                end
                ADDR_S_2_DATA_1: begin
                    rdata <= int_S_2[63:32];
                end
                ADDR_S_3_DATA_0: begin
                    rdata <= int_S_3[31:0];
                end
                ADDR_S_3_DATA_1: begin
                    rdata <= int_S_3[63:32];
                end
                ADDR_S_4_DATA_0: begin
                    rdata <= int_S_4[31:0];
                end
                ADDR_S_4_DATA_1: begin
                    rdata <= int_S_4[63:32];
                end
                ADDR_S_5_DATA_0: begin
                    rdata <= int_S_5[31:0];
                end
                ADDR_S_5_DATA_1: begin
                    rdata <= int_S_5[63:32];
                end
                ADDR_S_6_DATA_0: begin
                    rdata <= int_S_6[31:0];
                end
                ADDR_S_6_DATA_1: begin
                    rdata <= int_S_6[63:32];
                end
                ADDR_S_7_DATA_0: begin
                    rdata <= int_S_7[31:0];
                end
                ADDR_S_7_DATA_1: begin
                    rdata <= int_S_7[63:32];
                end
                ADDR_S_8_DATA_0: begin
                    rdata <= int_S_8[31:0];
                end
                ADDR_S_8_DATA_1: begin
                    rdata <= int_S_8[63:32];
                end
                ADDR_S_9_DATA_0: begin
                    rdata <= int_S_9[31:0];
                end
                ADDR_S_9_DATA_1: begin
                    rdata <= int_S_9[63:32];
                end
                ADDR_S_10_DATA_0: begin
                    rdata <= int_S_10[31:0];
                end
                ADDR_S_10_DATA_1: begin
                    rdata <= int_S_10[63:32];
                end
                ADDR_S_11_DATA_0: begin
                    rdata <= int_S_11[31:0];
                end
                ADDR_S_11_DATA_1: begin
                    rdata <= int_S_11[63:32];
                end
                ADDR_S_12_DATA_0: begin
                    rdata <= int_S_12[31:0];
                end
                ADDR_S_12_DATA_1: begin
                    rdata <= int_S_12[63:32];
                end
                ADDR_S_13_DATA_0: begin
                    rdata <= int_S_13[31:0];
                end
                ADDR_S_13_DATA_1: begin
                    rdata <= int_S_13[63:32];
                end
                ADDR_S_14_DATA_0: begin
                    rdata <= int_S_14[31:0];
                end
                ADDR_S_14_DATA_1: begin
                    rdata <= int_S_14[63:32];
                end
                ADDR_S_15_DATA_0: begin
                    rdata <= int_S_15[31:0];
                end
                ADDR_S_15_DATA_1: begin
                    rdata <= int_S_15[63:32];
                end
                ADDR_S_16_DATA_0: begin
                    rdata <= int_S_16[31:0];
                end
                ADDR_S_16_DATA_1: begin
                    rdata <= int_S_16[63:32];
                end
                ADDR_S_17_DATA_0: begin
                    rdata <= int_S_17[31:0];
                end
                ADDR_S_17_DATA_1: begin
                    rdata <= int_S_17[63:32];
                end
                ADDR_S_18_DATA_0: begin
                    rdata <= int_S_18[31:0];
                end
                ADDR_S_18_DATA_1: begin
                    rdata <= int_S_18[63:32];
                end
                ADDR_S_19_DATA_0: begin
                    rdata <= int_S_19[31:0];
                end
                ADDR_S_19_DATA_1: begin
                    rdata <= int_S_19[63:32];
                end
                ADDR_S_20_DATA_0: begin
                    rdata <= int_S_20[31:0];
                end
                ADDR_S_20_DATA_1: begin
                    rdata <= int_S_20[63:32];
                end
                ADDR_S_21_DATA_0: begin
                    rdata <= int_S_21[31:0];
                end
                ADDR_S_21_DATA_1: begin
                    rdata <= int_S_21[63:32];
                end
                ADDR_S_22_DATA_0: begin
                    rdata <= int_S_22[31:0];
                end
                ADDR_S_22_DATA_1: begin
                    rdata <= int_S_22[63:32];
                end
                ADDR_S_23_DATA_0: begin
                    rdata <= int_S_23[31:0];
                end
                ADDR_S_23_DATA_1: begin
                    rdata <= int_S_23[63:32];
                end
                ADDR_S_24_DATA_0: begin
                    rdata <= int_S_24[31:0];
                end
                ADDR_S_24_DATA_1: begin
                    rdata <= int_S_24[63:32];
                end
                ADDR_S_25_DATA_0: begin
                    rdata <= int_S_25[31:0];
                end
                ADDR_S_25_DATA_1: begin
                    rdata <= int_S_25[63:32];
                end
                ADDR_S_26_DATA_0: begin
                    rdata <= int_S_26[31:0];
                end
                ADDR_S_26_DATA_1: begin
                    rdata <= int_S_26[63:32];
                end
                ADDR_S_27_DATA_0: begin
                    rdata <= int_S_27[31:0];
                end
                ADDR_S_27_DATA_1: begin
                    rdata <= int_S_27[63:32];
                end
                ADDR_S_28_DATA_0: begin
                    rdata <= int_S_28[31:0];
                end
                ADDR_S_28_DATA_1: begin
                    rdata <= int_S_28[63:32];
                end
                ADDR_S_29_DATA_0: begin
                    rdata <= int_S_29[31:0];
                end
                ADDR_S_29_DATA_1: begin
                    rdata <= int_S_29[63:32];
                end
                ADDR_S_30_DATA_0: begin
                    rdata <= int_S_30[31:0];
                end
                ADDR_S_30_DATA_1: begin
                    rdata <= int_S_30[63:32];
                end
                ADDR_S_31_DATA_0: begin
                    rdata <= int_S_31[31:0];
                end
                ADDR_S_31_DATA_1: begin
                    rdata <= int_S_31[63:32];
                end
                ADDR_S_32_DATA_0: begin
                    rdata <= int_S_32[31:0];
                end
                ADDR_S_32_DATA_1: begin
                    rdata <= int_S_32[63:32];
                end
                ADDR_S_33_DATA_0: begin
                    rdata <= int_S_33[31:0];
                end
                ADDR_S_33_DATA_1: begin
                    rdata <= int_S_33[63:32];
                end
                ADDR_S_34_DATA_0: begin
                    rdata <= int_S_34[31:0];
                end
                ADDR_S_34_DATA_1: begin
                    rdata <= int_S_34[63:32];
                end
                ADDR_S_35_DATA_0: begin
                    rdata <= int_S_35[31:0];
                end
                ADDR_S_35_DATA_1: begin
                    rdata <= int_S_35[63:32];
                end
                ADDR_S_36_DATA_0: begin
                    rdata <= int_S_36[31:0];
                end
                ADDR_S_36_DATA_1: begin
                    rdata <= int_S_36[63:32];
                end
                ADDR_S_37_DATA_0: begin
                    rdata <= int_S_37[31:0];
                end
                ADDR_S_37_DATA_1: begin
                    rdata <= int_S_37[63:32];
                end
                ADDR_S_38_DATA_0: begin
                    rdata <= int_S_38[31:0];
                end
                ADDR_S_38_DATA_1: begin
                    rdata <= int_S_38[63:32];
                end
                ADDR_S_39_DATA_0: begin
                    rdata <= int_S_39[31:0];
                end
                ADDR_S_39_DATA_1: begin
                    rdata <= int_S_39[63:32];
                end
                ADDR_S_40_DATA_0: begin
                    rdata <= int_S_40[31:0];
                end
                ADDR_S_40_DATA_1: begin
                    rdata <= int_S_40[63:32];
                end
                ADDR_S_41_DATA_0: begin
                    rdata <= int_S_41[31:0];
                end
                ADDR_S_41_DATA_1: begin
                    rdata <= int_S_41[63:32];
                end
                ADDR_S_42_DATA_0: begin
                    rdata <= int_S_42[31:0];
                end
                ADDR_S_42_DATA_1: begin
                    rdata <= int_S_42[63:32];
                end
                ADDR_S_43_DATA_0: begin
                    rdata <= int_S_43[31:0];
                end
                ADDR_S_43_DATA_1: begin
                    rdata <= int_S_43[63:32];
                end
                ADDR_S_44_DATA_0: begin
                    rdata <= int_S_44[31:0];
                end
                ADDR_S_44_DATA_1: begin
                    rdata <= int_S_44[63:32];
                end
                ADDR_S_45_DATA_0: begin
                    rdata <= int_S_45[31:0];
                end
                ADDR_S_45_DATA_1: begin
                    rdata <= int_S_45[63:32];
                end
                ADDR_S_46_DATA_0: begin
                    rdata <= int_S_46[31:0];
                end
                ADDR_S_46_DATA_1: begin
                    rdata <= int_S_46[63:32];
                end
                ADDR_S_47_DATA_0: begin
                    rdata <= int_S_47[31:0];
                end
                ADDR_S_47_DATA_1: begin
                    rdata <= int_S_47[63:32];
                end
                ADDR_S_48_DATA_0: begin
                    rdata <= int_S_48[31:0];
                end
                ADDR_S_48_DATA_1: begin
                    rdata <= int_S_48[63:32];
                end
                ADDR_S_49_DATA_0: begin
                    rdata <= int_S_49[31:0];
                end
                ADDR_S_49_DATA_1: begin
                    rdata <= int_S_49[63:32];
                end
                ADDR_S_50_DATA_0: begin
                    rdata <= int_S_50[31:0];
                end
                ADDR_S_50_DATA_1: begin
                    rdata <= int_S_50[63:32];
                end
                ADDR_S_51_DATA_0: begin
                    rdata <= int_S_51[31:0];
                end
                ADDR_S_51_DATA_1: begin
                    rdata <= int_S_51[63:32];
                end
                ADDR_S_52_DATA_0: begin
                    rdata <= int_S_52[31:0];
                end
                ADDR_S_52_DATA_1: begin
                    rdata <= int_S_52[63:32];
                end
                ADDR_S_53_DATA_0: begin
                    rdata <= int_S_53[31:0];
                end
                ADDR_S_53_DATA_1: begin
                    rdata <= int_S_53[63:32];
                end
                ADDR_S_54_DATA_0: begin
                    rdata <= int_S_54[31:0];
                end
                ADDR_S_54_DATA_1: begin
                    rdata <= int_S_54[63:32];
                end
                ADDR_S_55_DATA_0: begin
                    rdata <= int_S_55[31:0];
                end
                ADDR_S_55_DATA_1: begin
                    rdata <= int_S_55[63:32];
                end
                ADDR_S_56_DATA_0: begin
                    rdata <= int_S_56[31:0];
                end
                ADDR_S_56_DATA_1: begin
                    rdata <= int_S_56[63:32];
                end
                ADDR_S_57_DATA_0: begin
                    rdata <= int_S_57[31:0];
                end
                ADDR_S_57_DATA_1: begin
                    rdata <= int_S_57[63:32];
                end
                ADDR_S_58_DATA_0: begin
                    rdata <= int_S_58[31:0];
                end
                ADDR_S_58_DATA_1: begin
                    rdata <= int_S_58[63:32];
                end
                ADDR_S_59_DATA_0: begin
                    rdata <= int_S_59[31:0];
                end
                ADDR_S_59_DATA_1: begin
                    rdata <= int_S_59[63:32];
                end
                ADDR_S_60_DATA_0: begin
                    rdata <= int_S_60[31:0];
                end
                ADDR_S_60_DATA_1: begin
                    rdata <= int_S_60[63:32];
                end
                ADDR_S_61_DATA_0: begin
                    rdata <= int_S_61[31:0];
                end
                ADDR_S_61_DATA_1: begin
                    rdata <= int_S_61[63:32];
                end
                ADDR_S_62_DATA_0: begin
                    rdata <= int_S_62[31:0];
                end
                ADDR_S_62_DATA_1: begin
                    rdata <= int_S_62[63:32];
                end
                ADDR_S_63_DATA_0: begin
                    rdata <= int_S_63[31:0];
                end
                ADDR_S_63_DATA_1: begin
                    rdata <= int_S_63[63:32];
                end
                ADDR_S_64_DATA_0: begin
                    rdata <= int_S_64[31:0];
                end
                ADDR_S_64_DATA_1: begin
                    rdata <= int_S_64[63:32];
                end
                ADDR_S_65_DATA_0: begin
                    rdata <= int_S_65[31:0];
                end
                ADDR_S_65_DATA_1: begin
                    rdata <= int_S_65[63:32];
                end
                ADDR_S_66_DATA_0: begin
                    rdata <= int_S_66[31:0];
                end
                ADDR_S_66_DATA_1: begin
                    rdata <= int_S_66[63:32];
                end
                ADDR_S_67_DATA_0: begin
                    rdata <= int_S_67[31:0];
                end
                ADDR_S_67_DATA_1: begin
                    rdata <= int_S_67[63:32];
                end
                ADDR_S_68_DATA_0: begin
                    rdata <= int_S_68[31:0];
                end
                ADDR_S_68_DATA_1: begin
                    rdata <= int_S_68[63:32];
                end
                ADDR_S_69_DATA_0: begin
                    rdata <= int_S_69[31:0];
                end
                ADDR_S_69_DATA_1: begin
                    rdata <= int_S_69[63:32];
                end
                ADDR_S_70_DATA_0: begin
                    rdata <= int_S_70[31:0];
                end
                ADDR_S_70_DATA_1: begin
                    rdata <= int_S_70[63:32];
                end
                ADDR_S_71_DATA_0: begin
                    rdata <= int_S_71[31:0];
                end
                ADDR_S_71_DATA_1: begin
                    rdata <= int_S_71[63:32];
                end
                ADDR_S_72_DATA_0: begin
                    rdata <= int_S_72[31:0];
                end
                ADDR_S_72_DATA_1: begin
                    rdata <= int_S_72[63:32];
                end
                ADDR_S_73_DATA_0: begin
                    rdata <= int_S_73[31:0];
                end
                ADDR_S_73_DATA_1: begin
                    rdata <= int_S_73[63:32];
                end
                ADDR_S_74_DATA_0: begin
                    rdata <= int_S_74[31:0];
                end
                ADDR_S_74_DATA_1: begin
                    rdata <= int_S_74[63:32];
                end
                ADDR_S_75_DATA_0: begin
                    rdata <= int_S_75[31:0];
                end
                ADDR_S_75_DATA_1: begin
                    rdata <= int_S_75[63:32];
                end
                ADDR_S_76_DATA_0: begin
                    rdata <= int_S_76[31:0];
                end
                ADDR_S_76_DATA_1: begin
                    rdata <= int_S_76[63:32];
                end
                ADDR_S_77_DATA_0: begin
                    rdata <= int_S_77[31:0];
                end
                ADDR_S_77_DATA_1: begin
                    rdata <= int_S_77[63:32];
                end
                ADDR_S_78_DATA_0: begin
                    rdata <= int_S_78[31:0];
                end
                ADDR_S_78_DATA_1: begin
                    rdata <= int_S_78[63:32];
                end
                ADDR_S_79_DATA_0: begin
                    rdata <= int_S_79[31:0];
                end
                ADDR_S_79_DATA_1: begin
                    rdata <= int_S_79[63:32];
                end
                ADDR_S_80_DATA_0: begin
                    rdata <= int_S_80[31:0];
                end
                ADDR_S_80_DATA_1: begin
                    rdata <= int_S_80[63:32];
                end
                ADDR_S_81_DATA_0: begin
                    rdata <= int_S_81[31:0];
                end
                ADDR_S_81_DATA_1: begin
                    rdata <= int_S_81[63:32];
                end
                ADDR_S_82_DATA_0: begin
                    rdata <= int_S_82[31:0];
                end
                ADDR_S_82_DATA_1: begin
                    rdata <= int_S_82[63:32];
                end
                ADDR_S_83_DATA_0: begin
                    rdata <= int_S_83[31:0];
                end
                ADDR_S_83_DATA_1: begin
                    rdata <= int_S_83[63:32];
                end
                ADDR_S_84_DATA_0: begin
                    rdata <= int_S_84[31:0];
                end
                ADDR_S_84_DATA_1: begin
                    rdata <= int_S_84[63:32];
                end
                ADDR_S_85_DATA_0: begin
                    rdata <= int_S_85[31:0];
                end
                ADDR_S_85_DATA_1: begin
                    rdata <= int_S_85[63:32];
                end
                ADDR_S_86_DATA_0: begin
                    rdata <= int_S_86[31:0];
                end
                ADDR_S_86_DATA_1: begin
                    rdata <= int_S_86[63:32];
                end
                ADDR_S_87_DATA_0: begin
                    rdata <= int_S_87[31:0];
                end
                ADDR_S_87_DATA_1: begin
                    rdata <= int_S_87[63:32];
                end
                ADDR_S_88_DATA_0: begin
                    rdata <= int_S_88[31:0];
                end
                ADDR_S_88_DATA_1: begin
                    rdata <= int_S_88[63:32];
                end
                ADDR_S_89_DATA_0: begin
                    rdata <= int_S_89[31:0];
                end
                ADDR_S_89_DATA_1: begin
                    rdata <= int_S_89[63:32];
                end
                ADDR_S_90_DATA_0: begin
                    rdata <= int_S_90[31:0];
                end
                ADDR_S_90_DATA_1: begin
                    rdata <= int_S_90[63:32];
                end
                ADDR_S_91_DATA_0: begin
                    rdata <= int_S_91[31:0];
                end
                ADDR_S_91_DATA_1: begin
                    rdata <= int_S_91[63:32];
                end
                ADDR_S_92_DATA_0: begin
                    rdata <= int_S_92[31:0];
                end
                ADDR_S_92_DATA_1: begin
                    rdata <= int_S_92[63:32];
                end
                ADDR_S_93_DATA_0: begin
                    rdata <= int_S_93[31:0];
                end
                ADDR_S_93_DATA_1: begin
                    rdata <= int_S_93[63:32];
                end
                ADDR_S_94_DATA_0: begin
                    rdata <= int_S_94[31:0];
                end
                ADDR_S_94_DATA_1: begin
                    rdata <= int_S_94[63:32];
                end
                ADDR_S_95_DATA_0: begin
                    rdata <= int_S_95[31:0];
                end
                ADDR_S_95_DATA_1: begin
                    rdata <= int_S_95[63:32];
                end
                ADDR_S_96_DATA_0: begin
                    rdata <= int_S_96[31:0];
                end
                ADDR_S_96_DATA_1: begin
                    rdata <= int_S_96[63:32];
                end
                ADDR_S_97_DATA_0: begin
                    rdata <= int_S_97[31:0];
                end
                ADDR_S_97_DATA_1: begin
                    rdata <= int_S_97[63:32];
                end
                ADDR_S_98_DATA_0: begin
                    rdata <= int_S_98[31:0];
                end
                ADDR_S_98_DATA_1: begin
                    rdata <= int_S_98[63:32];
                end
                ADDR_S_99_DATA_0: begin
                    rdata <= int_S_99[31:0];
                end
                ADDR_S_99_DATA_1: begin
                    rdata <= int_S_99[63:32];
                end
                ADDR_S0_DATA_0: begin
                    rdata <= int_S0[31:0];
                end
                ADDR_S0_DATA_1: begin
                    rdata <= int_S0[63:32];
                end
                ADDR_R_DATA_0: begin
                    rdata <= int_r[31:0];
                end
                ADDR_R_DATA_1: begin
                    rdata <= int_r[63:32];
                end
                ADDR_SIGMA_DATA_0: begin
                    rdata <= int_sigma[31:0];
                end
                ADDR_SIGMA_DATA_1: begin
                    rdata <= int_sigma[63:32];
                end
                ADDR_T_DATA_0: begin
                    rdata <= int_T[31:0];
                end
                ADDR_T_DATA_1: begin
                    rdata <= int_T[63:32];
                end
                ADDR_RANDOM_INCREMENTS_0_DATA_0: begin
                    rdata <= int_random_increments_0[31:0];
                end
                ADDR_RANDOM_INCREMENTS_0_DATA_1: begin
                    rdata <= int_random_increments_0[63:32];
                end
                ADDR_RANDOM_INCREMENTS_1_DATA_0: begin
                    rdata <= int_random_increments_1[31:0];
                end
                ADDR_RANDOM_INCREMENTS_1_DATA_1: begin
                    rdata <= int_random_increments_1[63:32];
                end
                ADDR_RANDOM_INCREMENTS_2_DATA_0: begin
                    rdata <= int_random_increments_2[31:0];
                end
                ADDR_RANDOM_INCREMENTS_2_DATA_1: begin
                    rdata <= int_random_increments_2[63:32];
                end
                ADDR_RANDOM_INCREMENTS_3_DATA_0: begin
                    rdata <= int_random_increments_3[31:0];
                end
                ADDR_RANDOM_INCREMENTS_3_DATA_1: begin
                    rdata <= int_random_increments_3[63:32];
                end
                ADDR_RANDOM_INCREMENTS_4_DATA_0: begin
                    rdata <= int_random_increments_4[31:0];
                end
                ADDR_RANDOM_INCREMENTS_4_DATA_1: begin
                    rdata <= int_random_increments_4[63:32];
                end
                ADDR_RANDOM_INCREMENTS_5_DATA_0: begin
                    rdata <= int_random_increments_5[31:0];
                end
                ADDR_RANDOM_INCREMENTS_5_DATA_1: begin
                    rdata <= int_random_increments_5[63:32];
                end
                ADDR_RANDOM_INCREMENTS_6_DATA_0: begin
                    rdata <= int_random_increments_6[31:0];
                end
                ADDR_RANDOM_INCREMENTS_6_DATA_1: begin
                    rdata <= int_random_increments_6[63:32];
                end
                ADDR_RANDOM_INCREMENTS_7_DATA_0: begin
                    rdata <= int_random_increments_7[31:0];
                end
                ADDR_RANDOM_INCREMENTS_7_DATA_1: begin
                    rdata <= int_random_increments_7[63:32];
                end
                ADDR_RANDOM_INCREMENTS_8_DATA_0: begin
                    rdata <= int_random_increments_8[31:0];
                end
                ADDR_RANDOM_INCREMENTS_8_DATA_1: begin
                    rdata <= int_random_increments_8[63:32];
                end
                ADDR_RANDOM_INCREMENTS_9_DATA_0: begin
                    rdata <= int_random_increments_9[31:0];
                end
                ADDR_RANDOM_INCREMENTS_9_DATA_1: begin
                    rdata <= int_random_increments_9[63:32];
                end
                ADDR_RANDOM_INCREMENTS_10_DATA_0: begin
                    rdata <= int_random_increments_10[31:0];
                end
                ADDR_RANDOM_INCREMENTS_10_DATA_1: begin
                    rdata <= int_random_increments_10[63:32];
                end
                ADDR_RANDOM_INCREMENTS_11_DATA_0: begin
                    rdata <= int_random_increments_11[31:0];
                end
                ADDR_RANDOM_INCREMENTS_11_DATA_1: begin
                    rdata <= int_random_increments_11[63:32];
                end
                ADDR_RANDOM_INCREMENTS_12_DATA_0: begin
                    rdata <= int_random_increments_12[31:0];
                end
                ADDR_RANDOM_INCREMENTS_12_DATA_1: begin
                    rdata <= int_random_increments_12[63:32];
                end
                ADDR_RANDOM_INCREMENTS_13_DATA_0: begin
                    rdata <= int_random_increments_13[31:0];
                end
                ADDR_RANDOM_INCREMENTS_13_DATA_1: begin
                    rdata <= int_random_increments_13[63:32];
                end
                ADDR_RANDOM_INCREMENTS_14_DATA_0: begin
                    rdata <= int_random_increments_14[31:0];
                end
                ADDR_RANDOM_INCREMENTS_14_DATA_1: begin
                    rdata <= int_random_increments_14[63:32];
                end
                ADDR_RANDOM_INCREMENTS_15_DATA_0: begin
                    rdata <= int_random_increments_15[31:0];
                end
                ADDR_RANDOM_INCREMENTS_15_DATA_1: begin
                    rdata <= int_random_increments_15[63:32];
                end
                ADDR_RANDOM_INCREMENTS_16_DATA_0: begin
                    rdata <= int_random_increments_16[31:0];
                end
                ADDR_RANDOM_INCREMENTS_16_DATA_1: begin
                    rdata <= int_random_increments_16[63:32];
                end
                ADDR_RANDOM_INCREMENTS_17_DATA_0: begin
                    rdata <= int_random_increments_17[31:0];
                end
                ADDR_RANDOM_INCREMENTS_17_DATA_1: begin
                    rdata <= int_random_increments_17[63:32];
                end
                ADDR_RANDOM_INCREMENTS_18_DATA_0: begin
                    rdata <= int_random_increments_18[31:0];
                end
                ADDR_RANDOM_INCREMENTS_18_DATA_1: begin
                    rdata <= int_random_increments_18[63:32];
                end
                ADDR_RANDOM_INCREMENTS_19_DATA_0: begin
                    rdata <= int_random_increments_19[31:0];
                end
                ADDR_RANDOM_INCREMENTS_19_DATA_1: begin
                    rdata <= int_random_increments_19[63:32];
                end
                ADDR_RANDOM_INCREMENTS_20_DATA_0: begin
                    rdata <= int_random_increments_20[31:0];
                end
                ADDR_RANDOM_INCREMENTS_20_DATA_1: begin
                    rdata <= int_random_increments_20[63:32];
                end
                ADDR_RANDOM_INCREMENTS_21_DATA_0: begin
                    rdata <= int_random_increments_21[31:0];
                end
                ADDR_RANDOM_INCREMENTS_21_DATA_1: begin
                    rdata <= int_random_increments_21[63:32];
                end
                ADDR_RANDOM_INCREMENTS_22_DATA_0: begin
                    rdata <= int_random_increments_22[31:0];
                end
                ADDR_RANDOM_INCREMENTS_22_DATA_1: begin
                    rdata <= int_random_increments_22[63:32];
                end
                ADDR_RANDOM_INCREMENTS_23_DATA_0: begin
                    rdata <= int_random_increments_23[31:0];
                end
                ADDR_RANDOM_INCREMENTS_23_DATA_1: begin
                    rdata <= int_random_increments_23[63:32];
                end
                ADDR_RANDOM_INCREMENTS_24_DATA_0: begin
                    rdata <= int_random_increments_24[31:0];
                end
                ADDR_RANDOM_INCREMENTS_24_DATA_1: begin
                    rdata <= int_random_increments_24[63:32];
                end
                ADDR_RANDOM_INCREMENTS_25_DATA_0: begin
                    rdata <= int_random_increments_25[31:0];
                end
                ADDR_RANDOM_INCREMENTS_25_DATA_1: begin
                    rdata <= int_random_increments_25[63:32];
                end
                ADDR_RANDOM_INCREMENTS_26_DATA_0: begin
                    rdata <= int_random_increments_26[31:0];
                end
                ADDR_RANDOM_INCREMENTS_26_DATA_1: begin
                    rdata <= int_random_increments_26[63:32];
                end
                ADDR_RANDOM_INCREMENTS_27_DATA_0: begin
                    rdata <= int_random_increments_27[31:0];
                end
                ADDR_RANDOM_INCREMENTS_27_DATA_1: begin
                    rdata <= int_random_increments_27[63:32];
                end
                ADDR_RANDOM_INCREMENTS_28_DATA_0: begin
                    rdata <= int_random_increments_28[31:0];
                end
                ADDR_RANDOM_INCREMENTS_28_DATA_1: begin
                    rdata <= int_random_increments_28[63:32];
                end
                ADDR_RANDOM_INCREMENTS_29_DATA_0: begin
                    rdata <= int_random_increments_29[31:0];
                end
                ADDR_RANDOM_INCREMENTS_29_DATA_1: begin
                    rdata <= int_random_increments_29[63:32];
                end
                ADDR_RANDOM_INCREMENTS_30_DATA_0: begin
                    rdata <= int_random_increments_30[31:0];
                end
                ADDR_RANDOM_INCREMENTS_30_DATA_1: begin
                    rdata <= int_random_increments_30[63:32];
                end
                ADDR_RANDOM_INCREMENTS_31_DATA_0: begin
                    rdata <= int_random_increments_31[31:0];
                end
                ADDR_RANDOM_INCREMENTS_31_DATA_1: begin
                    rdata <= int_random_increments_31[63:32];
                end
                ADDR_RANDOM_INCREMENTS_32_DATA_0: begin
                    rdata <= int_random_increments_32[31:0];
                end
                ADDR_RANDOM_INCREMENTS_32_DATA_1: begin
                    rdata <= int_random_increments_32[63:32];
                end
                ADDR_RANDOM_INCREMENTS_33_DATA_0: begin
                    rdata <= int_random_increments_33[31:0];
                end
                ADDR_RANDOM_INCREMENTS_33_DATA_1: begin
                    rdata <= int_random_increments_33[63:32];
                end
                ADDR_RANDOM_INCREMENTS_34_DATA_0: begin
                    rdata <= int_random_increments_34[31:0];
                end
                ADDR_RANDOM_INCREMENTS_34_DATA_1: begin
                    rdata <= int_random_increments_34[63:32];
                end
                ADDR_RANDOM_INCREMENTS_35_DATA_0: begin
                    rdata <= int_random_increments_35[31:0];
                end
                ADDR_RANDOM_INCREMENTS_35_DATA_1: begin
                    rdata <= int_random_increments_35[63:32];
                end
                ADDR_RANDOM_INCREMENTS_36_DATA_0: begin
                    rdata <= int_random_increments_36[31:0];
                end
                ADDR_RANDOM_INCREMENTS_36_DATA_1: begin
                    rdata <= int_random_increments_36[63:32];
                end
                ADDR_RANDOM_INCREMENTS_37_DATA_0: begin
                    rdata <= int_random_increments_37[31:0];
                end
                ADDR_RANDOM_INCREMENTS_37_DATA_1: begin
                    rdata <= int_random_increments_37[63:32];
                end
                ADDR_RANDOM_INCREMENTS_38_DATA_0: begin
                    rdata <= int_random_increments_38[31:0];
                end
                ADDR_RANDOM_INCREMENTS_38_DATA_1: begin
                    rdata <= int_random_increments_38[63:32];
                end
                ADDR_RANDOM_INCREMENTS_39_DATA_0: begin
                    rdata <= int_random_increments_39[31:0];
                end
                ADDR_RANDOM_INCREMENTS_39_DATA_1: begin
                    rdata <= int_random_increments_39[63:32];
                end
                ADDR_RANDOM_INCREMENTS_40_DATA_0: begin
                    rdata <= int_random_increments_40[31:0];
                end
                ADDR_RANDOM_INCREMENTS_40_DATA_1: begin
                    rdata <= int_random_increments_40[63:32];
                end
                ADDR_RANDOM_INCREMENTS_41_DATA_0: begin
                    rdata <= int_random_increments_41[31:0];
                end
                ADDR_RANDOM_INCREMENTS_41_DATA_1: begin
                    rdata <= int_random_increments_41[63:32];
                end
                ADDR_RANDOM_INCREMENTS_42_DATA_0: begin
                    rdata <= int_random_increments_42[31:0];
                end
                ADDR_RANDOM_INCREMENTS_42_DATA_1: begin
                    rdata <= int_random_increments_42[63:32];
                end
                ADDR_RANDOM_INCREMENTS_43_DATA_0: begin
                    rdata <= int_random_increments_43[31:0];
                end
                ADDR_RANDOM_INCREMENTS_43_DATA_1: begin
                    rdata <= int_random_increments_43[63:32];
                end
                ADDR_RANDOM_INCREMENTS_44_DATA_0: begin
                    rdata <= int_random_increments_44[31:0];
                end
                ADDR_RANDOM_INCREMENTS_44_DATA_1: begin
                    rdata <= int_random_increments_44[63:32];
                end
                ADDR_RANDOM_INCREMENTS_45_DATA_0: begin
                    rdata <= int_random_increments_45[31:0];
                end
                ADDR_RANDOM_INCREMENTS_45_DATA_1: begin
                    rdata <= int_random_increments_45[63:32];
                end
                ADDR_RANDOM_INCREMENTS_46_DATA_0: begin
                    rdata <= int_random_increments_46[31:0];
                end
                ADDR_RANDOM_INCREMENTS_46_DATA_1: begin
                    rdata <= int_random_increments_46[63:32];
                end
                ADDR_RANDOM_INCREMENTS_47_DATA_0: begin
                    rdata <= int_random_increments_47[31:0];
                end
                ADDR_RANDOM_INCREMENTS_47_DATA_1: begin
                    rdata <= int_random_increments_47[63:32];
                end
                ADDR_RANDOM_INCREMENTS_48_DATA_0: begin
                    rdata <= int_random_increments_48[31:0];
                end
                ADDR_RANDOM_INCREMENTS_48_DATA_1: begin
                    rdata <= int_random_increments_48[63:32];
                end
                ADDR_RANDOM_INCREMENTS_49_DATA_0: begin
                    rdata <= int_random_increments_49[31:0];
                end
                ADDR_RANDOM_INCREMENTS_49_DATA_1: begin
                    rdata <= int_random_increments_49[63:32];
                end
                ADDR_RANDOM_INCREMENTS_50_DATA_0: begin
                    rdata <= int_random_increments_50[31:0];
                end
                ADDR_RANDOM_INCREMENTS_50_DATA_1: begin
                    rdata <= int_random_increments_50[63:32];
                end
                ADDR_RANDOM_INCREMENTS_51_DATA_0: begin
                    rdata <= int_random_increments_51[31:0];
                end
                ADDR_RANDOM_INCREMENTS_51_DATA_1: begin
                    rdata <= int_random_increments_51[63:32];
                end
                ADDR_RANDOM_INCREMENTS_52_DATA_0: begin
                    rdata <= int_random_increments_52[31:0];
                end
                ADDR_RANDOM_INCREMENTS_52_DATA_1: begin
                    rdata <= int_random_increments_52[63:32];
                end
                ADDR_RANDOM_INCREMENTS_53_DATA_0: begin
                    rdata <= int_random_increments_53[31:0];
                end
                ADDR_RANDOM_INCREMENTS_53_DATA_1: begin
                    rdata <= int_random_increments_53[63:32];
                end
                ADDR_RANDOM_INCREMENTS_54_DATA_0: begin
                    rdata <= int_random_increments_54[31:0];
                end
                ADDR_RANDOM_INCREMENTS_54_DATA_1: begin
                    rdata <= int_random_increments_54[63:32];
                end
                ADDR_RANDOM_INCREMENTS_55_DATA_0: begin
                    rdata <= int_random_increments_55[31:0];
                end
                ADDR_RANDOM_INCREMENTS_55_DATA_1: begin
                    rdata <= int_random_increments_55[63:32];
                end
                ADDR_RANDOM_INCREMENTS_56_DATA_0: begin
                    rdata <= int_random_increments_56[31:0];
                end
                ADDR_RANDOM_INCREMENTS_56_DATA_1: begin
                    rdata <= int_random_increments_56[63:32];
                end
                ADDR_RANDOM_INCREMENTS_57_DATA_0: begin
                    rdata <= int_random_increments_57[31:0];
                end
                ADDR_RANDOM_INCREMENTS_57_DATA_1: begin
                    rdata <= int_random_increments_57[63:32];
                end
                ADDR_RANDOM_INCREMENTS_58_DATA_0: begin
                    rdata <= int_random_increments_58[31:0];
                end
                ADDR_RANDOM_INCREMENTS_58_DATA_1: begin
                    rdata <= int_random_increments_58[63:32];
                end
                ADDR_RANDOM_INCREMENTS_59_DATA_0: begin
                    rdata <= int_random_increments_59[31:0];
                end
                ADDR_RANDOM_INCREMENTS_59_DATA_1: begin
                    rdata <= int_random_increments_59[63:32];
                end
                ADDR_RANDOM_INCREMENTS_60_DATA_0: begin
                    rdata <= int_random_increments_60[31:0];
                end
                ADDR_RANDOM_INCREMENTS_60_DATA_1: begin
                    rdata <= int_random_increments_60[63:32];
                end
                ADDR_RANDOM_INCREMENTS_61_DATA_0: begin
                    rdata <= int_random_increments_61[31:0];
                end
                ADDR_RANDOM_INCREMENTS_61_DATA_1: begin
                    rdata <= int_random_increments_61[63:32];
                end
                ADDR_RANDOM_INCREMENTS_62_DATA_0: begin
                    rdata <= int_random_increments_62[31:0];
                end
                ADDR_RANDOM_INCREMENTS_62_DATA_1: begin
                    rdata <= int_random_increments_62[63:32];
                end
                ADDR_RANDOM_INCREMENTS_63_DATA_0: begin
                    rdata <= int_random_increments_63[31:0];
                end
                ADDR_RANDOM_INCREMENTS_63_DATA_1: begin
                    rdata <= int_random_increments_63[63:32];
                end
                ADDR_RANDOM_INCREMENTS_64_DATA_0: begin
                    rdata <= int_random_increments_64[31:0];
                end
                ADDR_RANDOM_INCREMENTS_64_DATA_1: begin
                    rdata <= int_random_increments_64[63:32];
                end
                ADDR_RANDOM_INCREMENTS_65_DATA_0: begin
                    rdata <= int_random_increments_65[31:0];
                end
                ADDR_RANDOM_INCREMENTS_65_DATA_1: begin
                    rdata <= int_random_increments_65[63:32];
                end
                ADDR_RANDOM_INCREMENTS_66_DATA_0: begin
                    rdata <= int_random_increments_66[31:0];
                end
                ADDR_RANDOM_INCREMENTS_66_DATA_1: begin
                    rdata <= int_random_increments_66[63:32];
                end
                ADDR_RANDOM_INCREMENTS_67_DATA_0: begin
                    rdata <= int_random_increments_67[31:0];
                end
                ADDR_RANDOM_INCREMENTS_67_DATA_1: begin
                    rdata <= int_random_increments_67[63:32];
                end
                ADDR_RANDOM_INCREMENTS_68_DATA_0: begin
                    rdata <= int_random_increments_68[31:0];
                end
                ADDR_RANDOM_INCREMENTS_68_DATA_1: begin
                    rdata <= int_random_increments_68[63:32];
                end
                ADDR_RANDOM_INCREMENTS_69_DATA_0: begin
                    rdata <= int_random_increments_69[31:0];
                end
                ADDR_RANDOM_INCREMENTS_69_DATA_1: begin
                    rdata <= int_random_increments_69[63:32];
                end
                ADDR_RANDOM_INCREMENTS_70_DATA_0: begin
                    rdata <= int_random_increments_70[31:0];
                end
                ADDR_RANDOM_INCREMENTS_70_DATA_1: begin
                    rdata <= int_random_increments_70[63:32];
                end
                ADDR_RANDOM_INCREMENTS_71_DATA_0: begin
                    rdata <= int_random_increments_71[31:0];
                end
                ADDR_RANDOM_INCREMENTS_71_DATA_1: begin
                    rdata <= int_random_increments_71[63:32];
                end
                ADDR_RANDOM_INCREMENTS_72_DATA_0: begin
                    rdata <= int_random_increments_72[31:0];
                end
                ADDR_RANDOM_INCREMENTS_72_DATA_1: begin
                    rdata <= int_random_increments_72[63:32];
                end
                ADDR_RANDOM_INCREMENTS_73_DATA_0: begin
                    rdata <= int_random_increments_73[31:0];
                end
                ADDR_RANDOM_INCREMENTS_73_DATA_1: begin
                    rdata <= int_random_increments_73[63:32];
                end
                ADDR_RANDOM_INCREMENTS_74_DATA_0: begin
                    rdata <= int_random_increments_74[31:0];
                end
                ADDR_RANDOM_INCREMENTS_74_DATA_1: begin
                    rdata <= int_random_increments_74[63:32];
                end
                ADDR_RANDOM_INCREMENTS_75_DATA_0: begin
                    rdata <= int_random_increments_75[31:0];
                end
                ADDR_RANDOM_INCREMENTS_75_DATA_1: begin
                    rdata <= int_random_increments_75[63:32];
                end
                ADDR_RANDOM_INCREMENTS_76_DATA_0: begin
                    rdata <= int_random_increments_76[31:0];
                end
                ADDR_RANDOM_INCREMENTS_76_DATA_1: begin
                    rdata <= int_random_increments_76[63:32];
                end
                ADDR_RANDOM_INCREMENTS_77_DATA_0: begin
                    rdata <= int_random_increments_77[31:0];
                end
                ADDR_RANDOM_INCREMENTS_77_DATA_1: begin
                    rdata <= int_random_increments_77[63:32];
                end
                ADDR_RANDOM_INCREMENTS_78_DATA_0: begin
                    rdata <= int_random_increments_78[31:0];
                end
                ADDR_RANDOM_INCREMENTS_78_DATA_1: begin
                    rdata <= int_random_increments_78[63:32];
                end
                ADDR_RANDOM_INCREMENTS_79_DATA_0: begin
                    rdata <= int_random_increments_79[31:0];
                end
                ADDR_RANDOM_INCREMENTS_79_DATA_1: begin
                    rdata <= int_random_increments_79[63:32];
                end
                ADDR_RANDOM_INCREMENTS_80_DATA_0: begin
                    rdata <= int_random_increments_80[31:0];
                end
                ADDR_RANDOM_INCREMENTS_80_DATA_1: begin
                    rdata <= int_random_increments_80[63:32];
                end
                ADDR_RANDOM_INCREMENTS_81_DATA_0: begin
                    rdata <= int_random_increments_81[31:0];
                end
                ADDR_RANDOM_INCREMENTS_81_DATA_1: begin
                    rdata <= int_random_increments_81[63:32];
                end
                ADDR_RANDOM_INCREMENTS_82_DATA_0: begin
                    rdata <= int_random_increments_82[31:0];
                end
                ADDR_RANDOM_INCREMENTS_82_DATA_1: begin
                    rdata <= int_random_increments_82[63:32];
                end
                ADDR_RANDOM_INCREMENTS_83_DATA_0: begin
                    rdata <= int_random_increments_83[31:0];
                end
                ADDR_RANDOM_INCREMENTS_83_DATA_1: begin
                    rdata <= int_random_increments_83[63:32];
                end
                ADDR_RANDOM_INCREMENTS_84_DATA_0: begin
                    rdata <= int_random_increments_84[31:0];
                end
                ADDR_RANDOM_INCREMENTS_84_DATA_1: begin
                    rdata <= int_random_increments_84[63:32];
                end
                ADDR_RANDOM_INCREMENTS_85_DATA_0: begin
                    rdata <= int_random_increments_85[31:0];
                end
                ADDR_RANDOM_INCREMENTS_85_DATA_1: begin
                    rdata <= int_random_increments_85[63:32];
                end
                ADDR_RANDOM_INCREMENTS_86_DATA_0: begin
                    rdata <= int_random_increments_86[31:0];
                end
                ADDR_RANDOM_INCREMENTS_86_DATA_1: begin
                    rdata <= int_random_increments_86[63:32];
                end
                ADDR_RANDOM_INCREMENTS_87_DATA_0: begin
                    rdata <= int_random_increments_87[31:0];
                end
                ADDR_RANDOM_INCREMENTS_87_DATA_1: begin
                    rdata <= int_random_increments_87[63:32];
                end
                ADDR_RANDOM_INCREMENTS_88_DATA_0: begin
                    rdata <= int_random_increments_88[31:0];
                end
                ADDR_RANDOM_INCREMENTS_88_DATA_1: begin
                    rdata <= int_random_increments_88[63:32];
                end
                ADDR_RANDOM_INCREMENTS_89_DATA_0: begin
                    rdata <= int_random_increments_89[31:0];
                end
                ADDR_RANDOM_INCREMENTS_89_DATA_1: begin
                    rdata <= int_random_increments_89[63:32];
                end
                ADDR_RANDOM_INCREMENTS_90_DATA_0: begin
                    rdata <= int_random_increments_90[31:0];
                end
                ADDR_RANDOM_INCREMENTS_90_DATA_1: begin
                    rdata <= int_random_increments_90[63:32];
                end
                ADDR_RANDOM_INCREMENTS_91_DATA_0: begin
                    rdata <= int_random_increments_91[31:0];
                end
                ADDR_RANDOM_INCREMENTS_91_DATA_1: begin
                    rdata <= int_random_increments_91[63:32];
                end
                ADDR_RANDOM_INCREMENTS_92_DATA_0: begin
                    rdata <= int_random_increments_92[31:0];
                end
                ADDR_RANDOM_INCREMENTS_92_DATA_1: begin
                    rdata <= int_random_increments_92[63:32];
                end
                ADDR_RANDOM_INCREMENTS_93_DATA_0: begin
                    rdata <= int_random_increments_93[31:0];
                end
                ADDR_RANDOM_INCREMENTS_93_DATA_1: begin
                    rdata <= int_random_increments_93[63:32];
                end
                ADDR_RANDOM_INCREMENTS_94_DATA_0: begin
                    rdata <= int_random_increments_94[31:0];
                end
                ADDR_RANDOM_INCREMENTS_94_DATA_1: begin
                    rdata <= int_random_increments_94[63:32];
                end
                ADDR_RANDOM_INCREMENTS_95_DATA_0: begin
                    rdata <= int_random_increments_95[31:0];
                end
                ADDR_RANDOM_INCREMENTS_95_DATA_1: begin
                    rdata <= int_random_increments_95[63:32];
                end
                ADDR_RANDOM_INCREMENTS_96_DATA_0: begin
                    rdata <= int_random_increments_96[31:0];
                end
                ADDR_RANDOM_INCREMENTS_96_DATA_1: begin
                    rdata <= int_random_increments_96[63:32];
                end
                ADDR_RANDOM_INCREMENTS_97_DATA_0: begin
                    rdata <= int_random_increments_97[31:0];
                end
                ADDR_RANDOM_INCREMENTS_97_DATA_1: begin
                    rdata <= int_random_increments_97[63:32];
                end
                ADDR_RANDOM_INCREMENTS_98_DATA_0: begin
                    rdata <= int_random_increments_98[31:0];
                end
                ADDR_RANDOM_INCREMENTS_98_DATA_1: begin
                    rdata <= int_random_increments_98[63:32];
                end
                ADDR_RANDOM_INCREMENTS_99_DATA_0: begin
                    rdata <= int_random_increments_99[31:0];
                end
                ADDR_RANDOM_INCREMENTS_99_DATA_1: begin
                    rdata <= int_random_increments_99[63:32];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign interrupt            = int_interrupt;
assign ap_start             = int_ap_start;
assign task_ap_done         = (ap_done && !auto_restart_status) || auto_restart_done;
assign task_ap_ready        = ap_ready && !int_auto_restart;
assign ap_continue          = int_ap_continue || auto_restart_status;
assign S_0                  = int_S_0;
assign S_1                  = int_S_1;
assign S_2                  = int_S_2;
assign S_3                  = int_S_3;
assign S_4                  = int_S_4;
assign S_5                  = int_S_5;
assign S_6                  = int_S_6;
assign S_7                  = int_S_7;
assign S_8                  = int_S_8;
assign S_9                  = int_S_9;
assign S_10                 = int_S_10;
assign S_11                 = int_S_11;
assign S_12                 = int_S_12;
assign S_13                 = int_S_13;
assign S_14                 = int_S_14;
assign S_15                 = int_S_15;
assign S_16                 = int_S_16;
assign S_17                 = int_S_17;
assign S_18                 = int_S_18;
assign S_19                 = int_S_19;
assign S_20                 = int_S_20;
assign S_21                 = int_S_21;
assign S_22                 = int_S_22;
assign S_23                 = int_S_23;
assign S_24                 = int_S_24;
assign S_25                 = int_S_25;
assign S_26                 = int_S_26;
assign S_27                 = int_S_27;
assign S_28                 = int_S_28;
assign S_29                 = int_S_29;
assign S_30                 = int_S_30;
assign S_31                 = int_S_31;
assign S_32                 = int_S_32;
assign S_33                 = int_S_33;
assign S_34                 = int_S_34;
assign S_35                 = int_S_35;
assign S_36                 = int_S_36;
assign S_37                 = int_S_37;
assign S_38                 = int_S_38;
assign S_39                 = int_S_39;
assign S_40                 = int_S_40;
assign S_41                 = int_S_41;
assign S_42                 = int_S_42;
assign S_43                 = int_S_43;
assign S_44                 = int_S_44;
assign S_45                 = int_S_45;
assign S_46                 = int_S_46;
assign S_47                 = int_S_47;
assign S_48                 = int_S_48;
assign S_49                 = int_S_49;
assign S_50                 = int_S_50;
assign S_51                 = int_S_51;
assign S_52                 = int_S_52;
assign S_53                 = int_S_53;
assign S_54                 = int_S_54;
assign S_55                 = int_S_55;
assign S_56                 = int_S_56;
assign S_57                 = int_S_57;
assign S_58                 = int_S_58;
assign S_59                 = int_S_59;
assign S_60                 = int_S_60;
assign S_61                 = int_S_61;
assign S_62                 = int_S_62;
assign S_63                 = int_S_63;
assign S_64                 = int_S_64;
assign S_65                 = int_S_65;
assign S_66                 = int_S_66;
assign S_67                 = int_S_67;
assign S_68                 = int_S_68;
assign S_69                 = int_S_69;
assign S_70                 = int_S_70;
assign S_71                 = int_S_71;
assign S_72                 = int_S_72;
assign S_73                 = int_S_73;
assign S_74                 = int_S_74;
assign S_75                 = int_S_75;
assign S_76                 = int_S_76;
assign S_77                 = int_S_77;
assign S_78                 = int_S_78;
assign S_79                 = int_S_79;
assign S_80                 = int_S_80;
assign S_81                 = int_S_81;
assign S_82                 = int_S_82;
assign S_83                 = int_S_83;
assign S_84                 = int_S_84;
assign S_85                 = int_S_85;
assign S_86                 = int_S_86;
assign S_87                 = int_S_87;
assign S_88                 = int_S_88;
assign S_89                 = int_S_89;
assign S_90                 = int_S_90;
assign S_91                 = int_S_91;
assign S_92                 = int_S_92;
assign S_93                 = int_S_93;
assign S_94                 = int_S_94;
assign S_95                 = int_S_95;
assign S_96                 = int_S_96;
assign S_97                 = int_S_97;
assign S_98                 = int_S_98;
assign S_99                 = int_S_99;
assign S0                   = int_S0;
assign r                    = int_r;
assign sigma                = int_sigma;
assign T                    = int_T;
assign random_increments_0  = int_random_increments_0;
assign random_increments_1  = int_random_increments_1;
assign random_increments_2  = int_random_increments_2;
assign random_increments_3  = int_random_increments_3;
assign random_increments_4  = int_random_increments_4;
assign random_increments_5  = int_random_increments_5;
assign random_increments_6  = int_random_increments_6;
assign random_increments_7  = int_random_increments_7;
assign random_increments_8  = int_random_increments_8;
assign random_increments_9  = int_random_increments_9;
assign random_increments_10 = int_random_increments_10;
assign random_increments_11 = int_random_increments_11;
assign random_increments_12 = int_random_increments_12;
assign random_increments_13 = int_random_increments_13;
assign random_increments_14 = int_random_increments_14;
assign random_increments_15 = int_random_increments_15;
assign random_increments_16 = int_random_increments_16;
assign random_increments_17 = int_random_increments_17;
assign random_increments_18 = int_random_increments_18;
assign random_increments_19 = int_random_increments_19;
assign random_increments_20 = int_random_increments_20;
assign random_increments_21 = int_random_increments_21;
assign random_increments_22 = int_random_increments_22;
assign random_increments_23 = int_random_increments_23;
assign random_increments_24 = int_random_increments_24;
assign random_increments_25 = int_random_increments_25;
assign random_increments_26 = int_random_increments_26;
assign random_increments_27 = int_random_increments_27;
assign random_increments_28 = int_random_increments_28;
assign random_increments_29 = int_random_increments_29;
assign random_increments_30 = int_random_increments_30;
assign random_increments_31 = int_random_increments_31;
assign random_increments_32 = int_random_increments_32;
assign random_increments_33 = int_random_increments_33;
assign random_increments_34 = int_random_increments_34;
assign random_increments_35 = int_random_increments_35;
assign random_increments_36 = int_random_increments_36;
assign random_increments_37 = int_random_increments_37;
assign random_increments_38 = int_random_increments_38;
assign random_increments_39 = int_random_increments_39;
assign random_increments_40 = int_random_increments_40;
assign random_increments_41 = int_random_increments_41;
assign random_increments_42 = int_random_increments_42;
assign random_increments_43 = int_random_increments_43;
assign random_increments_44 = int_random_increments_44;
assign random_increments_45 = int_random_increments_45;
assign random_increments_46 = int_random_increments_46;
assign random_increments_47 = int_random_increments_47;
assign random_increments_48 = int_random_increments_48;
assign random_increments_49 = int_random_increments_49;
assign random_increments_50 = int_random_increments_50;
assign random_increments_51 = int_random_increments_51;
assign random_increments_52 = int_random_increments_52;
assign random_increments_53 = int_random_increments_53;
assign random_increments_54 = int_random_increments_54;
assign random_increments_55 = int_random_increments_55;
assign random_increments_56 = int_random_increments_56;
assign random_increments_57 = int_random_increments_57;
assign random_increments_58 = int_random_increments_58;
assign random_increments_59 = int_random_increments_59;
assign random_increments_60 = int_random_increments_60;
assign random_increments_61 = int_random_increments_61;
assign random_increments_62 = int_random_increments_62;
assign random_increments_63 = int_random_increments_63;
assign random_increments_64 = int_random_increments_64;
assign random_increments_65 = int_random_increments_65;
assign random_increments_66 = int_random_increments_66;
assign random_increments_67 = int_random_increments_67;
assign random_increments_68 = int_random_increments_68;
assign random_increments_69 = int_random_increments_69;
assign random_increments_70 = int_random_increments_70;
assign random_increments_71 = int_random_increments_71;
assign random_increments_72 = int_random_increments_72;
assign random_increments_73 = int_random_increments_73;
assign random_increments_74 = int_random_increments_74;
assign random_increments_75 = int_random_increments_75;
assign random_increments_76 = int_random_increments_76;
assign random_increments_77 = int_random_increments_77;
assign random_increments_78 = int_random_increments_78;
assign random_increments_79 = int_random_increments_79;
assign random_increments_80 = int_random_increments_80;
assign random_increments_81 = int_random_increments_81;
assign random_increments_82 = int_random_increments_82;
assign random_increments_83 = int_random_increments_83;
assign random_increments_84 = int_random_increments_84;
assign random_increments_85 = int_random_increments_85;
assign random_increments_86 = int_random_increments_86;
assign random_increments_87 = int_random_increments_87;
assign random_increments_88 = int_random_increments_88;
assign random_increments_89 = int_random_increments_89;
assign random_increments_90 = int_random_increments_90;
assign random_increments_91 = int_random_increments_91;
assign random_increments_92 = int_random_increments_92;
assign random_increments_93 = int_random_increments_93;
assign random_increments_94 = int_random_increments_94;
assign random_increments_95 = int_random_increments_95;
assign random_increments_96 = int_random_increments_96;
assign random_increments_97 = int_random_increments_97;
assign random_increments_98 = int_random_increments_98;
assign random_increments_99 = int_random_increments_99;
// int_interrupt
always @(posedge ACLK) begin
    if (ARESET)
        int_interrupt <= 1'b0;
    else if (ACLK_EN) begin
        if (int_gie && (|int_isr))
            int_interrupt <= 1'b1;
        else
            int_interrupt <= 1'b0;
    end
end

// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_done <= ap_done;
    end
end

// int_task_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_task_ap_done <= 1'b0;
    else if (ACLK_EN) begin
            int_task_ap_done <= task_ap_done && !int_ap_continue;
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_ready)
            int_ap_ready <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_ready <= 1'b0;
    end
end

// int_ap_continue
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_continue <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[4])
            int_ap_continue <= 1'b1;
        else
            int_ap_continue <= 1'b0; // self clear
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <= WDATA[7];
    end
end

// auto_restart_status
always @(posedge ACLK) begin
    if (ARESET)
        auto_restart_status <= 1'b0;
    else if (ACLK_EN) begin
        if (int_auto_restart)
            auto_restart_status <= 1'b1;
        else if (ap_idle)
            auto_restart_status <= 1'b0;
    end
end

// auto_restart_done
always @(posedge ACLK) begin
    if (ARESET)
        auto_restart_done <= 1'b0;
    else if (ACLK_EN) begin
        if (auto_restart_status && (ap_idle && !int_ap_idle))
            auto_restart_done <= 1'b1;
        else if (int_ap_continue)
            auto_restart_done <= 1'b0;
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_S_0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_0_DATA_0)
            int_S_0[31:0] <= (WDATA[31:0] & wmask) | (int_S_0[31:0] & ~wmask);
    end
end

// int_S_0[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_0[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_0_DATA_1)
            int_S_0[63:32] <= (WDATA[31:0] & wmask) | (int_S_0[63:32] & ~wmask);
    end
end

// int_S_1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_1_DATA_0)
            int_S_1[31:0] <= (WDATA[31:0] & wmask) | (int_S_1[31:0] & ~wmask);
    end
end

// int_S_1[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_1[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_1_DATA_1)
            int_S_1[63:32] <= (WDATA[31:0] & wmask) | (int_S_1[63:32] & ~wmask);
    end
end

// int_S_2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_2_DATA_0)
            int_S_2[31:0] <= (WDATA[31:0] & wmask) | (int_S_2[31:0] & ~wmask);
    end
end

// int_S_2[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_2[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_2_DATA_1)
            int_S_2[63:32] <= (WDATA[31:0] & wmask) | (int_S_2[63:32] & ~wmask);
    end
end

// int_S_3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_3_DATA_0)
            int_S_3[31:0] <= (WDATA[31:0] & wmask) | (int_S_3[31:0] & ~wmask);
    end
end

// int_S_3[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_3[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_3_DATA_1)
            int_S_3[63:32] <= (WDATA[31:0] & wmask) | (int_S_3[63:32] & ~wmask);
    end
end

// int_S_4[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_4[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_4_DATA_0)
            int_S_4[31:0] <= (WDATA[31:0] & wmask) | (int_S_4[31:0] & ~wmask);
    end
end

// int_S_4[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_4[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_4_DATA_1)
            int_S_4[63:32] <= (WDATA[31:0] & wmask) | (int_S_4[63:32] & ~wmask);
    end
end

// int_S_5[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_5[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_5_DATA_0)
            int_S_5[31:0] <= (WDATA[31:0] & wmask) | (int_S_5[31:0] & ~wmask);
    end
end

// int_S_5[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_5[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_5_DATA_1)
            int_S_5[63:32] <= (WDATA[31:0] & wmask) | (int_S_5[63:32] & ~wmask);
    end
end

// int_S_6[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_6[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_6_DATA_0)
            int_S_6[31:0] <= (WDATA[31:0] & wmask) | (int_S_6[31:0] & ~wmask);
    end
end

// int_S_6[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_6[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_6_DATA_1)
            int_S_6[63:32] <= (WDATA[31:0] & wmask) | (int_S_6[63:32] & ~wmask);
    end
end

// int_S_7[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_7[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_7_DATA_0)
            int_S_7[31:0] <= (WDATA[31:0] & wmask) | (int_S_7[31:0] & ~wmask);
    end
end

// int_S_7[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_7[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_7_DATA_1)
            int_S_7[63:32] <= (WDATA[31:0] & wmask) | (int_S_7[63:32] & ~wmask);
    end
end

// int_S_8[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_8[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_8_DATA_0)
            int_S_8[31:0] <= (WDATA[31:0] & wmask) | (int_S_8[31:0] & ~wmask);
    end
end

// int_S_8[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_8[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_8_DATA_1)
            int_S_8[63:32] <= (WDATA[31:0] & wmask) | (int_S_8[63:32] & ~wmask);
    end
end

// int_S_9[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_9[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_9_DATA_0)
            int_S_9[31:0] <= (WDATA[31:0] & wmask) | (int_S_9[31:0] & ~wmask);
    end
end

// int_S_9[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_9[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_9_DATA_1)
            int_S_9[63:32] <= (WDATA[31:0] & wmask) | (int_S_9[63:32] & ~wmask);
    end
end

// int_S_10[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_10[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_10_DATA_0)
            int_S_10[31:0] <= (WDATA[31:0] & wmask) | (int_S_10[31:0] & ~wmask);
    end
end

// int_S_10[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_10[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_10_DATA_1)
            int_S_10[63:32] <= (WDATA[31:0] & wmask) | (int_S_10[63:32] & ~wmask);
    end
end

// int_S_11[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_11[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_11_DATA_0)
            int_S_11[31:0] <= (WDATA[31:0] & wmask) | (int_S_11[31:0] & ~wmask);
    end
end

// int_S_11[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_11[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_11_DATA_1)
            int_S_11[63:32] <= (WDATA[31:0] & wmask) | (int_S_11[63:32] & ~wmask);
    end
end

// int_S_12[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_12[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_12_DATA_0)
            int_S_12[31:0] <= (WDATA[31:0] & wmask) | (int_S_12[31:0] & ~wmask);
    end
end

// int_S_12[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_12[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_12_DATA_1)
            int_S_12[63:32] <= (WDATA[31:0] & wmask) | (int_S_12[63:32] & ~wmask);
    end
end

// int_S_13[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_13[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_13_DATA_0)
            int_S_13[31:0] <= (WDATA[31:0] & wmask) | (int_S_13[31:0] & ~wmask);
    end
end

// int_S_13[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_13[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_13_DATA_1)
            int_S_13[63:32] <= (WDATA[31:0] & wmask) | (int_S_13[63:32] & ~wmask);
    end
end

// int_S_14[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_14[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_14_DATA_0)
            int_S_14[31:0] <= (WDATA[31:0] & wmask) | (int_S_14[31:0] & ~wmask);
    end
end

// int_S_14[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_14[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_14_DATA_1)
            int_S_14[63:32] <= (WDATA[31:0] & wmask) | (int_S_14[63:32] & ~wmask);
    end
end

// int_S_15[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_15[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_15_DATA_0)
            int_S_15[31:0] <= (WDATA[31:0] & wmask) | (int_S_15[31:0] & ~wmask);
    end
end

// int_S_15[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_15[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_15_DATA_1)
            int_S_15[63:32] <= (WDATA[31:0] & wmask) | (int_S_15[63:32] & ~wmask);
    end
end

// int_S_16[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_16[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_16_DATA_0)
            int_S_16[31:0] <= (WDATA[31:0] & wmask) | (int_S_16[31:0] & ~wmask);
    end
end

// int_S_16[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_16[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_16_DATA_1)
            int_S_16[63:32] <= (WDATA[31:0] & wmask) | (int_S_16[63:32] & ~wmask);
    end
end

// int_S_17[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_17[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_17_DATA_0)
            int_S_17[31:0] <= (WDATA[31:0] & wmask) | (int_S_17[31:0] & ~wmask);
    end
end

// int_S_17[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_17[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_17_DATA_1)
            int_S_17[63:32] <= (WDATA[31:0] & wmask) | (int_S_17[63:32] & ~wmask);
    end
end

// int_S_18[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_18[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_18_DATA_0)
            int_S_18[31:0] <= (WDATA[31:0] & wmask) | (int_S_18[31:0] & ~wmask);
    end
end

// int_S_18[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_18[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_18_DATA_1)
            int_S_18[63:32] <= (WDATA[31:0] & wmask) | (int_S_18[63:32] & ~wmask);
    end
end

// int_S_19[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_19[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_19_DATA_0)
            int_S_19[31:0] <= (WDATA[31:0] & wmask) | (int_S_19[31:0] & ~wmask);
    end
end

// int_S_19[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_19[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_19_DATA_1)
            int_S_19[63:32] <= (WDATA[31:0] & wmask) | (int_S_19[63:32] & ~wmask);
    end
end

// int_S_20[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_20[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_20_DATA_0)
            int_S_20[31:0] <= (WDATA[31:0] & wmask) | (int_S_20[31:0] & ~wmask);
    end
end

// int_S_20[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_20[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_20_DATA_1)
            int_S_20[63:32] <= (WDATA[31:0] & wmask) | (int_S_20[63:32] & ~wmask);
    end
end

// int_S_21[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_21[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_21_DATA_0)
            int_S_21[31:0] <= (WDATA[31:0] & wmask) | (int_S_21[31:0] & ~wmask);
    end
end

// int_S_21[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_21[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_21_DATA_1)
            int_S_21[63:32] <= (WDATA[31:0] & wmask) | (int_S_21[63:32] & ~wmask);
    end
end

// int_S_22[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_22[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_22_DATA_0)
            int_S_22[31:0] <= (WDATA[31:0] & wmask) | (int_S_22[31:0] & ~wmask);
    end
end

// int_S_22[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_22[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_22_DATA_1)
            int_S_22[63:32] <= (WDATA[31:0] & wmask) | (int_S_22[63:32] & ~wmask);
    end
end

// int_S_23[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_23[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_23_DATA_0)
            int_S_23[31:0] <= (WDATA[31:0] & wmask) | (int_S_23[31:0] & ~wmask);
    end
end

// int_S_23[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_23[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_23_DATA_1)
            int_S_23[63:32] <= (WDATA[31:0] & wmask) | (int_S_23[63:32] & ~wmask);
    end
end

// int_S_24[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_24[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_24_DATA_0)
            int_S_24[31:0] <= (WDATA[31:0] & wmask) | (int_S_24[31:0] & ~wmask);
    end
end

// int_S_24[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_24[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_24_DATA_1)
            int_S_24[63:32] <= (WDATA[31:0] & wmask) | (int_S_24[63:32] & ~wmask);
    end
end

// int_S_25[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_25[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_25_DATA_0)
            int_S_25[31:0] <= (WDATA[31:0] & wmask) | (int_S_25[31:0] & ~wmask);
    end
end

// int_S_25[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_25[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_25_DATA_1)
            int_S_25[63:32] <= (WDATA[31:0] & wmask) | (int_S_25[63:32] & ~wmask);
    end
end

// int_S_26[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_26[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_26_DATA_0)
            int_S_26[31:0] <= (WDATA[31:0] & wmask) | (int_S_26[31:0] & ~wmask);
    end
end

// int_S_26[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_26[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_26_DATA_1)
            int_S_26[63:32] <= (WDATA[31:0] & wmask) | (int_S_26[63:32] & ~wmask);
    end
end

// int_S_27[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_27[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_27_DATA_0)
            int_S_27[31:0] <= (WDATA[31:0] & wmask) | (int_S_27[31:0] & ~wmask);
    end
end

// int_S_27[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_27[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_27_DATA_1)
            int_S_27[63:32] <= (WDATA[31:0] & wmask) | (int_S_27[63:32] & ~wmask);
    end
end

// int_S_28[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_28[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_28_DATA_0)
            int_S_28[31:0] <= (WDATA[31:0] & wmask) | (int_S_28[31:0] & ~wmask);
    end
end

// int_S_28[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_28[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_28_DATA_1)
            int_S_28[63:32] <= (WDATA[31:0] & wmask) | (int_S_28[63:32] & ~wmask);
    end
end

// int_S_29[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_29[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_29_DATA_0)
            int_S_29[31:0] <= (WDATA[31:0] & wmask) | (int_S_29[31:0] & ~wmask);
    end
end

// int_S_29[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_29[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_29_DATA_1)
            int_S_29[63:32] <= (WDATA[31:0] & wmask) | (int_S_29[63:32] & ~wmask);
    end
end

// int_S_30[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_30[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_30_DATA_0)
            int_S_30[31:0] <= (WDATA[31:0] & wmask) | (int_S_30[31:0] & ~wmask);
    end
end

// int_S_30[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_30[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_30_DATA_1)
            int_S_30[63:32] <= (WDATA[31:0] & wmask) | (int_S_30[63:32] & ~wmask);
    end
end

// int_S_31[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_31[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_31_DATA_0)
            int_S_31[31:0] <= (WDATA[31:0] & wmask) | (int_S_31[31:0] & ~wmask);
    end
end

// int_S_31[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_31[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_31_DATA_1)
            int_S_31[63:32] <= (WDATA[31:0] & wmask) | (int_S_31[63:32] & ~wmask);
    end
end

// int_S_32[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_32[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_32_DATA_0)
            int_S_32[31:0] <= (WDATA[31:0] & wmask) | (int_S_32[31:0] & ~wmask);
    end
end

// int_S_32[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_32[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_32_DATA_1)
            int_S_32[63:32] <= (WDATA[31:0] & wmask) | (int_S_32[63:32] & ~wmask);
    end
end

// int_S_33[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_33[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_33_DATA_0)
            int_S_33[31:0] <= (WDATA[31:0] & wmask) | (int_S_33[31:0] & ~wmask);
    end
end

// int_S_33[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_33[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_33_DATA_1)
            int_S_33[63:32] <= (WDATA[31:0] & wmask) | (int_S_33[63:32] & ~wmask);
    end
end

// int_S_34[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_34[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_34_DATA_0)
            int_S_34[31:0] <= (WDATA[31:0] & wmask) | (int_S_34[31:0] & ~wmask);
    end
end

// int_S_34[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_34[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_34_DATA_1)
            int_S_34[63:32] <= (WDATA[31:0] & wmask) | (int_S_34[63:32] & ~wmask);
    end
end

// int_S_35[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_35[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_35_DATA_0)
            int_S_35[31:0] <= (WDATA[31:0] & wmask) | (int_S_35[31:0] & ~wmask);
    end
end

// int_S_35[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_35[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_35_DATA_1)
            int_S_35[63:32] <= (WDATA[31:0] & wmask) | (int_S_35[63:32] & ~wmask);
    end
end

// int_S_36[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_36[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_36_DATA_0)
            int_S_36[31:0] <= (WDATA[31:0] & wmask) | (int_S_36[31:0] & ~wmask);
    end
end

// int_S_36[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_36[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_36_DATA_1)
            int_S_36[63:32] <= (WDATA[31:0] & wmask) | (int_S_36[63:32] & ~wmask);
    end
end

// int_S_37[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_37[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_37_DATA_0)
            int_S_37[31:0] <= (WDATA[31:0] & wmask) | (int_S_37[31:0] & ~wmask);
    end
end

// int_S_37[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_37[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_37_DATA_1)
            int_S_37[63:32] <= (WDATA[31:0] & wmask) | (int_S_37[63:32] & ~wmask);
    end
end

// int_S_38[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_38[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_38_DATA_0)
            int_S_38[31:0] <= (WDATA[31:0] & wmask) | (int_S_38[31:0] & ~wmask);
    end
end

// int_S_38[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_38[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_38_DATA_1)
            int_S_38[63:32] <= (WDATA[31:0] & wmask) | (int_S_38[63:32] & ~wmask);
    end
end

// int_S_39[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_39[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_39_DATA_0)
            int_S_39[31:0] <= (WDATA[31:0] & wmask) | (int_S_39[31:0] & ~wmask);
    end
end

// int_S_39[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_39[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_39_DATA_1)
            int_S_39[63:32] <= (WDATA[31:0] & wmask) | (int_S_39[63:32] & ~wmask);
    end
end

// int_S_40[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_40[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_40_DATA_0)
            int_S_40[31:0] <= (WDATA[31:0] & wmask) | (int_S_40[31:0] & ~wmask);
    end
end

// int_S_40[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_40[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_40_DATA_1)
            int_S_40[63:32] <= (WDATA[31:0] & wmask) | (int_S_40[63:32] & ~wmask);
    end
end

// int_S_41[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_41[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_41_DATA_0)
            int_S_41[31:0] <= (WDATA[31:0] & wmask) | (int_S_41[31:0] & ~wmask);
    end
end

// int_S_41[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_41[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_41_DATA_1)
            int_S_41[63:32] <= (WDATA[31:0] & wmask) | (int_S_41[63:32] & ~wmask);
    end
end

// int_S_42[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_42[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_42_DATA_0)
            int_S_42[31:0] <= (WDATA[31:0] & wmask) | (int_S_42[31:0] & ~wmask);
    end
end

// int_S_42[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_42[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_42_DATA_1)
            int_S_42[63:32] <= (WDATA[31:0] & wmask) | (int_S_42[63:32] & ~wmask);
    end
end

// int_S_43[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_43[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_43_DATA_0)
            int_S_43[31:0] <= (WDATA[31:0] & wmask) | (int_S_43[31:0] & ~wmask);
    end
end

// int_S_43[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_43[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_43_DATA_1)
            int_S_43[63:32] <= (WDATA[31:0] & wmask) | (int_S_43[63:32] & ~wmask);
    end
end

// int_S_44[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_44[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_44_DATA_0)
            int_S_44[31:0] <= (WDATA[31:0] & wmask) | (int_S_44[31:0] & ~wmask);
    end
end

// int_S_44[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_44[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_44_DATA_1)
            int_S_44[63:32] <= (WDATA[31:0] & wmask) | (int_S_44[63:32] & ~wmask);
    end
end

// int_S_45[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_45[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_45_DATA_0)
            int_S_45[31:0] <= (WDATA[31:0] & wmask) | (int_S_45[31:0] & ~wmask);
    end
end

// int_S_45[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_45[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_45_DATA_1)
            int_S_45[63:32] <= (WDATA[31:0] & wmask) | (int_S_45[63:32] & ~wmask);
    end
end

// int_S_46[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_46[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_46_DATA_0)
            int_S_46[31:0] <= (WDATA[31:0] & wmask) | (int_S_46[31:0] & ~wmask);
    end
end

// int_S_46[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_46[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_46_DATA_1)
            int_S_46[63:32] <= (WDATA[31:0] & wmask) | (int_S_46[63:32] & ~wmask);
    end
end

// int_S_47[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_47[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_47_DATA_0)
            int_S_47[31:0] <= (WDATA[31:0] & wmask) | (int_S_47[31:0] & ~wmask);
    end
end

// int_S_47[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_47[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_47_DATA_1)
            int_S_47[63:32] <= (WDATA[31:0] & wmask) | (int_S_47[63:32] & ~wmask);
    end
end

// int_S_48[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_48[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_48_DATA_0)
            int_S_48[31:0] <= (WDATA[31:0] & wmask) | (int_S_48[31:0] & ~wmask);
    end
end

// int_S_48[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_48[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_48_DATA_1)
            int_S_48[63:32] <= (WDATA[31:0] & wmask) | (int_S_48[63:32] & ~wmask);
    end
end

// int_S_49[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_49[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_49_DATA_0)
            int_S_49[31:0] <= (WDATA[31:0] & wmask) | (int_S_49[31:0] & ~wmask);
    end
end

// int_S_49[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_49[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_49_DATA_1)
            int_S_49[63:32] <= (WDATA[31:0] & wmask) | (int_S_49[63:32] & ~wmask);
    end
end

// int_S_50[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_50[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_50_DATA_0)
            int_S_50[31:0] <= (WDATA[31:0] & wmask) | (int_S_50[31:0] & ~wmask);
    end
end

// int_S_50[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_50[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_50_DATA_1)
            int_S_50[63:32] <= (WDATA[31:0] & wmask) | (int_S_50[63:32] & ~wmask);
    end
end

// int_S_51[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_51[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_51_DATA_0)
            int_S_51[31:0] <= (WDATA[31:0] & wmask) | (int_S_51[31:0] & ~wmask);
    end
end

// int_S_51[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_51[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_51_DATA_1)
            int_S_51[63:32] <= (WDATA[31:0] & wmask) | (int_S_51[63:32] & ~wmask);
    end
end

// int_S_52[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_52[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_52_DATA_0)
            int_S_52[31:0] <= (WDATA[31:0] & wmask) | (int_S_52[31:0] & ~wmask);
    end
end

// int_S_52[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_52[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_52_DATA_1)
            int_S_52[63:32] <= (WDATA[31:0] & wmask) | (int_S_52[63:32] & ~wmask);
    end
end

// int_S_53[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_53[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_53_DATA_0)
            int_S_53[31:0] <= (WDATA[31:0] & wmask) | (int_S_53[31:0] & ~wmask);
    end
end

// int_S_53[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_53[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_53_DATA_1)
            int_S_53[63:32] <= (WDATA[31:0] & wmask) | (int_S_53[63:32] & ~wmask);
    end
end

// int_S_54[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_54[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_54_DATA_0)
            int_S_54[31:0] <= (WDATA[31:0] & wmask) | (int_S_54[31:0] & ~wmask);
    end
end

// int_S_54[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_54[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_54_DATA_1)
            int_S_54[63:32] <= (WDATA[31:0] & wmask) | (int_S_54[63:32] & ~wmask);
    end
end

// int_S_55[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_55[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_55_DATA_0)
            int_S_55[31:0] <= (WDATA[31:0] & wmask) | (int_S_55[31:0] & ~wmask);
    end
end

// int_S_55[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_55[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_55_DATA_1)
            int_S_55[63:32] <= (WDATA[31:0] & wmask) | (int_S_55[63:32] & ~wmask);
    end
end

// int_S_56[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_56[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_56_DATA_0)
            int_S_56[31:0] <= (WDATA[31:0] & wmask) | (int_S_56[31:0] & ~wmask);
    end
end

// int_S_56[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_56[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_56_DATA_1)
            int_S_56[63:32] <= (WDATA[31:0] & wmask) | (int_S_56[63:32] & ~wmask);
    end
end

// int_S_57[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_57[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_57_DATA_0)
            int_S_57[31:0] <= (WDATA[31:0] & wmask) | (int_S_57[31:0] & ~wmask);
    end
end

// int_S_57[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_57[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_57_DATA_1)
            int_S_57[63:32] <= (WDATA[31:0] & wmask) | (int_S_57[63:32] & ~wmask);
    end
end

// int_S_58[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_58[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_58_DATA_0)
            int_S_58[31:0] <= (WDATA[31:0] & wmask) | (int_S_58[31:0] & ~wmask);
    end
end

// int_S_58[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_58[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_58_DATA_1)
            int_S_58[63:32] <= (WDATA[31:0] & wmask) | (int_S_58[63:32] & ~wmask);
    end
end

// int_S_59[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_59[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_59_DATA_0)
            int_S_59[31:0] <= (WDATA[31:0] & wmask) | (int_S_59[31:0] & ~wmask);
    end
end

// int_S_59[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_59[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_59_DATA_1)
            int_S_59[63:32] <= (WDATA[31:0] & wmask) | (int_S_59[63:32] & ~wmask);
    end
end

// int_S_60[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_60[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_60_DATA_0)
            int_S_60[31:0] <= (WDATA[31:0] & wmask) | (int_S_60[31:0] & ~wmask);
    end
end

// int_S_60[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_60[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_60_DATA_1)
            int_S_60[63:32] <= (WDATA[31:0] & wmask) | (int_S_60[63:32] & ~wmask);
    end
end

// int_S_61[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_61[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_61_DATA_0)
            int_S_61[31:0] <= (WDATA[31:0] & wmask) | (int_S_61[31:0] & ~wmask);
    end
end

// int_S_61[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_61[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_61_DATA_1)
            int_S_61[63:32] <= (WDATA[31:0] & wmask) | (int_S_61[63:32] & ~wmask);
    end
end

// int_S_62[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_62[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_62_DATA_0)
            int_S_62[31:0] <= (WDATA[31:0] & wmask) | (int_S_62[31:0] & ~wmask);
    end
end

// int_S_62[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_62[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_62_DATA_1)
            int_S_62[63:32] <= (WDATA[31:0] & wmask) | (int_S_62[63:32] & ~wmask);
    end
end

// int_S_63[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_63[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_63_DATA_0)
            int_S_63[31:0] <= (WDATA[31:0] & wmask) | (int_S_63[31:0] & ~wmask);
    end
end

// int_S_63[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_63[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_63_DATA_1)
            int_S_63[63:32] <= (WDATA[31:0] & wmask) | (int_S_63[63:32] & ~wmask);
    end
end

// int_S_64[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_64[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_64_DATA_0)
            int_S_64[31:0] <= (WDATA[31:0] & wmask) | (int_S_64[31:0] & ~wmask);
    end
end

// int_S_64[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_64[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_64_DATA_1)
            int_S_64[63:32] <= (WDATA[31:0] & wmask) | (int_S_64[63:32] & ~wmask);
    end
end

// int_S_65[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_65[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_65_DATA_0)
            int_S_65[31:0] <= (WDATA[31:0] & wmask) | (int_S_65[31:0] & ~wmask);
    end
end

// int_S_65[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_65[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_65_DATA_1)
            int_S_65[63:32] <= (WDATA[31:0] & wmask) | (int_S_65[63:32] & ~wmask);
    end
end

// int_S_66[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_66[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_66_DATA_0)
            int_S_66[31:0] <= (WDATA[31:0] & wmask) | (int_S_66[31:0] & ~wmask);
    end
end

// int_S_66[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_66[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_66_DATA_1)
            int_S_66[63:32] <= (WDATA[31:0] & wmask) | (int_S_66[63:32] & ~wmask);
    end
end

// int_S_67[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_67[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_67_DATA_0)
            int_S_67[31:0] <= (WDATA[31:0] & wmask) | (int_S_67[31:0] & ~wmask);
    end
end

// int_S_67[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_67[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_67_DATA_1)
            int_S_67[63:32] <= (WDATA[31:0] & wmask) | (int_S_67[63:32] & ~wmask);
    end
end

// int_S_68[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_68[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_68_DATA_0)
            int_S_68[31:0] <= (WDATA[31:0] & wmask) | (int_S_68[31:0] & ~wmask);
    end
end

// int_S_68[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_68[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_68_DATA_1)
            int_S_68[63:32] <= (WDATA[31:0] & wmask) | (int_S_68[63:32] & ~wmask);
    end
end

// int_S_69[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_69[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_69_DATA_0)
            int_S_69[31:0] <= (WDATA[31:0] & wmask) | (int_S_69[31:0] & ~wmask);
    end
end

// int_S_69[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_69[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_69_DATA_1)
            int_S_69[63:32] <= (WDATA[31:0] & wmask) | (int_S_69[63:32] & ~wmask);
    end
end

// int_S_70[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_70[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_70_DATA_0)
            int_S_70[31:0] <= (WDATA[31:0] & wmask) | (int_S_70[31:0] & ~wmask);
    end
end

// int_S_70[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_70[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_70_DATA_1)
            int_S_70[63:32] <= (WDATA[31:0] & wmask) | (int_S_70[63:32] & ~wmask);
    end
end

// int_S_71[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_71[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_71_DATA_0)
            int_S_71[31:0] <= (WDATA[31:0] & wmask) | (int_S_71[31:0] & ~wmask);
    end
end

// int_S_71[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_71[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_71_DATA_1)
            int_S_71[63:32] <= (WDATA[31:0] & wmask) | (int_S_71[63:32] & ~wmask);
    end
end

// int_S_72[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_72[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_72_DATA_0)
            int_S_72[31:0] <= (WDATA[31:0] & wmask) | (int_S_72[31:0] & ~wmask);
    end
end

// int_S_72[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_72[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_72_DATA_1)
            int_S_72[63:32] <= (WDATA[31:0] & wmask) | (int_S_72[63:32] & ~wmask);
    end
end

// int_S_73[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_73[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_73_DATA_0)
            int_S_73[31:0] <= (WDATA[31:0] & wmask) | (int_S_73[31:0] & ~wmask);
    end
end

// int_S_73[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_73[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_73_DATA_1)
            int_S_73[63:32] <= (WDATA[31:0] & wmask) | (int_S_73[63:32] & ~wmask);
    end
end

// int_S_74[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_74[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_74_DATA_0)
            int_S_74[31:0] <= (WDATA[31:0] & wmask) | (int_S_74[31:0] & ~wmask);
    end
end

// int_S_74[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_74[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_74_DATA_1)
            int_S_74[63:32] <= (WDATA[31:0] & wmask) | (int_S_74[63:32] & ~wmask);
    end
end

// int_S_75[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_75[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_75_DATA_0)
            int_S_75[31:0] <= (WDATA[31:0] & wmask) | (int_S_75[31:0] & ~wmask);
    end
end

// int_S_75[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_75[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_75_DATA_1)
            int_S_75[63:32] <= (WDATA[31:0] & wmask) | (int_S_75[63:32] & ~wmask);
    end
end

// int_S_76[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_76[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_76_DATA_0)
            int_S_76[31:0] <= (WDATA[31:0] & wmask) | (int_S_76[31:0] & ~wmask);
    end
end

// int_S_76[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_76[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_76_DATA_1)
            int_S_76[63:32] <= (WDATA[31:0] & wmask) | (int_S_76[63:32] & ~wmask);
    end
end

// int_S_77[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_77[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_77_DATA_0)
            int_S_77[31:0] <= (WDATA[31:0] & wmask) | (int_S_77[31:0] & ~wmask);
    end
end

// int_S_77[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_77[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_77_DATA_1)
            int_S_77[63:32] <= (WDATA[31:0] & wmask) | (int_S_77[63:32] & ~wmask);
    end
end

// int_S_78[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_78[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_78_DATA_0)
            int_S_78[31:0] <= (WDATA[31:0] & wmask) | (int_S_78[31:0] & ~wmask);
    end
end

// int_S_78[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_78[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_78_DATA_1)
            int_S_78[63:32] <= (WDATA[31:0] & wmask) | (int_S_78[63:32] & ~wmask);
    end
end

// int_S_79[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_79[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_79_DATA_0)
            int_S_79[31:0] <= (WDATA[31:0] & wmask) | (int_S_79[31:0] & ~wmask);
    end
end

// int_S_79[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_79[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_79_DATA_1)
            int_S_79[63:32] <= (WDATA[31:0] & wmask) | (int_S_79[63:32] & ~wmask);
    end
end

// int_S_80[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_80[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_80_DATA_0)
            int_S_80[31:0] <= (WDATA[31:0] & wmask) | (int_S_80[31:0] & ~wmask);
    end
end

// int_S_80[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_80[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_80_DATA_1)
            int_S_80[63:32] <= (WDATA[31:0] & wmask) | (int_S_80[63:32] & ~wmask);
    end
end

// int_S_81[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_81[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_81_DATA_0)
            int_S_81[31:0] <= (WDATA[31:0] & wmask) | (int_S_81[31:0] & ~wmask);
    end
end

// int_S_81[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_81[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_81_DATA_1)
            int_S_81[63:32] <= (WDATA[31:0] & wmask) | (int_S_81[63:32] & ~wmask);
    end
end

// int_S_82[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_82[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_82_DATA_0)
            int_S_82[31:0] <= (WDATA[31:0] & wmask) | (int_S_82[31:0] & ~wmask);
    end
end

// int_S_82[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_82[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_82_DATA_1)
            int_S_82[63:32] <= (WDATA[31:0] & wmask) | (int_S_82[63:32] & ~wmask);
    end
end

// int_S_83[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_83[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_83_DATA_0)
            int_S_83[31:0] <= (WDATA[31:0] & wmask) | (int_S_83[31:0] & ~wmask);
    end
end

// int_S_83[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_83[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_83_DATA_1)
            int_S_83[63:32] <= (WDATA[31:0] & wmask) | (int_S_83[63:32] & ~wmask);
    end
end

// int_S_84[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_84[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_84_DATA_0)
            int_S_84[31:0] <= (WDATA[31:0] & wmask) | (int_S_84[31:0] & ~wmask);
    end
end

// int_S_84[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_84[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_84_DATA_1)
            int_S_84[63:32] <= (WDATA[31:0] & wmask) | (int_S_84[63:32] & ~wmask);
    end
end

// int_S_85[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_85[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_85_DATA_0)
            int_S_85[31:0] <= (WDATA[31:0] & wmask) | (int_S_85[31:0] & ~wmask);
    end
end

// int_S_85[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_85[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_85_DATA_1)
            int_S_85[63:32] <= (WDATA[31:0] & wmask) | (int_S_85[63:32] & ~wmask);
    end
end

// int_S_86[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_86[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_86_DATA_0)
            int_S_86[31:0] <= (WDATA[31:0] & wmask) | (int_S_86[31:0] & ~wmask);
    end
end

// int_S_86[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_86[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_86_DATA_1)
            int_S_86[63:32] <= (WDATA[31:0] & wmask) | (int_S_86[63:32] & ~wmask);
    end
end

// int_S_87[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_87[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_87_DATA_0)
            int_S_87[31:0] <= (WDATA[31:0] & wmask) | (int_S_87[31:0] & ~wmask);
    end
end

// int_S_87[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_87[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_87_DATA_1)
            int_S_87[63:32] <= (WDATA[31:0] & wmask) | (int_S_87[63:32] & ~wmask);
    end
end

// int_S_88[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_88[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_88_DATA_0)
            int_S_88[31:0] <= (WDATA[31:0] & wmask) | (int_S_88[31:0] & ~wmask);
    end
end

// int_S_88[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_88[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_88_DATA_1)
            int_S_88[63:32] <= (WDATA[31:0] & wmask) | (int_S_88[63:32] & ~wmask);
    end
end

// int_S_89[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_89[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_89_DATA_0)
            int_S_89[31:0] <= (WDATA[31:0] & wmask) | (int_S_89[31:0] & ~wmask);
    end
end

// int_S_89[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_89[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_89_DATA_1)
            int_S_89[63:32] <= (WDATA[31:0] & wmask) | (int_S_89[63:32] & ~wmask);
    end
end

// int_S_90[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_90[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_90_DATA_0)
            int_S_90[31:0] <= (WDATA[31:0] & wmask) | (int_S_90[31:0] & ~wmask);
    end
end

// int_S_90[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_90[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_90_DATA_1)
            int_S_90[63:32] <= (WDATA[31:0] & wmask) | (int_S_90[63:32] & ~wmask);
    end
end

// int_S_91[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_91[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_91_DATA_0)
            int_S_91[31:0] <= (WDATA[31:0] & wmask) | (int_S_91[31:0] & ~wmask);
    end
end

// int_S_91[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_91[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_91_DATA_1)
            int_S_91[63:32] <= (WDATA[31:0] & wmask) | (int_S_91[63:32] & ~wmask);
    end
end

// int_S_92[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_92[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_92_DATA_0)
            int_S_92[31:0] <= (WDATA[31:0] & wmask) | (int_S_92[31:0] & ~wmask);
    end
end

// int_S_92[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_92[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_92_DATA_1)
            int_S_92[63:32] <= (WDATA[31:0] & wmask) | (int_S_92[63:32] & ~wmask);
    end
end

// int_S_93[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_93[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_93_DATA_0)
            int_S_93[31:0] <= (WDATA[31:0] & wmask) | (int_S_93[31:0] & ~wmask);
    end
end

// int_S_93[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_93[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_93_DATA_1)
            int_S_93[63:32] <= (WDATA[31:0] & wmask) | (int_S_93[63:32] & ~wmask);
    end
end

// int_S_94[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_94[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_94_DATA_0)
            int_S_94[31:0] <= (WDATA[31:0] & wmask) | (int_S_94[31:0] & ~wmask);
    end
end

// int_S_94[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_94[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_94_DATA_1)
            int_S_94[63:32] <= (WDATA[31:0] & wmask) | (int_S_94[63:32] & ~wmask);
    end
end

// int_S_95[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_95[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_95_DATA_0)
            int_S_95[31:0] <= (WDATA[31:0] & wmask) | (int_S_95[31:0] & ~wmask);
    end
end

// int_S_95[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_95[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_95_DATA_1)
            int_S_95[63:32] <= (WDATA[31:0] & wmask) | (int_S_95[63:32] & ~wmask);
    end
end

// int_S_96[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_96[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_96_DATA_0)
            int_S_96[31:0] <= (WDATA[31:0] & wmask) | (int_S_96[31:0] & ~wmask);
    end
end

// int_S_96[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_96[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_96_DATA_1)
            int_S_96[63:32] <= (WDATA[31:0] & wmask) | (int_S_96[63:32] & ~wmask);
    end
end

// int_S_97[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_97[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_97_DATA_0)
            int_S_97[31:0] <= (WDATA[31:0] & wmask) | (int_S_97[31:0] & ~wmask);
    end
end

// int_S_97[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_97[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_97_DATA_1)
            int_S_97[63:32] <= (WDATA[31:0] & wmask) | (int_S_97[63:32] & ~wmask);
    end
end

// int_S_98[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_98[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_98_DATA_0)
            int_S_98[31:0] <= (WDATA[31:0] & wmask) | (int_S_98[31:0] & ~wmask);
    end
end

// int_S_98[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_98[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_98_DATA_1)
            int_S_98[63:32] <= (WDATA[31:0] & wmask) | (int_S_98[63:32] & ~wmask);
    end
end

// int_S_99[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_99[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_99_DATA_0)
            int_S_99[31:0] <= (WDATA[31:0] & wmask) | (int_S_99[31:0] & ~wmask);
    end
end

// int_S_99[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S_99[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_99_DATA_1)
            int_S_99[63:32] <= (WDATA[31:0] & wmask) | (int_S_99[63:32] & ~wmask);
    end
end

// int_S0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_S0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S0_DATA_0)
            int_S0[31:0] <= (WDATA[31:0] & wmask) | (int_S0[31:0] & ~wmask);
    end
end

// int_S0[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_S0[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S0_DATA_1)
            int_S0[63:32] <= (WDATA[31:0] & wmask) | (int_S0[63:32] & ~wmask);
    end
end

// int_r[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_r[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_R_DATA_0)
            int_r[31:0] <= (WDATA[31:0] & wmask) | (int_r[31:0] & ~wmask);
    end
end

// int_r[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_r[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_R_DATA_1)
            int_r[63:32] <= (WDATA[31:0] & wmask) | (int_r[63:32] & ~wmask);
    end
end

// int_sigma[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_sigma[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SIGMA_DATA_0)
            int_sigma[31:0] <= (WDATA[31:0] & wmask) | (int_sigma[31:0] & ~wmask);
    end
end

// int_sigma[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_sigma[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SIGMA_DATA_1)
            int_sigma[63:32] <= (WDATA[31:0] & wmask) | (int_sigma[63:32] & ~wmask);
    end
end

// int_T[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_T[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_T_DATA_0)
            int_T[31:0] <= (WDATA[31:0] & wmask) | (int_T[31:0] & ~wmask);
    end
end

// int_T[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_T[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_T_DATA_1)
            int_T[63:32] <= (WDATA[31:0] & wmask) | (int_T[63:32] & ~wmask);
    end
end

// int_random_increments_0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_0_DATA_0)
            int_random_increments_0[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_0[31:0] & ~wmask);
    end
end

// int_random_increments_0[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_0[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_0_DATA_1)
            int_random_increments_0[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_0[63:32] & ~wmask);
    end
end

// int_random_increments_1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_1_DATA_0)
            int_random_increments_1[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_1[31:0] & ~wmask);
    end
end

// int_random_increments_1[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_1[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_1_DATA_1)
            int_random_increments_1[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_1[63:32] & ~wmask);
    end
end

// int_random_increments_2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_2_DATA_0)
            int_random_increments_2[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_2[31:0] & ~wmask);
    end
end

// int_random_increments_2[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_2[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_2_DATA_1)
            int_random_increments_2[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_2[63:32] & ~wmask);
    end
end

// int_random_increments_3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_3_DATA_0)
            int_random_increments_3[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_3[31:0] & ~wmask);
    end
end

// int_random_increments_3[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_3[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_3_DATA_1)
            int_random_increments_3[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_3[63:32] & ~wmask);
    end
end

// int_random_increments_4[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_4[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_4_DATA_0)
            int_random_increments_4[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_4[31:0] & ~wmask);
    end
end

// int_random_increments_4[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_4[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_4_DATA_1)
            int_random_increments_4[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_4[63:32] & ~wmask);
    end
end

// int_random_increments_5[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_5[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_5_DATA_0)
            int_random_increments_5[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_5[31:0] & ~wmask);
    end
end

// int_random_increments_5[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_5[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_5_DATA_1)
            int_random_increments_5[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_5[63:32] & ~wmask);
    end
end

// int_random_increments_6[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_6[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_6_DATA_0)
            int_random_increments_6[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_6[31:0] & ~wmask);
    end
end

// int_random_increments_6[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_6[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_6_DATA_1)
            int_random_increments_6[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_6[63:32] & ~wmask);
    end
end

// int_random_increments_7[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_7[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_7_DATA_0)
            int_random_increments_7[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_7[31:0] & ~wmask);
    end
end

// int_random_increments_7[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_7[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_7_DATA_1)
            int_random_increments_7[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_7[63:32] & ~wmask);
    end
end

// int_random_increments_8[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_8[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_8_DATA_0)
            int_random_increments_8[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_8[31:0] & ~wmask);
    end
end

// int_random_increments_8[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_8[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_8_DATA_1)
            int_random_increments_8[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_8[63:32] & ~wmask);
    end
end

// int_random_increments_9[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_9[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_9_DATA_0)
            int_random_increments_9[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_9[31:0] & ~wmask);
    end
end

// int_random_increments_9[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_9[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_9_DATA_1)
            int_random_increments_9[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_9[63:32] & ~wmask);
    end
end

// int_random_increments_10[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_10[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_10_DATA_0)
            int_random_increments_10[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_10[31:0] & ~wmask);
    end
end

// int_random_increments_10[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_10[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_10_DATA_1)
            int_random_increments_10[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_10[63:32] & ~wmask);
    end
end

// int_random_increments_11[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_11[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_11_DATA_0)
            int_random_increments_11[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_11[31:0] & ~wmask);
    end
end

// int_random_increments_11[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_11[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_11_DATA_1)
            int_random_increments_11[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_11[63:32] & ~wmask);
    end
end

// int_random_increments_12[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_12[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_12_DATA_0)
            int_random_increments_12[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_12[31:0] & ~wmask);
    end
end

// int_random_increments_12[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_12[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_12_DATA_1)
            int_random_increments_12[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_12[63:32] & ~wmask);
    end
end

// int_random_increments_13[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_13[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_13_DATA_0)
            int_random_increments_13[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_13[31:0] & ~wmask);
    end
end

// int_random_increments_13[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_13[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_13_DATA_1)
            int_random_increments_13[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_13[63:32] & ~wmask);
    end
end

// int_random_increments_14[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_14[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_14_DATA_0)
            int_random_increments_14[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_14[31:0] & ~wmask);
    end
end

// int_random_increments_14[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_14[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_14_DATA_1)
            int_random_increments_14[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_14[63:32] & ~wmask);
    end
end

// int_random_increments_15[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_15[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_15_DATA_0)
            int_random_increments_15[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_15[31:0] & ~wmask);
    end
end

// int_random_increments_15[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_15[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_15_DATA_1)
            int_random_increments_15[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_15[63:32] & ~wmask);
    end
end

// int_random_increments_16[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_16[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_16_DATA_0)
            int_random_increments_16[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_16[31:0] & ~wmask);
    end
end

// int_random_increments_16[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_16[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_16_DATA_1)
            int_random_increments_16[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_16[63:32] & ~wmask);
    end
end

// int_random_increments_17[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_17[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_17_DATA_0)
            int_random_increments_17[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_17[31:0] & ~wmask);
    end
end

// int_random_increments_17[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_17[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_17_DATA_1)
            int_random_increments_17[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_17[63:32] & ~wmask);
    end
end

// int_random_increments_18[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_18[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_18_DATA_0)
            int_random_increments_18[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_18[31:0] & ~wmask);
    end
end

// int_random_increments_18[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_18[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_18_DATA_1)
            int_random_increments_18[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_18[63:32] & ~wmask);
    end
end

// int_random_increments_19[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_19[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_19_DATA_0)
            int_random_increments_19[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_19[31:0] & ~wmask);
    end
end

// int_random_increments_19[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_19[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_19_DATA_1)
            int_random_increments_19[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_19[63:32] & ~wmask);
    end
end

// int_random_increments_20[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_20[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_20_DATA_0)
            int_random_increments_20[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_20[31:0] & ~wmask);
    end
end

// int_random_increments_20[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_20[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_20_DATA_1)
            int_random_increments_20[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_20[63:32] & ~wmask);
    end
end

// int_random_increments_21[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_21[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_21_DATA_0)
            int_random_increments_21[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_21[31:0] & ~wmask);
    end
end

// int_random_increments_21[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_21[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_21_DATA_1)
            int_random_increments_21[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_21[63:32] & ~wmask);
    end
end

// int_random_increments_22[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_22[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_22_DATA_0)
            int_random_increments_22[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_22[31:0] & ~wmask);
    end
end

// int_random_increments_22[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_22[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_22_DATA_1)
            int_random_increments_22[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_22[63:32] & ~wmask);
    end
end

// int_random_increments_23[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_23[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_23_DATA_0)
            int_random_increments_23[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_23[31:0] & ~wmask);
    end
end

// int_random_increments_23[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_23[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_23_DATA_1)
            int_random_increments_23[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_23[63:32] & ~wmask);
    end
end

// int_random_increments_24[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_24[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_24_DATA_0)
            int_random_increments_24[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_24[31:0] & ~wmask);
    end
end

// int_random_increments_24[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_24[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_24_DATA_1)
            int_random_increments_24[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_24[63:32] & ~wmask);
    end
end

// int_random_increments_25[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_25[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_25_DATA_0)
            int_random_increments_25[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_25[31:0] & ~wmask);
    end
end

// int_random_increments_25[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_25[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_25_DATA_1)
            int_random_increments_25[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_25[63:32] & ~wmask);
    end
end

// int_random_increments_26[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_26[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_26_DATA_0)
            int_random_increments_26[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_26[31:0] & ~wmask);
    end
end

// int_random_increments_26[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_26[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_26_DATA_1)
            int_random_increments_26[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_26[63:32] & ~wmask);
    end
end

// int_random_increments_27[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_27[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_27_DATA_0)
            int_random_increments_27[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_27[31:0] & ~wmask);
    end
end

// int_random_increments_27[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_27[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_27_DATA_1)
            int_random_increments_27[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_27[63:32] & ~wmask);
    end
end

// int_random_increments_28[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_28[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_28_DATA_0)
            int_random_increments_28[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_28[31:0] & ~wmask);
    end
end

// int_random_increments_28[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_28[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_28_DATA_1)
            int_random_increments_28[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_28[63:32] & ~wmask);
    end
end

// int_random_increments_29[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_29[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_29_DATA_0)
            int_random_increments_29[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_29[31:0] & ~wmask);
    end
end

// int_random_increments_29[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_29[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_29_DATA_1)
            int_random_increments_29[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_29[63:32] & ~wmask);
    end
end

// int_random_increments_30[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_30[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_30_DATA_0)
            int_random_increments_30[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_30[31:0] & ~wmask);
    end
end

// int_random_increments_30[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_30[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_30_DATA_1)
            int_random_increments_30[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_30[63:32] & ~wmask);
    end
end

// int_random_increments_31[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_31[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_31_DATA_0)
            int_random_increments_31[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_31[31:0] & ~wmask);
    end
end

// int_random_increments_31[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_31[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_31_DATA_1)
            int_random_increments_31[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_31[63:32] & ~wmask);
    end
end

// int_random_increments_32[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_32[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_32_DATA_0)
            int_random_increments_32[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_32[31:0] & ~wmask);
    end
end

// int_random_increments_32[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_32[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_32_DATA_1)
            int_random_increments_32[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_32[63:32] & ~wmask);
    end
end

// int_random_increments_33[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_33[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_33_DATA_0)
            int_random_increments_33[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_33[31:0] & ~wmask);
    end
end

// int_random_increments_33[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_33[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_33_DATA_1)
            int_random_increments_33[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_33[63:32] & ~wmask);
    end
end

// int_random_increments_34[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_34[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_34_DATA_0)
            int_random_increments_34[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_34[31:0] & ~wmask);
    end
end

// int_random_increments_34[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_34[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_34_DATA_1)
            int_random_increments_34[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_34[63:32] & ~wmask);
    end
end

// int_random_increments_35[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_35[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_35_DATA_0)
            int_random_increments_35[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_35[31:0] & ~wmask);
    end
end

// int_random_increments_35[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_35[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_35_DATA_1)
            int_random_increments_35[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_35[63:32] & ~wmask);
    end
end

// int_random_increments_36[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_36[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_36_DATA_0)
            int_random_increments_36[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_36[31:0] & ~wmask);
    end
end

// int_random_increments_36[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_36[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_36_DATA_1)
            int_random_increments_36[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_36[63:32] & ~wmask);
    end
end

// int_random_increments_37[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_37[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_37_DATA_0)
            int_random_increments_37[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_37[31:0] & ~wmask);
    end
end

// int_random_increments_37[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_37[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_37_DATA_1)
            int_random_increments_37[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_37[63:32] & ~wmask);
    end
end

// int_random_increments_38[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_38[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_38_DATA_0)
            int_random_increments_38[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_38[31:0] & ~wmask);
    end
end

// int_random_increments_38[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_38[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_38_DATA_1)
            int_random_increments_38[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_38[63:32] & ~wmask);
    end
end

// int_random_increments_39[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_39[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_39_DATA_0)
            int_random_increments_39[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_39[31:0] & ~wmask);
    end
end

// int_random_increments_39[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_39[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_39_DATA_1)
            int_random_increments_39[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_39[63:32] & ~wmask);
    end
end

// int_random_increments_40[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_40[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_40_DATA_0)
            int_random_increments_40[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_40[31:0] & ~wmask);
    end
end

// int_random_increments_40[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_40[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_40_DATA_1)
            int_random_increments_40[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_40[63:32] & ~wmask);
    end
end

// int_random_increments_41[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_41[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_41_DATA_0)
            int_random_increments_41[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_41[31:0] & ~wmask);
    end
end

// int_random_increments_41[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_41[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_41_DATA_1)
            int_random_increments_41[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_41[63:32] & ~wmask);
    end
end

// int_random_increments_42[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_42[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_42_DATA_0)
            int_random_increments_42[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_42[31:0] & ~wmask);
    end
end

// int_random_increments_42[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_42[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_42_DATA_1)
            int_random_increments_42[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_42[63:32] & ~wmask);
    end
end

// int_random_increments_43[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_43[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_43_DATA_0)
            int_random_increments_43[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_43[31:0] & ~wmask);
    end
end

// int_random_increments_43[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_43[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_43_DATA_1)
            int_random_increments_43[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_43[63:32] & ~wmask);
    end
end

// int_random_increments_44[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_44[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_44_DATA_0)
            int_random_increments_44[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_44[31:0] & ~wmask);
    end
end

// int_random_increments_44[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_44[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_44_DATA_1)
            int_random_increments_44[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_44[63:32] & ~wmask);
    end
end

// int_random_increments_45[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_45[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_45_DATA_0)
            int_random_increments_45[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_45[31:0] & ~wmask);
    end
end

// int_random_increments_45[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_45[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_45_DATA_1)
            int_random_increments_45[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_45[63:32] & ~wmask);
    end
end

// int_random_increments_46[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_46[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_46_DATA_0)
            int_random_increments_46[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_46[31:0] & ~wmask);
    end
end

// int_random_increments_46[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_46[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_46_DATA_1)
            int_random_increments_46[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_46[63:32] & ~wmask);
    end
end

// int_random_increments_47[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_47[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_47_DATA_0)
            int_random_increments_47[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_47[31:0] & ~wmask);
    end
end

// int_random_increments_47[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_47[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_47_DATA_1)
            int_random_increments_47[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_47[63:32] & ~wmask);
    end
end

// int_random_increments_48[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_48[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_48_DATA_0)
            int_random_increments_48[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_48[31:0] & ~wmask);
    end
end

// int_random_increments_48[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_48[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_48_DATA_1)
            int_random_increments_48[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_48[63:32] & ~wmask);
    end
end

// int_random_increments_49[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_49[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_49_DATA_0)
            int_random_increments_49[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_49[31:0] & ~wmask);
    end
end

// int_random_increments_49[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_49[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_49_DATA_1)
            int_random_increments_49[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_49[63:32] & ~wmask);
    end
end

// int_random_increments_50[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_50[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_50_DATA_0)
            int_random_increments_50[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_50[31:0] & ~wmask);
    end
end

// int_random_increments_50[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_50[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_50_DATA_1)
            int_random_increments_50[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_50[63:32] & ~wmask);
    end
end

// int_random_increments_51[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_51[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_51_DATA_0)
            int_random_increments_51[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_51[31:0] & ~wmask);
    end
end

// int_random_increments_51[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_51[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_51_DATA_1)
            int_random_increments_51[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_51[63:32] & ~wmask);
    end
end

// int_random_increments_52[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_52[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_52_DATA_0)
            int_random_increments_52[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_52[31:0] & ~wmask);
    end
end

// int_random_increments_52[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_52[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_52_DATA_1)
            int_random_increments_52[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_52[63:32] & ~wmask);
    end
end

// int_random_increments_53[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_53[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_53_DATA_0)
            int_random_increments_53[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_53[31:0] & ~wmask);
    end
end

// int_random_increments_53[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_53[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_53_DATA_1)
            int_random_increments_53[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_53[63:32] & ~wmask);
    end
end

// int_random_increments_54[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_54[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_54_DATA_0)
            int_random_increments_54[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_54[31:0] & ~wmask);
    end
end

// int_random_increments_54[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_54[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_54_DATA_1)
            int_random_increments_54[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_54[63:32] & ~wmask);
    end
end

// int_random_increments_55[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_55[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_55_DATA_0)
            int_random_increments_55[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_55[31:0] & ~wmask);
    end
end

// int_random_increments_55[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_55[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_55_DATA_1)
            int_random_increments_55[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_55[63:32] & ~wmask);
    end
end

// int_random_increments_56[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_56[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_56_DATA_0)
            int_random_increments_56[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_56[31:0] & ~wmask);
    end
end

// int_random_increments_56[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_56[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_56_DATA_1)
            int_random_increments_56[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_56[63:32] & ~wmask);
    end
end

// int_random_increments_57[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_57[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_57_DATA_0)
            int_random_increments_57[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_57[31:0] & ~wmask);
    end
end

// int_random_increments_57[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_57[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_57_DATA_1)
            int_random_increments_57[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_57[63:32] & ~wmask);
    end
end

// int_random_increments_58[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_58[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_58_DATA_0)
            int_random_increments_58[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_58[31:0] & ~wmask);
    end
end

// int_random_increments_58[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_58[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_58_DATA_1)
            int_random_increments_58[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_58[63:32] & ~wmask);
    end
end

// int_random_increments_59[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_59[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_59_DATA_0)
            int_random_increments_59[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_59[31:0] & ~wmask);
    end
end

// int_random_increments_59[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_59[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_59_DATA_1)
            int_random_increments_59[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_59[63:32] & ~wmask);
    end
end

// int_random_increments_60[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_60[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_60_DATA_0)
            int_random_increments_60[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_60[31:0] & ~wmask);
    end
end

// int_random_increments_60[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_60[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_60_DATA_1)
            int_random_increments_60[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_60[63:32] & ~wmask);
    end
end

// int_random_increments_61[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_61[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_61_DATA_0)
            int_random_increments_61[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_61[31:0] & ~wmask);
    end
end

// int_random_increments_61[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_61[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_61_DATA_1)
            int_random_increments_61[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_61[63:32] & ~wmask);
    end
end

// int_random_increments_62[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_62[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_62_DATA_0)
            int_random_increments_62[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_62[31:0] & ~wmask);
    end
end

// int_random_increments_62[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_62[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_62_DATA_1)
            int_random_increments_62[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_62[63:32] & ~wmask);
    end
end

// int_random_increments_63[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_63[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_63_DATA_0)
            int_random_increments_63[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_63[31:0] & ~wmask);
    end
end

// int_random_increments_63[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_63[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_63_DATA_1)
            int_random_increments_63[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_63[63:32] & ~wmask);
    end
end

// int_random_increments_64[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_64[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_64_DATA_0)
            int_random_increments_64[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_64[31:0] & ~wmask);
    end
end

// int_random_increments_64[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_64[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_64_DATA_1)
            int_random_increments_64[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_64[63:32] & ~wmask);
    end
end

// int_random_increments_65[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_65[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_65_DATA_0)
            int_random_increments_65[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_65[31:0] & ~wmask);
    end
end

// int_random_increments_65[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_65[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_65_DATA_1)
            int_random_increments_65[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_65[63:32] & ~wmask);
    end
end

// int_random_increments_66[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_66[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_66_DATA_0)
            int_random_increments_66[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_66[31:0] & ~wmask);
    end
end

// int_random_increments_66[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_66[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_66_DATA_1)
            int_random_increments_66[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_66[63:32] & ~wmask);
    end
end

// int_random_increments_67[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_67[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_67_DATA_0)
            int_random_increments_67[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_67[31:0] & ~wmask);
    end
end

// int_random_increments_67[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_67[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_67_DATA_1)
            int_random_increments_67[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_67[63:32] & ~wmask);
    end
end

// int_random_increments_68[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_68[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_68_DATA_0)
            int_random_increments_68[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_68[31:0] & ~wmask);
    end
end

// int_random_increments_68[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_68[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_68_DATA_1)
            int_random_increments_68[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_68[63:32] & ~wmask);
    end
end

// int_random_increments_69[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_69[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_69_DATA_0)
            int_random_increments_69[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_69[31:0] & ~wmask);
    end
end

// int_random_increments_69[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_69[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_69_DATA_1)
            int_random_increments_69[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_69[63:32] & ~wmask);
    end
end

// int_random_increments_70[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_70[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_70_DATA_0)
            int_random_increments_70[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_70[31:0] & ~wmask);
    end
end

// int_random_increments_70[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_70[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_70_DATA_1)
            int_random_increments_70[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_70[63:32] & ~wmask);
    end
end

// int_random_increments_71[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_71[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_71_DATA_0)
            int_random_increments_71[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_71[31:0] & ~wmask);
    end
end

// int_random_increments_71[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_71[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_71_DATA_1)
            int_random_increments_71[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_71[63:32] & ~wmask);
    end
end

// int_random_increments_72[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_72[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_72_DATA_0)
            int_random_increments_72[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_72[31:0] & ~wmask);
    end
end

// int_random_increments_72[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_72[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_72_DATA_1)
            int_random_increments_72[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_72[63:32] & ~wmask);
    end
end

// int_random_increments_73[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_73[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_73_DATA_0)
            int_random_increments_73[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_73[31:0] & ~wmask);
    end
end

// int_random_increments_73[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_73[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_73_DATA_1)
            int_random_increments_73[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_73[63:32] & ~wmask);
    end
end

// int_random_increments_74[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_74[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_74_DATA_0)
            int_random_increments_74[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_74[31:0] & ~wmask);
    end
end

// int_random_increments_74[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_74[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_74_DATA_1)
            int_random_increments_74[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_74[63:32] & ~wmask);
    end
end

// int_random_increments_75[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_75[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_75_DATA_0)
            int_random_increments_75[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_75[31:0] & ~wmask);
    end
end

// int_random_increments_75[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_75[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_75_DATA_1)
            int_random_increments_75[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_75[63:32] & ~wmask);
    end
end

// int_random_increments_76[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_76[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_76_DATA_0)
            int_random_increments_76[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_76[31:0] & ~wmask);
    end
end

// int_random_increments_76[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_76[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_76_DATA_1)
            int_random_increments_76[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_76[63:32] & ~wmask);
    end
end

// int_random_increments_77[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_77[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_77_DATA_0)
            int_random_increments_77[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_77[31:0] & ~wmask);
    end
end

// int_random_increments_77[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_77[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_77_DATA_1)
            int_random_increments_77[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_77[63:32] & ~wmask);
    end
end

// int_random_increments_78[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_78[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_78_DATA_0)
            int_random_increments_78[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_78[31:0] & ~wmask);
    end
end

// int_random_increments_78[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_78[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_78_DATA_1)
            int_random_increments_78[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_78[63:32] & ~wmask);
    end
end

// int_random_increments_79[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_79[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_79_DATA_0)
            int_random_increments_79[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_79[31:0] & ~wmask);
    end
end

// int_random_increments_79[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_79[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_79_DATA_1)
            int_random_increments_79[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_79[63:32] & ~wmask);
    end
end

// int_random_increments_80[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_80[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_80_DATA_0)
            int_random_increments_80[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_80[31:0] & ~wmask);
    end
end

// int_random_increments_80[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_80[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_80_DATA_1)
            int_random_increments_80[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_80[63:32] & ~wmask);
    end
end

// int_random_increments_81[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_81[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_81_DATA_0)
            int_random_increments_81[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_81[31:0] & ~wmask);
    end
end

// int_random_increments_81[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_81[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_81_DATA_1)
            int_random_increments_81[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_81[63:32] & ~wmask);
    end
end

// int_random_increments_82[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_82[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_82_DATA_0)
            int_random_increments_82[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_82[31:0] & ~wmask);
    end
end

// int_random_increments_82[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_82[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_82_DATA_1)
            int_random_increments_82[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_82[63:32] & ~wmask);
    end
end

// int_random_increments_83[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_83[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_83_DATA_0)
            int_random_increments_83[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_83[31:0] & ~wmask);
    end
end

// int_random_increments_83[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_83[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_83_DATA_1)
            int_random_increments_83[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_83[63:32] & ~wmask);
    end
end

// int_random_increments_84[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_84[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_84_DATA_0)
            int_random_increments_84[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_84[31:0] & ~wmask);
    end
end

// int_random_increments_84[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_84[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_84_DATA_1)
            int_random_increments_84[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_84[63:32] & ~wmask);
    end
end

// int_random_increments_85[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_85[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_85_DATA_0)
            int_random_increments_85[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_85[31:0] & ~wmask);
    end
end

// int_random_increments_85[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_85[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_85_DATA_1)
            int_random_increments_85[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_85[63:32] & ~wmask);
    end
end

// int_random_increments_86[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_86[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_86_DATA_0)
            int_random_increments_86[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_86[31:0] & ~wmask);
    end
end

// int_random_increments_86[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_86[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_86_DATA_1)
            int_random_increments_86[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_86[63:32] & ~wmask);
    end
end

// int_random_increments_87[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_87[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_87_DATA_0)
            int_random_increments_87[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_87[31:0] & ~wmask);
    end
end

// int_random_increments_87[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_87[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_87_DATA_1)
            int_random_increments_87[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_87[63:32] & ~wmask);
    end
end

// int_random_increments_88[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_88[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_88_DATA_0)
            int_random_increments_88[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_88[31:0] & ~wmask);
    end
end

// int_random_increments_88[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_88[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_88_DATA_1)
            int_random_increments_88[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_88[63:32] & ~wmask);
    end
end

// int_random_increments_89[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_89[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_89_DATA_0)
            int_random_increments_89[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_89[31:0] & ~wmask);
    end
end

// int_random_increments_89[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_89[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_89_DATA_1)
            int_random_increments_89[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_89[63:32] & ~wmask);
    end
end

// int_random_increments_90[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_90[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_90_DATA_0)
            int_random_increments_90[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_90[31:0] & ~wmask);
    end
end

// int_random_increments_90[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_90[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_90_DATA_1)
            int_random_increments_90[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_90[63:32] & ~wmask);
    end
end

// int_random_increments_91[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_91[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_91_DATA_0)
            int_random_increments_91[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_91[31:0] & ~wmask);
    end
end

// int_random_increments_91[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_91[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_91_DATA_1)
            int_random_increments_91[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_91[63:32] & ~wmask);
    end
end

// int_random_increments_92[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_92[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_92_DATA_0)
            int_random_increments_92[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_92[31:0] & ~wmask);
    end
end

// int_random_increments_92[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_92[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_92_DATA_1)
            int_random_increments_92[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_92[63:32] & ~wmask);
    end
end

// int_random_increments_93[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_93[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_93_DATA_0)
            int_random_increments_93[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_93[31:0] & ~wmask);
    end
end

// int_random_increments_93[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_93[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_93_DATA_1)
            int_random_increments_93[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_93[63:32] & ~wmask);
    end
end

// int_random_increments_94[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_94[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_94_DATA_0)
            int_random_increments_94[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_94[31:0] & ~wmask);
    end
end

// int_random_increments_94[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_94[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_94_DATA_1)
            int_random_increments_94[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_94[63:32] & ~wmask);
    end
end

// int_random_increments_95[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_95[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_95_DATA_0)
            int_random_increments_95[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_95[31:0] & ~wmask);
    end
end

// int_random_increments_95[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_95[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_95_DATA_1)
            int_random_increments_95[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_95[63:32] & ~wmask);
    end
end

// int_random_increments_96[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_96[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_96_DATA_0)
            int_random_increments_96[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_96[31:0] & ~wmask);
    end
end

// int_random_increments_96[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_96[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_96_DATA_1)
            int_random_increments_96[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_96[63:32] & ~wmask);
    end
end

// int_random_increments_97[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_97[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_97_DATA_0)
            int_random_increments_97[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_97[31:0] & ~wmask);
    end
end

// int_random_increments_97[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_97[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_97_DATA_1)
            int_random_increments_97[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_97[63:32] & ~wmask);
    end
end

// int_random_increments_98[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_98[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_98_DATA_0)
            int_random_increments_98[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_98[31:0] & ~wmask);
    end
end

// int_random_increments_98[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_98[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_98_DATA_1)
            int_random_increments_98[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_98[63:32] & ~wmask);
    end
end

// int_random_increments_99[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_99[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_99_DATA_0)
            int_random_increments_99[31:0] <= (WDATA[31:0] & wmask) | (int_random_increments_99[31:0] & ~wmask);
    end
end

// int_random_increments_99[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_random_increments_99[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RANDOM_INCREMENTS_99_DATA_1)
            int_random_increments_99[63:32] <= (WDATA[31:0] & wmask) | (int_random_increments_99[63:32] & ~wmask);
    end
end

//synthesis translate_off
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (int_gie & ~int_isr[0] & int_ier[0] & ap_done)
            $display ("// Interrupt Monitor : interrupt for ap_done detected @ \"%0t\"", $time);
        if (int_gie & ~int_isr[1] & int_ier[1] & ap_ready)
            $display ("// Interrupt Monitor : interrupt for ap_ready detected @ \"%0t\"", $time);
    end
end
//synthesis translate_on

//------------------------Memory logic-------------------

endmodule
