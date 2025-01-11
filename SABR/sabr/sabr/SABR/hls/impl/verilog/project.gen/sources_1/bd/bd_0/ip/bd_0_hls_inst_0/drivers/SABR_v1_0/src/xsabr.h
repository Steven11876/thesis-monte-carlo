// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XSABR_H
#define XSABR_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xsabr_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XSabr_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XSabr;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSabr_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSabr_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSabr_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSabr_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XSabr_Initialize(XSabr *InstancePtr, UINTPTR BaseAddress);
XSabr_Config* XSabr_LookupConfig(UINTPTR BaseAddress);
#else
int XSabr_Initialize(XSabr *InstancePtr, u16 DeviceId);
XSabr_Config* XSabr_LookupConfig(u16 DeviceId);
#endif
int XSabr_CfgInitialize(XSabr *InstancePtr, XSabr_Config *ConfigPtr);
#else
int XSabr_Initialize(XSabr *InstancePtr, const char* InstanceName);
int XSabr_Release(XSabr *InstancePtr);
#endif

void XSabr_Start(XSabr *InstancePtr);
u32 XSabr_IsDone(XSabr *InstancePtr);
u32 XSabr_IsIdle(XSabr *InstancePtr);
u32 XSabr_IsReady(XSabr *InstancePtr);
void XSabr_Continue(XSabr *InstancePtr);
void XSabr_EnableAutoRestart(XSabr *InstancePtr);
void XSabr_DisableAutoRestart(XSabr *InstancePtr);

void XSabr_Set_S(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S(XSabr *InstancePtr);
void XSabr_Set_V(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V(XSabr *InstancePtr);
void XSabr_Set_S0(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S0(XSabr *InstancePtr);
void XSabr_Set_r(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_r(XSabr *InstancePtr);
void XSabr_Set_sigma_init(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_sigma_init(XSabr *InstancePtr);
void XSabr_Set_alpha(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_alpha(XSabr *InstancePtr);
void XSabr_Set_beta(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_beta(XSabr *InstancePtr);
void XSabr_Set_rho(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_rho(XSabr *InstancePtr);
void XSabr_Set_T(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_T(XSabr *InstancePtr);
void XSabr_Set_random_increments(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments(XSabr *InstancePtr);

void XSabr_InterruptGlobalEnable(XSabr *InstancePtr);
void XSabr_InterruptGlobalDisable(XSabr *InstancePtr);
void XSabr_InterruptEnable(XSabr *InstancePtr, u32 Mask);
void XSabr_InterruptDisable(XSabr *InstancePtr, u32 Mask);
void XSabr_InterruptClear(XSabr *InstancePtr, u32 Mask);
u32 XSabr_InterruptGetEnabled(XSabr *InstancePtr);
u32 XSabr_InterruptGetStatus(XSabr *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
