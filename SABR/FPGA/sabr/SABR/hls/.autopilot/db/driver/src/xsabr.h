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

void XSabr_Set_S_0(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_0(XSabr *InstancePtr);
void XSabr_Set_S_1(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_1(XSabr *InstancePtr);
void XSabr_Set_S_2(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_2(XSabr *InstancePtr);
void XSabr_Set_S_3(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_3(XSabr *InstancePtr);
void XSabr_Set_S_4(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_4(XSabr *InstancePtr);
void XSabr_Set_S_5(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_5(XSabr *InstancePtr);
void XSabr_Set_S_6(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_6(XSabr *InstancePtr);
void XSabr_Set_S_7(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_7(XSabr *InstancePtr);
void XSabr_Set_S_8(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_8(XSabr *InstancePtr);
void XSabr_Set_S_9(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_9(XSabr *InstancePtr);
void XSabr_Set_S_10(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_10(XSabr *InstancePtr);
void XSabr_Set_S_11(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_11(XSabr *InstancePtr);
void XSabr_Set_S_12(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_12(XSabr *InstancePtr);
void XSabr_Set_S_13(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_13(XSabr *InstancePtr);
void XSabr_Set_S_14(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_14(XSabr *InstancePtr);
void XSabr_Set_S_15(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_15(XSabr *InstancePtr);
void XSabr_Set_S_16(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_16(XSabr *InstancePtr);
void XSabr_Set_S_17(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_17(XSabr *InstancePtr);
void XSabr_Set_S_18(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_18(XSabr *InstancePtr);
void XSabr_Set_S_19(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_19(XSabr *InstancePtr);
void XSabr_Set_S_20(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_20(XSabr *InstancePtr);
void XSabr_Set_S_21(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_21(XSabr *InstancePtr);
void XSabr_Set_S_22(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_22(XSabr *InstancePtr);
void XSabr_Set_S_23(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_23(XSabr *InstancePtr);
void XSabr_Set_S_24(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_24(XSabr *InstancePtr);
void XSabr_Set_S_25(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_25(XSabr *InstancePtr);
void XSabr_Set_S_26(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_26(XSabr *InstancePtr);
void XSabr_Set_S_27(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_27(XSabr *InstancePtr);
void XSabr_Set_S_28(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_28(XSabr *InstancePtr);
void XSabr_Set_S_29(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_29(XSabr *InstancePtr);
void XSabr_Set_S_30(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_30(XSabr *InstancePtr);
void XSabr_Set_S_31(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_31(XSabr *InstancePtr);
void XSabr_Set_S_32(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_32(XSabr *InstancePtr);
void XSabr_Set_S_33(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_33(XSabr *InstancePtr);
void XSabr_Set_S_34(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_34(XSabr *InstancePtr);
void XSabr_Set_S_35(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_35(XSabr *InstancePtr);
void XSabr_Set_S_36(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_36(XSabr *InstancePtr);
void XSabr_Set_S_37(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_37(XSabr *InstancePtr);
void XSabr_Set_S_38(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_38(XSabr *InstancePtr);
void XSabr_Set_S_39(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_39(XSabr *InstancePtr);
void XSabr_Set_S_40(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_40(XSabr *InstancePtr);
void XSabr_Set_S_41(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_41(XSabr *InstancePtr);
void XSabr_Set_S_42(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_42(XSabr *InstancePtr);
void XSabr_Set_S_43(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_43(XSabr *InstancePtr);
void XSabr_Set_S_44(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_44(XSabr *InstancePtr);
void XSabr_Set_S_45(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_45(XSabr *InstancePtr);
void XSabr_Set_S_46(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_46(XSabr *InstancePtr);
void XSabr_Set_S_47(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_47(XSabr *InstancePtr);
void XSabr_Set_S_48(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_48(XSabr *InstancePtr);
void XSabr_Set_S_49(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_49(XSabr *InstancePtr);
void XSabr_Set_S_50(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_50(XSabr *InstancePtr);
void XSabr_Set_S_51(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_51(XSabr *InstancePtr);
void XSabr_Set_S_52(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_52(XSabr *InstancePtr);
void XSabr_Set_S_53(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_53(XSabr *InstancePtr);
void XSabr_Set_S_54(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_54(XSabr *InstancePtr);
void XSabr_Set_S_55(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_55(XSabr *InstancePtr);
void XSabr_Set_S_56(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_56(XSabr *InstancePtr);
void XSabr_Set_S_57(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_57(XSabr *InstancePtr);
void XSabr_Set_S_58(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_58(XSabr *InstancePtr);
void XSabr_Set_S_59(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_59(XSabr *InstancePtr);
void XSabr_Set_S_60(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_60(XSabr *InstancePtr);
void XSabr_Set_S_61(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_61(XSabr *InstancePtr);
void XSabr_Set_S_62(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_62(XSabr *InstancePtr);
void XSabr_Set_S_63(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_63(XSabr *InstancePtr);
void XSabr_Set_S_64(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_64(XSabr *InstancePtr);
void XSabr_Set_S_65(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_65(XSabr *InstancePtr);
void XSabr_Set_S_66(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_66(XSabr *InstancePtr);
void XSabr_Set_S_67(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_67(XSabr *InstancePtr);
void XSabr_Set_S_68(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_68(XSabr *InstancePtr);
void XSabr_Set_S_69(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_69(XSabr *InstancePtr);
void XSabr_Set_S_70(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_70(XSabr *InstancePtr);
void XSabr_Set_S_71(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_71(XSabr *InstancePtr);
void XSabr_Set_S_72(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_72(XSabr *InstancePtr);
void XSabr_Set_S_73(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_73(XSabr *InstancePtr);
void XSabr_Set_S_74(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_74(XSabr *InstancePtr);
void XSabr_Set_S_75(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_75(XSabr *InstancePtr);
void XSabr_Set_S_76(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_76(XSabr *InstancePtr);
void XSabr_Set_S_77(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_77(XSabr *InstancePtr);
void XSabr_Set_S_78(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_78(XSabr *InstancePtr);
void XSabr_Set_S_79(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_79(XSabr *InstancePtr);
void XSabr_Set_S_80(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_80(XSabr *InstancePtr);
void XSabr_Set_S_81(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_81(XSabr *InstancePtr);
void XSabr_Set_S_82(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_82(XSabr *InstancePtr);
void XSabr_Set_S_83(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_83(XSabr *InstancePtr);
void XSabr_Set_S_84(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_84(XSabr *InstancePtr);
void XSabr_Set_S_85(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_85(XSabr *InstancePtr);
void XSabr_Set_S_86(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_86(XSabr *InstancePtr);
void XSabr_Set_S_87(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_87(XSabr *InstancePtr);
void XSabr_Set_S_88(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_88(XSabr *InstancePtr);
void XSabr_Set_S_89(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_89(XSabr *InstancePtr);
void XSabr_Set_S_90(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_90(XSabr *InstancePtr);
void XSabr_Set_S_91(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_91(XSabr *InstancePtr);
void XSabr_Set_S_92(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_92(XSabr *InstancePtr);
void XSabr_Set_S_93(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_93(XSabr *InstancePtr);
void XSabr_Set_S_94(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_94(XSabr *InstancePtr);
void XSabr_Set_S_95(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_95(XSabr *InstancePtr);
void XSabr_Set_S_96(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_96(XSabr *InstancePtr);
void XSabr_Set_S_97(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_97(XSabr *InstancePtr);
void XSabr_Set_S_98(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_98(XSabr *InstancePtr);
void XSabr_Set_S_99(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_S_99(XSabr *InstancePtr);
void XSabr_Set_V_0(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_0(XSabr *InstancePtr);
void XSabr_Set_V_1(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_1(XSabr *InstancePtr);
void XSabr_Set_V_2(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_2(XSabr *InstancePtr);
void XSabr_Set_V_3(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_3(XSabr *InstancePtr);
void XSabr_Set_V_4(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_4(XSabr *InstancePtr);
void XSabr_Set_V_5(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_5(XSabr *InstancePtr);
void XSabr_Set_V_6(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_6(XSabr *InstancePtr);
void XSabr_Set_V_7(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_7(XSabr *InstancePtr);
void XSabr_Set_V_8(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_8(XSabr *InstancePtr);
void XSabr_Set_V_9(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_9(XSabr *InstancePtr);
void XSabr_Set_V_10(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_10(XSabr *InstancePtr);
void XSabr_Set_V_11(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_11(XSabr *InstancePtr);
void XSabr_Set_V_12(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_12(XSabr *InstancePtr);
void XSabr_Set_V_13(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_13(XSabr *InstancePtr);
void XSabr_Set_V_14(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_14(XSabr *InstancePtr);
void XSabr_Set_V_15(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_15(XSabr *InstancePtr);
void XSabr_Set_V_16(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_16(XSabr *InstancePtr);
void XSabr_Set_V_17(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_17(XSabr *InstancePtr);
void XSabr_Set_V_18(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_18(XSabr *InstancePtr);
void XSabr_Set_V_19(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_19(XSabr *InstancePtr);
void XSabr_Set_V_20(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_20(XSabr *InstancePtr);
void XSabr_Set_V_21(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_21(XSabr *InstancePtr);
void XSabr_Set_V_22(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_22(XSabr *InstancePtr);
void XSabr_Set_V_23(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_23(XSabr *InstancePtr);
void XSabr_Set_V_24(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_24(XSabr *InstancePtr);
void XSabr_Set_V_25(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_25(XSabr *InstancePtr);
void XSabr_Set_V_26(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_26(XSabr *InstancePtr);
void XSabr_Set_V_27(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_27(XSabr *InstancePtr);
void XSabr_Set_V_28(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_28(XSabr *InstancePtr);
void XSabr_Set_V_29(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_29(XSabr *InstancePtr);
void XSabr_Set_V_30(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_30(XSabr *InstancePtr);
void XSabr_Set_V_31(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_31(XSabr *InstancePtr);
void XSabr_Set_V_32(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_32(XSabr *InstancePtr);
void XSabr_Set_V_33(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_33(XSabr *InstancePtr);
void XSabr_Set_V_34(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_34(XSabr *InstancePtr);
void XSabr_Set_V_35(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_35(XSabr *InstancePtr);
void XSabr_Set_V_36(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_36(XSabr *InstancePtr);
void XSabr_Set_V_37(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_37(XSabr *InstancePtr);
void XSabr_Set_V_38(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_38(XSabr *InstancePtr);
void XSabr_Set_V_39(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_39(XSabr *InstancePtr);
void XSabr_Set_V_40(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_40(XSabr *InstancePtr);
void XSabr_Set_V_41(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_41(XSabr *InstancePtr);
void XSabr_Set_V_42(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_42(XSabr *InstancePtr);
void XSabr_Set_V_43(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_43(XSabr *InstancePtr);
void XSabr_Set_V_44(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_44(XSabr *InstancePtr);
void XSabr_Set_V_45(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_45(XSabr *InstancePtr);
void XSabr_Set_V_46(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_46(XSabr *InstancePtr);
void XSabr_Set_V_47(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_47(XSabr *InstancePtr);
void XSabr_Set_V_48(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_48(XSabr *InstancePtr);
void XSabr_Set_V_49(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_49(XSabr *InstancePtr);
void XSabr_Set_V_50(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_50(XSabr *InstancePtr);
void XSabr_Set_V_51(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_51(XSabr *InstancePtr);
void XSabr_Set_V_52(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_52(XSabr *InstancePtr);
void XSabr_Set_V_53(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_53(XSabr *InstancePtr);
void XSabr_Set_V_54(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_54(XSabr *InstancePtr);
void XSabr_Set_V_55(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_55(XSabr *InstancePtr);
void XSabr_Set_V_56(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_56(XSabr *InstancePtr);
void XSabr_Set_V_57(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_57(XSabr *InstancePtr);
void XSabr_Set_V_58(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_58(XSabr *InstancePtr);
void XSabr_Set_V_59(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_59(XSabr *InstancePtr);
void XSabr_Set_V_60(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_60(XSabr *InstancePtr);
void XSabr_Set_V_61(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_61(XSabr *InstancePtr);
void XSabr_Set_V_62(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_62(XSabr *InstancePtr);
void XSabr_Set_V_63(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_63(XSabr *InstancePtr);
void XSabr_Set_V_64(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_64(XSabr *InstancePtr);
void XSabr_Set_V_65(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_65(XSabr *InstancePtr);
void XSabr_Set_V_66(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_66(XSabr *InstancePtr);
void XSabr_Set_V_67(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_67(XSabr *InstancePtr);
void XSabr_Set_V_68(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_68(XSabr *InstancePtr);
void XSabr_Set_V_69(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_69(XSabr *InstancePtr);
void XSabr_Set_V_70(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_70(XSabr *InstancePtr);
void XSabr_Set_V_71(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_71(XSabr *InstancePtr);
void XSabr_Set_V_72(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_72(XSabr *InstancePtr);
void XSabr_Set_V_73(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_73(XSabr *InstancePtr);
void XSabr_Set_V_74(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_74(XSabr *InstancePtr);
void XSabr_Set_V_75(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_75(XSabr *InstancePtr);
void XSabr_Set_V_76(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_76(XSabr *InstancePtr);
void XSabr_Set_V_77(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_77(XSabr *InstancePtr);
void XSabr_Set_V_78(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_78(XSabr *InstancePtr);
void XSabr_Set_V_79(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_79(XSabr *InstancePtr);
void XSabr_Set_V_80(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_80(XSabr *InstancePtr);
void XSabr_Set_V_81(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_81(XSabr *InstancePtr);
void XSabr_Set_V_82(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_82(XSabr *InstancePtr);
void XSabr_Set_V_83(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_83(XSabr *InstancePtr);
void XSabr_Set_V_84(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_84(XSabr *InstancePtr);
void XSabr_Set_V_85(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_85(XSabr *InstancePtr);
void XSabr_Set_V_86(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_86(XSabr *InstancePtr);
void XSabr_Set_V_87(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_87(XSabr *InstancePtr);
void XSabr_Set_V_88(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_88(XSabr *InstancePtr);
void XSabr_Set_V_89(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_89(XSabr *InstancePtr);
void XSabr_Set_V_90(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_90(XSabr *InstancePtr);
void XSabr_Set_V_91(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_91(XSabr *InstancePtr);
void XSabr_Set_V_92(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_92(XSabr *InstancePtr);
void XSabr_Set_V_93(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_93(XSabr *InstancePtr);
void XSabr_Set_V_94(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_94(XSabr *InstancePtr);
void XSabr_Set_V_95(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_95(XSabr *InstancePtr);
void XSabr_Set_V_96(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_96(XSabr *InstancePtr);
void XSabr_Set_V_97(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_97(XSabr *InstancePtr);
void XSabr_Set_V_98(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_98(XSabr *InstancePtr);
void XSabr_Set_V_99(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_V_99(XSabr *InstancePtr);
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
void XSabr_Set_random_increments_0(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_0(XSabr *InstancePtr);
void XSabr_Set_random_increments_1(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_1(XSabr *InstancePtr);
void XSabr_Set_random_increments_2(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_2(XSabr *InstancePtr);
void XSabr_Set_random_increments_3(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_3(XSabr *InstancePtr);
void XSabr_Set_random_increments_4(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_4(XSabr *InstancePtr);
void XSabr_Set_random_increments_5(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_5(XSabr *InstancePtr);
void XSabr_Set_random_increments_6(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_6(XSabr *InstancePtr);
void XSabr_Set_random_increments_7(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_7(XSabr *InstancePtr);
void XSabr_Set_random_increments_8(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_8(XSabr *InstancePtr);
void XSabr_Set_random_increments_9(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_9(XSabr *InstancePtr);
void XSabr_Set_random_increments_10(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_10(XSabr *InstancePtr);
void XSabr_Set_random_increments_11(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_11(XSabr *InstancePtr);
void XSabr_Set_random_increments_12(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_12(XSabr *InstancePtr);
void XSabr_Set_random_increments_13(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_13(XSabr *InstancePtr);
void XSabr_Set_random_increments_14(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_14(XSabr *InstancePtr);
void XSabr_Set_random_increments_15(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_15(XSabr *InstancePtr);
void XSabr_Set_random_increments_16(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_16(XSabr *InstancePtr);
void XSabr_Set_random_increments_17(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_17(XSabr *InstancePtr);
void XSabr_Set_random_increments_18(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_18(XSabr *InstancePtr);
void XSabr_Set_random_increments_19(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_19(XSabr *InstancePtr);
void XSabr_Set_random_increments_20(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_20(XSabr *InstancePtr);
void XSabr_Set_random_increments_21(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_21(XSabr *InstancePtr);
void XSabr_Set_random_increments_22(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_22(XSabr *InstancePtr);
void XSabr_Set_random_increments_23(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_23(XSabr *InstancePtr);
void XSabr_Set_random_increments_24(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_24(XSabr *InstancePtr);
void XSabr_Set_random_increments_25(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_25(XSabr *InstancePtr);
void XSabr_Set_random_increments_26(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_26(XSabr *InstancePtr);
void XSabr_Set_random_increments_27(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_27(XSabr *InstancePtr);
void XSabr_Set_random_increments_28(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_28(XSabr *InstancePtr);
void XSabr_Set_random_increments_29(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_29(XSabr *InstancePtr);
void XSabr_Set_random_increments_30(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_30(XSabr *InstancePtr);
void XSabr_Set_random_increments_31(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_31(XSabr *InstancePtr);
void XSabr_Set_random_increments_32(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_32(XSabr *InstancePtr);
void XSabr_Set_random_increments_33(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_33(XSabr *InstancePtr);
void XSabr_Set_random_increments_34(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_34(XSabr *InstancePtr);
void XSabr_Set_random_increments_35(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_35(XSabr *InstancePtr);
void XSabr_Set_random_increments_36(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_36(XSabr *InstancePtr);
void XSabr_Set_random_increments_37(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_37(XSabr *InstancePtr);
void XSabr_Set_random_increments_38(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_38(XSabr *InstancePtr);
void XSabr_Set_random_increments_39(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_39(XSabr *InstancePtr);
void XSabr_Set_random_increments_40(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_40(XSabr *InstancePtr);
void XSabr_Set_random_increments_41(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_41(XSabr *InstancePtr);
void XSabr_Set_random_increments_42(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_42(XSabr *InstancePtr);
void XSabr_Set_random_increments_43(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_43(XSabr *InstancePtr);
void XSabr_Set_random_increments_44(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_44(XSabr *InstancePtr);
void XSabr_Set_random_increments_45(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_45(XSabr *InstancePtr);
void XSabr_Set_random_increments_46(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_46(XSabr *InstancePtr);
void XSabr_Set_random_increments_47(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_47(XSabr *InstancePtr);
void XSabr_Set_random_increments_48(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_48(XSabr *InstancePtr);
void XSabr_Set_random_increments_49(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_49(XSabr *InstancePtr);
void XSabr_Set_random_increments_50(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_50(XSabr *InstancePtr);
void XSabr_Set_random_increments_51(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_51(XSabr *InstancePtr);
void XSabr_Set_random_increments_52(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_52(XSabr *InstancePtr);
void XSabr_Set_random_increments_53(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_53(XSabr *InstancePtr);
void XSabr_Set_random_increments_54(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_54(XSabr *InstancePtr);
void XSabr_Set_random_increments_55(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_55(XSabr *InstancePtr);
void XSabr_Set_random_increments_56(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_56(XSabr *InstancePtr);
void XSabr_Set_random_increments_57(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_57(XSabr *InstancePtr);
void XSabr_Set_random_increments_58(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_58(XSabr *InstancePtr);
void XSabr_Set_random_increments_59(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_59(XSabr *InstancePtr);
void XSabr_Set_random_increments_60(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_60(XSabr *InstancePtr);
void XSabr_Set_random_increments_61(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_61(XSabr *InstancePtr);
void XSabr_Set_random_increments_62(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_62(XSabr *InstancePtr);
void XSabr_Set_random_increments_63(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_63(XSabr *InstancePtr);
void XSabr_Set_random_increments_64(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_64(XSabr *InstancePtr);
void XSabr_Set_random_increments_65(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_65(XSabr *InstancePtr);
void XSabr_Set_random_increments_66(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_66(XSabr *InstancePtr);
void XSabr_Set_random_increments_67(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_67(XSabr *InstancePtr);
void XSabr_Set_random_increments_68(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_68(XSabr *InstancePtr);
void XSabr_Set_random_increments_69(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_69(XSabr *InstancePtr);
void XSabr_Set_random_increments_70(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_70(XSabr *InstancePtr);
void XSabr_Set_random_increments_71(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_71(XSabr *InstancePtr);
void XSabr_Set_random_increments_72(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_72(XSabr *InstancePtr);
void XSabr_Set_random_increments_73(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_73(XSabr *InstancePtr);
void XSabr_Set_random_increments_74(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_74(XSabr *InstancePtr);
void XSabr_Set_random_increments_75(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_75(XSabr *InstancePtr);
void XSabr_Set_random_increments_76(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_76(XSabr *InstancePtr);
void XSabr_Set_random_increments_77(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_77(XSabr *InstancePtr);
void XSabr_Set_random_increments_78(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_78(XSabr *InstancePtr);
void XSabr_Set_random_increments_79(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_79(XSabr *InstancePtr);
void XSabr_Set_random_increments_80(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_80(XSabr *InstancePtr);
void XSabr_Set_random_increments_81(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_81(XSabr *InstancePtr);
void XSabr_Set_random_increments_82(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_82(XSabr *InstancePtr);
void XSabr_Set_random_increments_83(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_83(XSabr *InstancePtr);
void XSabr_Set_random_increments_84(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_84(XSabr *InstancePtr);
void XSabr_Set_random_increments_85(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_85(XSabr *InstancePtr);
void XSabr_Set_random_increments_86(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_86(XSabr *InstancePtr);
void XSabr_Set_random_increments_87(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_87(XSabr *InstancePtr);
void XSabr_Set_random_increments_88(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_88(XSabr *InstancePtr);
void XSabr_Set_random_increments_89(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_89(XSabr *InstancePtr);
void XSabr_Set_random_increments_90(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_90(XSabr *InstancePtr);
void XSabr_Set_random_increments_91(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_91(XSabr *InstancePtr);
void XSabr_Set_random_increments_92(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_92(XSabr *InstancePtr);
void XSabr_Set_random_increments_93(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_93(XSabr *InstancePtr);
void XSabr_Set_random_increments_94(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_94(XSabr *InstancePtr);
void XSabr_Set_random_increments_95(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_95(XSabr *InstancePtr);
void XSabr_Set_random_increments_96(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_96(XSabr *InstancePtr);
void XSabr_Set_random_increments_97(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_97(XSabr *InstancePtr);
void XSabr_Set_random_increments_98(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_98(XSabr *InstancePtr);
void XSabr_Set_random_increments_99(XSabr *InstancePtr, u64 Data);
u64 XSabr_Get_random_increments_99(XSabr *InstancePtr);

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
