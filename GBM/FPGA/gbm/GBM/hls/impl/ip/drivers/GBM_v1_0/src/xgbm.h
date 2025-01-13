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

void XGbm_Set_S_0(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_0(XGbm *InstancePtr);
void XGbm_Set_S_1(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_1(XGbm *InstancePtr);
void XGbm_Set_S_2(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_2(XGbm *InstancePtr);
void XGbm_Set_S_3(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_3(XGbm *InstancePtr);
void XGbm_Set_S_4(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_4(XGbm *InstancePtr);
void XGbm_Set_S_5(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_5(XGbm *InstancePtr);
void XGbm_Set_S_6(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_6(XGbm *InstancePtr);
void XGbm_Set_S_7(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_7(XGbm *InstancePtr);
void XGbm_Set_S_8(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_8(XGbm *InstancePtr);
void XGbm_Set_S_9(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_9(XGbm *InstancePtr);
void XGbm_Set_S_10(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_10(XGbm *InstancePtr);
void XGbm_Set_S_11(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_11(XGbm *InstancePtr);
void XGbm_Set_S_12(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_12(XGbm *InstancePtr);
void XGbm_Set_S_13(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_13(XGbm *InstancePtr);
void XGbm_Set_S_14(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_14(XGbm *InstancePtr);
void XGbm_Set_S_15(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_15(XGbm *InstancePtr);
void XGbm_Set_S_16(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_16(XGbm *InstancePtr);
void XGbm_Set_S_17(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_17(XGbm *InstancePtr);
void XGbm_Set_S_18(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_18(XGbm *InstancePtr);
void XGbm_Set_S_19(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_19(XGbm *InstancePtr);
void XGbm_Set_S_20(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_20(XGbm *InstancePtr);
void XGbm_Set_S_21(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_21(XGbm *InstancePtr);
void XGbm_Set_S_22(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_22(XGbm *InstancePtr);
void XGbm_Set_S_23(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_23(XGbm *InstancePtr);
void XGbm_Set_S_24(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_24(XGbm *InstancePtr);
void XGbm_Set_S_25(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_25(XGbm *InstancePtr);
void XGbm_Set_S_26(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_26(XGbm *InstancePtr);
void XGbm_Set_S_27(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_27(XGbm *InstancePtr);
void XGbm_Set_S_28(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_28(XGbm *InstancePtr);
void XGbm_Set_S_29(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_29(XGbm *InstancePtr);
void XGbm_Set_S_30(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_30(XGbm *InstancePtr);
void XGbm_Set_S_31(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_31(XGbm *InstancePtr);
void XGbm_Set_S_32(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_32(XGbm *InstancePtr);
void XGbm_Set_S_33(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_33(XGbm *InstancePtr);
void XGbm_Set_S_34(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_34(XGbm *InstancePtr);
void XGbm_Set_S_35(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_35(XGbm *InstancePtr);
void XGbm_Set_S_36(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_36(XGbm *InstancePtr);
void XGbm_Set_S_37(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_37(XGbm *InstancePtr);
void XGbm_Set_S_38(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_38(XGbm *InstancePtr);
void XGbm_Set_S_39(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_39(XGbm *InstancePtr);
void XGbm_Set_S_40(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_40(XGbm *InstancePtr);
void XGbm_Set_S_41(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_41(XGbm *InstancePtr);
void XGbm_Set_S_42(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_42(XGbm *InstancePtr);
void XGbm_Set_S_43(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_43(XGbm *InstancePtr);
void XGbm_Set_S_44(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_44(XGbm *InstancePtr);
void XGbm_Set_S_45(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_45(XGbm *InstancePtr);
void XGbm_Set_S_46(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_46(XGbm *InstancePtr);
void XGbm_Set_S_47(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_47(XGbm *InstancePtr);
void XGbm_Set_S_48(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_48(XGbm *InstancePtr);
void XGbm_Set_S_49(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_49(XGbm *InstancePtr);
void XGbm_Set_S_50(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_50(XGbm *InstancePtr);
void XGbm_Set_S_51(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_51(XGbm *InstancePtr);
void XGbm_Set_S_52(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_52(XGbm *InstancePtr);
void XGbm_Set_S_53(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_53(XGbm *InstancePtr);
void XGbm_Set_S_54(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_54(XGbm *InstancePtr);
void XGbm_Set_S_55(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_55(XGbm *InstancePtr);
void XGbm_Set_S_56(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_56(XGbm *InstancePtr);
void XGbm_Set_S_57(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_57(XGbm *InstancePtr);
void XGbm_Set_S_58(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_58(XGbm *InstancePtr);
void XGbm_Set_S_59(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_59(XGbm *InstancePtr);
void XGbm_Set_S_60(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_60(XGbm *InstancePtr);
void XGbm_Set_S_61(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_61(XGbm *InstancePtr);
void XGbm_Set_S_62(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_62(XGbm *InstancePtr);
void XGbm_Set_S_63(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_63(XGbm *InstancePtr);
void XGbm_Set_S_64(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_64(XGbm *InstancePtr);
void XGbm_Set_S_65(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_65(XGbm *InstancePtr);
void XGbm_Set_S_66(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_66(XGbm *InstancePtr);
void XGbm_Set_S_67(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_67(XGbm *InstancePtr);
void XGbm_Set_S_68(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_68(XGbm *InstancePtr);
void XGbm_Set_S_69(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_69(XGbm *InstancePtr);
void XGbm_Set_S_70(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_70(XGbm *InstancePtr);
void XGbm_Set_S_71(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_71(XGbm *InstancePtr);
void XGbm_Set_S_72(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_72(XGbm *InstancePtr);
void XGbm_Set_S_73(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_73(XGbm *InstancePtr);
void XGbm_Set_S_74(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_74(XGbm *InstancePtr);
void XGbm_Set_S_75(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_75(XGbm *InstancePtr);
void XGbm_Set_S_76(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_76(XGbm *InstancePtr);
void XGbm_Set_S_77(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_77(XGbm *InstancePtr);
void XGbm_Set_S_78(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_78(XGbm *InstancePtr);
void XGbm_Set_S_79(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_79(XGbm *InstancePtr);
void XGbm_Set_S_80(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_80(XGbm *InstancePtr);
void XGbm_Set_S_81(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_81(XGbm *InstancePtr);
void XGbm_Set_S_82(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_82(XGbm *InstancePtr);
void XGbm_Set_S_83(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_83(XGbm *InstancePtr);
void XGbm_Set_S_84(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_84(XGbm *InstancePtr);
void XGbm_Set_S_85(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_85(XGbm *InstancePtr);
void XGbm_Set_S_86(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_86(XGbm *InstancePtr);
void XGbm_Set_S_87(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_87(XGbm *InstancePtr);
void XGbm_Set_S_88(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_88(XGbm *InstancePtr);
void XGbm_Set_S_89(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_89(XGbm *InstancePtr);
void XGbm_Set_S_90(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_90(XGbm *InstancePtr);
void XGbm_Set_S_91(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_91(XGbm *InstancePtr);
void XGbm_Set_S_92(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_92(XGbm *InstancePtr);
void XGbm_Set_S_93(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_93(XGbm *InstancePtr);
void XGbm_Set_S_94(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_94(XGbm *InstancePtr);
void XGbm_Set_S_95(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_95(XGbm *InstancePtr);
void XGbm_Set_S_96(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_96(XGbm *InstancePtr);
void XGbm_Set_S_97(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_97(XGbm *InstancePtr);
void XGbm_Set_S_98(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_98(XGbm *InstancePtr);
void XGbm_Set_S_99(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S_99(XGbm *InstancePtr);
void XGbm_Set_S0(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_S0(XGbm *InstancePtr);
void XGbm_Set_r(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_r(XGbm *InstancePtr);
void XGbm_Set_sigma(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_sigma(XGbm *InstancePtr);
void XGbm_Set_T(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_T(XGbm *InstancePtr);
void XGbm_Set_random_increments_0(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_0(XGbm *InstancePtr);
void XGbm_Set_random_increments_1(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_1(XGbm *InstancePtr);
void XGbm_Set_random_increments_2(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_2(XGbm *InstancePtr);
void XGbm_Set_random_increments_3(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_3(XGbm *InstancePtr);
void XGbm_Set_random_increments_4(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_4(XGbm *InstancePtr);
void XGbm_Set_random_increments_5(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_5(XGbm *InstancePtr);
void XGbm_Set_random_increments_6(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_6(XGbm *InstancePtr);
void XGbm_Set_random_increments_7(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_7(XGbm *InstancePtr);
void XGbm_Set_random_increments_8(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_8(XGbm *InstancePtr);
void XGbm_Set_random_increments_9(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_9(XGbm *InstancePtr);
void XGbm_Set_random_increments_10(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_10(XGbm *InstancePtr);
void XGbm_Set_random_increments_11(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_11(XGbm *InstancePtr);
void XGbm_Set_random_increments_12(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_12(XGbm *InstancePtr);
void XGbm_Set_random_increments_13(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_13(XGbm *InstancePtr);
void XGbm_Set_random_increments_14(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_14(XGbm *InstancePtr);
void XGbm_Set_random_increments_15(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_15(XGbm *InstancePtr);
void XGbm_Set_random_increments_16(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_16(XGbm *InstancePtr);
void XGbm_Set_random_increments_17(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_17(XGbm *InstancePtr);
void XGbm_Set_random_increments_18(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_18(XGbm *InstancePtr);
void XGbm_Set_random_increments_19(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_19(XGbm *InstancePtr);
void XGbm_Set_random_increments_20(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_20(XGbm *InstancePtr);
void XGbm_Set_random_increments_21(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_21(XGbm *InstancePtr);
void XGbm_Set_random_increments_22(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_22(XGbm *InstancePtr);
void XGbm_Set_random_increments_23(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_23(XGbm *InstancePtr);
void XGbm_Set_random_increments_24(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_24(XGbm *InstancePtr);
void XGbm_Set_random_increments_25(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_25(XGbm *InstancePtr);
void XGbm_Set_random_increments_26(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_26(XGbm *InstancePtr);
void XGbm_Set_random_increments_27(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_27(XGbm *InstancePtr);
void XGbm_Set_random_increments_28(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_28(XGbm *InstancePtr);
void XGbm_Set_random_increments_29(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_29(XGbm *InstancePtr);
void XGbm_Set_random_increments_30(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_30(XGbm *InstancePtr);
void XGbm_Set_random_increments_31(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_31(XGbm *InstancePtr);
void XGbm_Set_random_increments_32(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_32(XGbm *InstancePtr);
void XGbm_Set_random_increments_33(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_33(XGbm *InstancePtr);
void XGbm_Set_random_increments_34(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_34(XGbm *InstancePtr);
void XGbm_Set_random_increments_35(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_35(XGbm *InstancePtr);
void XGbm_Set_random_increments_36(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_36(XGbm *InstancePtr);
void XGbm_Set_random_increments_37(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_37(XGbm *InstancePtr);
void XGbm_Set_random_increments_38(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_38(XGbm *InstancePtr);
void XGbm_Set_random_increments_39(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_39(XGbm *InstancePtr);
void XGbm_Set_random_increments_40(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_40(XGbm *InstancePtr);
void XGbm_Set_random_increments_41(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_41(XGbm *InstancePtr);
void XGbm_Set_random_increments_42(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_42(XGbm *InstancePtr);
void XGbm_Set_random_increments_43(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_43(XGbm *InstancePtr);
void XGbm_Set_random_increments_44(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_44(XGbm *InstancePtr);
void XGbm_Set_random_increments_45(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_45(XGbm *InstancePtr);
void XGbm_Set_random_increments_46(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_46(XGbm *InstancePtr);
void XGbm_Set_random_increments_47(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_47(XGbm *InstancePtr);
void XGbm_Set_random_increments_48(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_48(XGbm *InstancePtr);
void XGbm_Set_random_increments_49(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_49(XGbm *InstancePtr);
void XGbm_Set_random_increments_50(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_50(XGbm *InstancePtr);
void XGbm_Set_random_increments_51(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_51(XGbm *InstancePtr);
void XGbm_Set_random_increments_52(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_52(XGbm *InstancePtr);
void XGbm_Set_random_increments_53(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_53(XGbm *InstancePtr);
void XGbm_Set_random_increments_54(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_54(XGbm *InstancePtr);
void XGbm_Set_random_increments_55(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_55(XGbm *InstancePtr);
void XGbm_Set_random_increments_56(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_56(XGbm *InstancePtr);
void XGbm_Set_random_increments_57(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_57(XGbm *InstancePtr);
void XGbm_Set_random_increments_58(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_58(XGbm *InstancePtr);
void XGbm_Set_random_increments_59(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_59(XGbm *InstancePtr);
void XGbm_Set_random_increments_60(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_60(XGbm *InstancePtr);
void XGbm_Set_random_increments_61(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_61(XGbm *InstancePtr);
void XGbm_Set_random_increments_62(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_62(XGbm *InstancePtr);
void XGbm_Set_random_increments_63(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_63(XGbm *InstancePtr);
void XGbm_Set_random_increments_64(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_64(XGbm *InstancePtr);
void XGbm_Set_random_increments_65(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_65(XGbm *InstancePtr);
void XGbm_Set_random_increments_66(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_66(XGbm *InstancePtr);
void XGbm_Set_random_increments_67(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_67(XGbm *InstancePtr);
void XGbm_Set_random_increments_68(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_68(XGbm *InstancePtr);
void XGbm_Set_random_increments_69(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_69(XGbm *InstancePtr);
void XGbm_Set_random_increments_70(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_70(XGbm *InstancePtr);
void XGbm_Set_random_increments_71(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_71(XGbm *InstancePtr);
void XGbm_Set_random_increments_72(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_72(XGbm *InstancePtr);
void XGbm_Set_random_increments_73(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_73(XGbm *InstancePtr);
void XGbm_Set_random_increments_74(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_74(XGbm *InstancePtr);
void XGbm_Set_random_increments_75(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_75(XGbm *InstancePtr);
void XGbm_Set_random_increments_76(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_76(XGbm *InstancePtr);
void XGbm_Set_random_increments_77(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_77(XGbm *InstancePtr);
void XGbm_Set_random_increments_78(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_78(XGbm *InstancePtr);
void XGbm_Set_random_increments_79(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_79(XGbm *InstancePtr);
void XGbm_Set_random_increments_80(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_80(XGbm *InstancePtr);
void XGbm_Set_random_increments_81(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_81(XGbm *InstancePtr);
void XGbm_Set_random_increments_82(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_82(XGbm *InstancePtr);
void XGbm_Set_random_increments_83(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_83(XGbm *InstancePtr);
void XGbm_Set_random_increments_84(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_84(XGbm *InstancePtr);
void XGbm_Set_random_increments_85(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_85(XGbm *InstancePtr);
void XGbm_Set_random_increments_86(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_86(XGbm *InstancePtr);
void XGbm_Set_random_increments_87(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_87(XGbm *InstancePtr);
void XGbm_Set_random_increments_88(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_88(XGbm *InstancePtr);
void XGbm_Set_random_increments_89(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_89(XGbm *InstancePtr);
void XGbm_Set_random_increments_90(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_90(XGbm *InstancePtr);
void XGbm_Set_random_increments_91(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_91(XGbm *InstancePtr);
void XGbm_Set_random_increments_92(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_92(XGbm *InstancePtr);
void XGbm_Set_random_increments_93(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_93(XGbm *InstancePtr);
void XGbm_Set_random_increments_94(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_94(XGbm *InstancePtr);
void XGbm_Set_random_increments_95(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_95(XGbm *InstancePtr);
void XGbm_Set_random_increments_96(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_96(XGbm *InstancePtr);
void XGbm_Set_random_increments_97(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_97(XGbm *InstancePtr);
void XGbm_Set_random_increments_98(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_98(XGbm *InstancePtr);
void XGbm_Set_random_increments_99(XGbm *InstancePtr, u64 Data);
u64 XGbm_Get_random_increments_99(XGbm *InstancePtr);

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
