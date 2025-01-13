// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xsabr.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSabr_CfgInitialize(XSabr *InstancePtr, XSabr_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSabr_Start(XSabr *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_AP_CTRL) & 0x80;
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XSabr_IsDone(XSabr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XSabr_IsIdle(XSabr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XSabr_IsReady(XSabr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XSabr_Continue(XSabr *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_AP_CTRL) & 0x80;
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XSabr_EnableAutoRestart(XSabr *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XSabr_DisableAutoRestart(XSabr *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_AP_CTRL, 0);
}

void XSabr_Set_S_0(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_0_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_0_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_0(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_0_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_0_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_1(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_1_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_1_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_1(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_1_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_1_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_2(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_2_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_2_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_2(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_2_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_2_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_3(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_3_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_3_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_3(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_3_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_3_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_4(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_4_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_4_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_4(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_4_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_4_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_5(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_5_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_5_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_5(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_5_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_5_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_6(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_6_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_6_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_6(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_6_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_6_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_7(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_7_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_7_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_7(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_7_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_7_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_8(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_8_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_8_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_8(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_8_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_8_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_9(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_9_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_9_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_9(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_9_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_9_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_10(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_10_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_10_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_10(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_10_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_10_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_11(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_11_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_11_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_11(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_11_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_11_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_12(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_12_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_12_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_12(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_12_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_12_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_13(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_13_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_13_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_13(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_13_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_13_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_14(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_14_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_14_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_14(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_14_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_14_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_15(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_15_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_15_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_15(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_15_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_15_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_16(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_16_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_16_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_16(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_16_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_16_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_17(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_17_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_17_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_17(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_17_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_17_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_18(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_18_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_18_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_18(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_18_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_18_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_19(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_19_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_19_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_19(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_19_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_19_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_20(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_20_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_20_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_20(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_20_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_20_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_21(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_21_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_21_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_21(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_21_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_21_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_22(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_22_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_22_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_22(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_22_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_22_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_23(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_23_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_23_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_23(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_23_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_23_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_24(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_24_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_24_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_24(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_24_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_24_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_25(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_25_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_25_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_25(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_25_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_25_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_26(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_26_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_26_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_26(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_26_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_26_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_27(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_27_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_27_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_27(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_27_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_27_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_28(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_28_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_28_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_28(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_28_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_28_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_29(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_29_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_29_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_29(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_29_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_29_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_30(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_30_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_30_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_30(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_30_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_30_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_31(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_31_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_31_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_31(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_31_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_31_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_32(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_32_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_32_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_32(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_32_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_32_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_33(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_33_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_33_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_33(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_33_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_33_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_34(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_34_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_34_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_34(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_34_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_34_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_35(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_35_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_35_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_35(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_35_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_35_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_36(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_36_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_36_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_36(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_36_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_36_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_37(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_37_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_37_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_37(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_37_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_37_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_38(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_38_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_38_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_38(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_38_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_38_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_39(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_39_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_39_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_39(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_39_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_39_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_40(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_40_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_40_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_40(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_40_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_40_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_41(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_41_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_41_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_41(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_41_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_41_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_42(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_42_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_42_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_42(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_42_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_42_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_43(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_43_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_43_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_43(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_43_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_43_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_44(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_44_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_44_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_44(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_44_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_44_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_45(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_45_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_45_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_45(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_45_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_45_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_46(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_46_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_46_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_46(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_46_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_46_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_47(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_47_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_47_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_47(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_47_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_47_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_48(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_48_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_48_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_48(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_48_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_48_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_49(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_49_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_49_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_49(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_49_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_49_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_50(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_50_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_50_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_50(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_50_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_50_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_51(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_51_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_51_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_51(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_51_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_51_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_52(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_52_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_52_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_52(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_52_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_52_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_53(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_53_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_53_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_53(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_53_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_53_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_54(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_54_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_54_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_54(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_54_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_54_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_55(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_55_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_55_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_55(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_55_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_55_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_56(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_56_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_56_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_56(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_56_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_56_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_57(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_57_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_57_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_57(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_57_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_57_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_58(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_58_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_58_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_58(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_58_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_58_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_59(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_59_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_59_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_59(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_59_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_59_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_60(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_60_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_60_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_60(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_60_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_60_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_61(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_61_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_61_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_61(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_61_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_61_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_62(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_62_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_62_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_62(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_62_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_62_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_63(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_63_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_63_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_63(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_63_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_63_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_64(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_64_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_64_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_64(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_64_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_64_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_65(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_65_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_65_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_65(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_65_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_65_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_66(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_66_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_66_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_66(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_66_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_66_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_67(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_67_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_67_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_67(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_67_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_67_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_68(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_68_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_68_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_68(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_68_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_68_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_69(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_69_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_69_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_69(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_69_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_69_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_70(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_70_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_70_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_70(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_70_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_70_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_71(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_71_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_71_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_71(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_71_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_71_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_72(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_72_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_72_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_72(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_72_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_72_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_73(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_73_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_73_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_73(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_73_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_73_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_74(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_74_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_74_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_74(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_74_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_74_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_75(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_75_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_75_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_75(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_75_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_75_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_76(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_76_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_76_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_76(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_76_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_76_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_77(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_77_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_77_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_77(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_77_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_77_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_78(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_78_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_78_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_78(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_78_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_78_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_79(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_79_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_79_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_79(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_79_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_79_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_80(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_80_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_80_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_80(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_80_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_80_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_81(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_81_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_81_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_81(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_81_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_81_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_82(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_82_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_82_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_82(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_82_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_82_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_83(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_83_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_83_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_83(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_83_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_83_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_84(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_84_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_84_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_84(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_84_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_84_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_85(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_85_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_85_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_85(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_85_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_85_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_86(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_86_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_86_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_86(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_86_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_86_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_87(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_87_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_87_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_87(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_87_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_87_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_88(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_88_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_88_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_88(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_88_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_88_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_89(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_89_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_89_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_89(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_89_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_89_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_90(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_90_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_90_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_90(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_90_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_90_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_91(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_91_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_91_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_91(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_91_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_91_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_92(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_92_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_92_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_92(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_92_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_92_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_93(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_93_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_93_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_93(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_93_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_93_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_94(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_94_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_94_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_94(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_94_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_94_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_95(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_95_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_95_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_95(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_95_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_95_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_96(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_96_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_96_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_96(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_96_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_96_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_97(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_97_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_97_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_97(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_97_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_97_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_98(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_98_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_98_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_98(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_98_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_98_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S_99(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_99_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_99_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S_99(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_99_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_99_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_0(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_0_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_0_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_0(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_0_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_0_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_1(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_1_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_1_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_1(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_1_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_1_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_2(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_2_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_2_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_2(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_2_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_2_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_3(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_3_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_3_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_3(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_3_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_3_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_4(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_4_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_4_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_4(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_4_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_4_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_5(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_5_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_5_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_5(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_5_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_5_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_6(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_6_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_6_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_6(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_6_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_6_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_7(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_7_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_7_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_7(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_7_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_7_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_8(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_8_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_8_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_8(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_8_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_8_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_9(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_9_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_9_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_9(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_9_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_9_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_10(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_10_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_10_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_10(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_10_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_10_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_11(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_11_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_11_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_11(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_11_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_11_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_12(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_12_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_12_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_12(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_12_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_12_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_13(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_13_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_13_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_13(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_13_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_13_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_14(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_14_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_14_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_14(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_14_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_14_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_15(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_15_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_15_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_15(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_15_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_15_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_16(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_16_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_16_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_16(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_16_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_16_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_17(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_17_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_17_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_17(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_17_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_17_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_18(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_18_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_18_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_18(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_18_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_18_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_19(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_19_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_19_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_19(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_19_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_19_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_20(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_20_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_20_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_20(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_20_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_20_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_21(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_21_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_21_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_21(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_21_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_21_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_22(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_22_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_22_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_22(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_22_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_22_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_23(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_23_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_23_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_23(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_23_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_23_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_24(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_24_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_24_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_24(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_24_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_24_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_25(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_25_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_25_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_25(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_25_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_25_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_26(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_26_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_26_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_26(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_26_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_26_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_27(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_27_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_27_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_27(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_27_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_27_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_28(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_28_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_28_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_28(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_28_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_28_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_29(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_29_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_29_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_29(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_29_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_29_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_30(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_30_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_30_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_30(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_30_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_30_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_31(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_31_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_31_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_31(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_31_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_31_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_32(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_32_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_32_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_32(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_32_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_32_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_33(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_33_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_33_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_33(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_33_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_33_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_34(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_34_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_34_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_34(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_34_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_34_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_35(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_35_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_35_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_35(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_35_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_35_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_36(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_36_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_36_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_36(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_36_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_36_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_37(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_37_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_37_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_37(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_37_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_37_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_38(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_38_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_38_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_38(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_38_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_38_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_39(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_39_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_39_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_39(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_39_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_39_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_40(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_40_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_40_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_40(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_40_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_40_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_41(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_41_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_41_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_41(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_41_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_41_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_42(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_42_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_42_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_42(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_42_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_42_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_43(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_43_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_43_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_43(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_43_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_43_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_44(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_44_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_44_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_44(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_44_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_44_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_45(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_45_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_45_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_45(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_45_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_45_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_46(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_46_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_46_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_46(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_46_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_46_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_47(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_47_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_47_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_47(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_47_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_47_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_48(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_48_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_48_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_48(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_48_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_48_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_49(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_49_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_49_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_49(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_49_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_49_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_50(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_50_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_50_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_50(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_50_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_50_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_51(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_51_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_51_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_51(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_51_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_51_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_52(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_52_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_52_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_52(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_52_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_52_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_53(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_53_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_53_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_53(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_53_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_53_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_54(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_54_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_54_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_54(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_54_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_54_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_55(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_55_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_55_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_55(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_55_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_55_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_56(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_56_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_56_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_56(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_56_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_56_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_57(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_57_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_57_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_57(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_57_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_57_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_58(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_58_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_58_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_58(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_58_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_58_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_59(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_59_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_59_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_59(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_59_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_59_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_60(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_60_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_60_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_60(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_60_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_60_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_61(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_61_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_61_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_61(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_61_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_61_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_62(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_62_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_62_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_62(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_62_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_62_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_63(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_63_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_63_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_63(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_63_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_63_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_64(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_64_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_64_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_64(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_64_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_64_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_65(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_65_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_65_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_65(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_65_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_65_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_66(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_66_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_66_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_66(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_66_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_66_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_67(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_67_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_67_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_67(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_67_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_67_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_68(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_68_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_68_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_68(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_68_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_68_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_69(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_69_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_69_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_69(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_69_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_69_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_70(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_70_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_70_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_70(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_70_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_70_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_71(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_71_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_71_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_71(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_71_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_71_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_72(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_72_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_72_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_72(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_72_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_72_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_73(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_73_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_73_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_73(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_73_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_73_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_74(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_74_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_74_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_74(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_74_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_74_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_75(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_75_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_75_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_75(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_75_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_75_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_76(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_76_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_76_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_76(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_76_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_76_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_77(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_77_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_77_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_77(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_77_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_77_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_78(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_78_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_78_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_78(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_78_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_78_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_79(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_79_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_79_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_79(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_79_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_79_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_80(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_80_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_80_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_80(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_80_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_80_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_81(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_81_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_81_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_81(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_81_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_81_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_82(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_82_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_82_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_82(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_82_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_82_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_83(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_83_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_83_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_83(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_83_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_83_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_84(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_84_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_84_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_84(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_84_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_84_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_85(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_85_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_85_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_85(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_85_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_85_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_86(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_86_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_86_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_86(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_86_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_86_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_87(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_87_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_87_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_87(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_87_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_87_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_88(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_88_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_88_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_88(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_88_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_88_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_89(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_89_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_89_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_89(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_89_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_89_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_90(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_90_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_90_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_90(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_90_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_90_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_91(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_91_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_91_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_91(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_91_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_91_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_92(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_92_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_92_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_92(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_92_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_92_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_93(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_93_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_93_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_93(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_93_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_93_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_94(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_94_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_94_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_94(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_94_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_94_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_95(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_95_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_95_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_95(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_95_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_95_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_96(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_96_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_96_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_96(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_96_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_96_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_97(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_97_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_97_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_97(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_97_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_97_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_98(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_98_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_98_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_98(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_98_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_98_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V_99(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_99_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_99_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V_99(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_99_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_99_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_S0(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S0_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S0_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S0(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S0_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S0_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_r(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_R_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_R_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_r(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_R_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_R_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_sigma_init(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_SIGMA_INIT_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_SIGMA_INIT_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_sigma_init(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_SIGMA_INIT_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_SIGMA_INIT_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_alpha(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_ALPHA_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_ALPHA_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_alpha(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_ALPHA_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_ALPHA_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_beta(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_BETA_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_BETA_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_beta(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_BETA_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_BETA_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_rho(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RHO_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RHO_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_rho(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RHO_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RHO_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_T(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_T_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_T_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_T(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_T_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_T_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_0(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_0_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_0_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_0(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_0_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_0_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_1(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_1_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_1_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_1(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_1_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_1_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_2(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_2_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_2_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_2(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_2_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_2_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_3(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_3_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_3_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_3(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_3_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_3_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_4(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_4_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_4_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_4(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_4_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_4_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_5(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_5_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_5_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_5(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_5_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_5_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_6(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_6_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_6_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_6(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_6_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_6_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_7(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_7_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_7_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_7(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_7_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_7_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_8(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_8_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_8_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_8(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_8_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_8_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_9(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_9_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_9_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_9(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_9_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_9_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_10(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_10_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_10_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_10(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_10_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_10_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_11(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_11_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_11_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_11(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_11_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_11_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_12(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_12_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_12_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_12(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_12_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_12_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_13(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_13_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_13_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_13(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_13_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_13_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_14(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_14_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_14_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_14(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_14_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_14_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_15(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_15_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_15_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_15(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_15_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_15_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_16(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_16_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_16_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_16(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_16_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_16_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_17(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_17_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_17_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_17(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_17_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_17_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_18(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_18_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_18_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_18(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_18_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_18_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_19(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_19_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_19_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_19(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_19_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_19_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_20(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_20_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_20_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_20(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_20_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_20_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_21(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_21_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_21_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_21(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_21_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_21_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_22(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_22_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_22_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_22(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_22_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_22_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_23(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_23_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_23_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_23(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_23_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_23_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_24(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_24_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_24_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_24(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_24_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_24_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_25(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_25_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_25_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_25(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_25_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_25_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_26(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_26_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_26_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_26(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_26_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_26_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_27(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_27_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_27_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_27(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_27_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_27_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_28(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_28_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_28_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_28(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_28_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_28_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_29(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_29_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_29_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_29(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_29_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_29_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_30(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_30_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_30_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_30(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_30_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_30_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_31(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_31_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_31_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_31(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_31_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_31_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_32(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_32_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_32_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_32(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_32_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_32_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_33(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_33_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_33_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_33(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_33_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_33_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_34(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_34_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_34_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_34(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_34_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_34_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_35(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_35_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_35_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_35(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_35_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_35_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_36(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_36_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_36_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_36(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_36_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_36_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_37(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_37_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_37_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_37(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_37_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_37_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_38(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_38_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_38_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_38(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_38_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_38_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_39(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_39_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_39_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_39(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_39_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_39_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_40(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_40_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_40_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_40(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_40_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_40_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_41(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_41_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_41_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_41(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_41_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_41_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_42(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_42_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_42_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_42(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_42_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_42_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_43(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_43_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_43_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_43(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_43_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_43_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_44(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_44_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_44_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_44(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_44_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_44_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_45(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_45_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_45_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_45(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_45_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_45_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_46(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_46_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_46_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_46(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_46_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_46_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_47(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_47_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_47_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_47(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_47_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_47_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_48(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_48_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_48_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_48(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_48_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_48_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_49(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_49_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_49_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_49(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_49_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_49_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_50(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_50_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_50_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_50(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_50_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_50_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_51(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_51_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_51_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_51(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_51_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_51_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_52(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_52_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_52_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_52(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_52_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_52_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_53(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_53_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_53_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_53(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_53_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_53_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_54(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_54_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_54_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_54(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_54_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_54_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_55(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_55_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_55_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_55(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_55_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_55_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_56(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_56_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_56_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_56(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_56_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_56_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_57(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_57_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_57_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_57(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_57_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_57_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_58(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_58_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_58_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_58(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_58_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_58_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_59(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_59_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_59_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_59(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_59_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_59_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_60(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_60_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_60_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_60(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_60_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_60_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_61(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_61_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_61_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_61(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_61_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_61_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_62(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_62_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_62_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_62(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_62_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_62_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_63(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_63_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_63_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_63(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_63_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_63_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_64(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_64_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_64_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_64(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_64_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_64_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_65(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_65_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_65_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_65(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_65_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_65_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_66(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_66_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_66_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_66(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_66_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_66_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_67(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_67_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_67_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_67(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_67_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_67_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_68(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_68_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_68_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_68(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_68_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_68_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_69(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_69_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_69_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_69(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_69_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_69_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_70(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_70_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_70_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_70(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_70_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_70_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_71(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_71_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_71_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_71(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_71_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_71_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_72(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_72_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_72_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_72(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_72_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_72_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_73(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_73_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_73_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_73(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_73_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_73_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_74(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_74_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_74_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_74(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_74_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_74_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_75(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_75_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_75_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_75(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_75_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_75_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_76(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_76_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_76_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_76(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_76_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_76_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_77(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_77_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_77_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_77(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_77_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_77_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_78(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_78_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_78_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_78(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_78_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_78_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_79(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_79_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_79_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_79(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_79_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_79_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_80(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_80_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_80_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_80(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_80_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_80_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_81(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_81_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_81_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_81(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_81_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_81_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_82(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_82_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_82_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_82(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_82_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_82_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_83(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_83_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_83_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_83(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_83_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_83_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_84(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_84_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_84_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_84(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_84_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_84_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_85(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_85_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_85_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_85(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_85_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_85_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_86(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_86_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_86_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_86(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_86_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_86_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_87(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_87_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_87_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_87(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_87_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_87_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_88(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_88_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_88_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_88(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_88_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_88_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_89(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_89_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_89_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_89(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_89_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_89_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_90(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_90_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_90_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_90(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_90_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_90_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_91(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_91_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_91_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_91(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_91_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_91_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_92(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_92_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_92_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_92(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_92_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_92_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_93(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_93_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_93_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_93(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_93_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_93_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_94(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_94_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_94_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_94(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_94_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_94_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_95(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_95_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_95_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_95(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_95_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_95_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_96(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_96_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_96_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_96(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_96_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_96_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_97(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_97_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_97_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_97(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_97_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_97_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_98(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_98_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_98_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_98(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_98_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_98_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_random_increments_99(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_99_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_99_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments_99(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_99_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_99_DATA + 4) << 32;
    return Data;
}

void XSabr_InterruptGlobalEnable(XSabr *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_GIE, 1);
}

void XSabr_InterruptGlobalDisable(XSabr *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_GIE, 0);
}

void XSabr_InterruptEnable(XSabr *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_IER);
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_IER, Register | Mask);
}

void XSabr_InterruptDisable(XSabr *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_IER);
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_IER, Register & (~Mask));
}

void XSabr_InterruptClear(XSabr *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_ISR, Mask);
}

u32 XSabr_InterruptGetEnabled(XSabr *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_IER);
}

u32 XSabr_InterruptGetStatus(XSabr *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_ISR);
}

