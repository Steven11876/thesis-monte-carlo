// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xgbm.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XGbm_CfgInitialize(XGbm *InstancePtr, XGbm_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XGbm_Start(XGbm *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGbm_ReadReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_AP_CTRL) & 0x80;
    XGbm_WriteReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XGbm_IsDone(XGbm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGbm_ReadReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XGbm_IsIdle(XGbm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGbm_ReadReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XGbm_IsReady(XGbm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGbm_ReadReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XGbm_Continue(XGbm *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGbm_ReadReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_AP_CTRL) & 0x80;
    XGbm_WriteReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XGbm_EnableAutoRestart(XGbm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGbm_WriteReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XGbm_DisableAutoRestart(XGbm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGbm_WriteReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_AP_CTRL, 0);
}

void XGbm_Set_S(XGbm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGbm_WriteReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_S_DATA, (u32)(Data));
    XGbm_WriteReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_S_DATA + 4, (u32)(Data >> 32));
}

u64 XGbm_Get_S(XGbm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGbm_ReadReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_S_DATA);
    Data += (u64)XGbm_ReadReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_S_DATA + 4) << 32;
    return Data;
}

void XGbm_Set_S0(XGbm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGbm_WriteReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_S0_DATA, (u32)(Data));
    XGbm_WriteReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_S0_DATA + 4, (u32)(Data >> 32));
}

u64 XGbm_Get_S0(XGbm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGbm_ReadReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_S0_DATA);
    Data += (u64)XGbm_ReadReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_S0_DATA + 4) << 32;
    return Data;
}

void XGbm_Set_r(XGbm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGbm_WriteReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_R_DATA, (u32)(Data));
    XGbm_WriteReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_R_DATA + 4, (u32)(Data >> 32));
}

u64 XGbm_Get_r(XGbm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGbm_ReadReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_R_DATA);
    Data += (u64)XGbm_ReadReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_R_DATA + 4) << 32;
    return Data;
}

void XGbm_Set_sigma(XGbm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGbm_WriteReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_SIGMA_DATA, (u32)(Data));
    XGbm_WriteReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_SIGMA_DATA + 4, (u32)(Data >> 32));
}

u64 XGbm_Get_sigma(XGbm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGbm_ReadReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_SIGMA_DATA);
    Data += (u64)XGbm_ReadReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_SIGMA_DATA + 4) << 32;
    return Data;
}

void XGbm_Set_T(XGbm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGbm_WriteReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_T_DATA, (u32)(Data));
    XGbm_WriteReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_T_DATA + 4, (u32)(Data >> 32));
}

u64 XGbm_Get_T(XGbm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGbm_ReadReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_T_DATA);
    Data += (u64)XGbm_ReadReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_T_DATA + 4) << 32;
    return Data;
}

void XGbm_Set_random_increments(XGbm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGbm_WriteReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_RANDOM_INCREMENTS_DATA, (u32)(Data));
    XGbm_WriteReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_RANDOM_INCREMENTS_DATA + 4, (u32)(Data >> 32));
}

u64 XGbm_Get_random_increments(XGbm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGbm_ReadReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_RANDOM_INCREMENTS_DATA);
    Data += (u64)XGbm_ReadReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_RANDOM_INCREMENTS_DATA + 4) << 32;
    return Data;
}

void XGbm_InterruptGlobalEnable(XGbm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGbm_WriteReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_GIE, 1);
}

void XGbm_InterruptGlobalDisable(XGbm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGbm_WriteReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_GIE, 0);
}

void XGbm_InterruptEnable(XGbm *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XGbm_ReadReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_IER);
    XGbm_WriteReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_IER, Register | Mask);
}

void XGbm_InterruptDisable(XGbm *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XGbm_ReadReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_IER);
    XGbm_WriteReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_IER, Register & (~Mask));
}

void XGbm_InterruptClear(XGbm *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGbm_WriteReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_ISR, Mask);
}

u32 XGbm_InterruptGetEnabled(XGbm *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGbm_ReadReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_IER);
}

u32 XGbm_InterruptGetStatus(XGbm *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGbm_ReadReg(InstancePtr->Control_BaseAddress, XGBM_CONTROL_ADDR_ISR);
}

