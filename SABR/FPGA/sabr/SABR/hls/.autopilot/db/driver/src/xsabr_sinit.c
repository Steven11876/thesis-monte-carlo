// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xsabr.h"

extern XSabr_Config XSabr_ConfigTable[];

#ifdef SDT
XSabr_Config *XSabr_LookupConfig(UINTPTR BaseAddress) {
	XSabr_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XSabr_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XSabr_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XSabr_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSabr_Initialize(XSabr *InstancePtr, UINTPTR BaseAddress) {
	XSabr_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSabr_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSabr_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XSabr_Config *XSabr_LookupConfig(u16 DeviceId) {
	XSabr_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSABR_NUM_INSTANCES; Index++) {
		if (XSabr_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSabr_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSabr_Initialize(XSabr *InstancePtr, u16 DeviceId) {
	XSabr_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSabr_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSabr_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

