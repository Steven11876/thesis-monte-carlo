// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XGBM_H
#define XGBM_H

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
#include "xgbm_hw.h"

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
} XGbm_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XGbm;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XGbm_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XGbm_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XGbm_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XGbm_ReadReg(BaseAddress, RegOffset) \
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
int XGbm_Initialize(XGbm *InstancePtr, UINTPTR BaseAddress);
XGbm_Config* XGbm_LookupConfig(UINTPTR BaseAddress);
#else
int XGbm_Initialize(XGbm *InstancePtr, u16 DeviceId);
XGbm_Config* XGbm_LookupConfig(u16 DeviceId);
#endif
int XGbm_CfgInitialize(XGbm *InstancePtr, XGbm_Config *ConfigPtr);
#else
int XGbm_Initialize(XGbm *InstancePtr, const char* InstanceName);
int XGbm_Release(XGbm *InstancePtr);
#endif

void XGbm_Start(XGbm *InstancePtr);
u32 XGbm_IsDone(XGbm *InstancePtr);
u32 XGbm_IsIdle(XGbm *InstancePtr);
u32 XGbm_IsReady(XGbm *InstancePtr);
void XGbm_Continue(XGbm *InstancePtr);
void XGbm_EnableAutoRestart(XGbm *InstancePtr);
void XGbm_DisableAutoRestart(XGbm *InstancePtr);

void XGbm_Set_S(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S(XGbm *InstancePtr);
void XGbm_Set_S0(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S0(XGbm *InstancePtr);
void XGbm_Set_r(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_r(XGbm *InstancePtr);
void XGbm_Set_sigma(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_sigma(XGbm *InstancePtr);
void XGbm_Set_T(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_T(XGbm *InstancePtr);
void XGbm_Set_random_increments(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments(XGbm *InstancePtr);

void XGbm_InterruptGlobalEnable(XGbm *InstancePtr);
void XGbm_InterruptGlobalDisable(XGbm *InstancePtr);
void XGbm_InterruptEnable(XGbm *InstancePtr, u32 Mask);
void XGbm_InterruptDisable(XGbm *InstancePtr, u32 Mask);
void XGbm_InterruptClear(XGbm *InstancePtr, u32 Mask);
u32 XGbm_InterruptGetEnabled(XGbm *InstancePtr);
u32 XGbm_InterruptGetStatus(XGbm *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
