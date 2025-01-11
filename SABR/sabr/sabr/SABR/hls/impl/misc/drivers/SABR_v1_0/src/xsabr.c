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

void XSabr_Set_S(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_S(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_S_DATA + 4) << 32;
    return Data;
}

void XSabr_Set_V(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_V(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_V_DATA + 4) << 32;
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

void XSabr_Set_random_increments(XSabr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_DATA, (u32)(Data));
    XSabr_WriteReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_DATA + 4, (u32)(Data >> 32));
}

u64 XSabr_Get_random_increments(XSabr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_DATA);
    Data += (u64)XSabr_ReadReg(InstancePtr->Control_BaseAddress, XSABR_CONTROL_ADDR_RANDOM_INCREMENTS_DATA + 4) << 32;
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

