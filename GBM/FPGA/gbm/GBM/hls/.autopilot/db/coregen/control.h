// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 4  - ap_continue (Read/Write/SC)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of S
//        bit 31~0 - S[31:0] (Read/Write)
// 0x14 : Data signal of S
//        bit 31~0 - S[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of S0
//        bit 31~0 - S0[31:0] (Read/Write)
// 0x20 : Data signal of S0
//        bit 31~0 - S0[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of r
//        bit 31~0 - r[31:0] (Read/Write)
// 0x2c : Data signal of r
//        bit 31~0 - r[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of sigma
//        bit 31~0 - sigma[31:0] (Read/Write)
// 0x38 : Data signal of sigma
//        bit 31~0 - sigma[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of T
//        bit 31~0 - T[31:0] (Read/Write)
// 0x44 : Data signal of T
//        bit 31~0 - T[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of random_increments
//        bit 31~0 - random_increments[31:0] (Read/Write)
// 0x50 : Data signal of random_increments
//        bit 31~0 - random_increments[63:32] (Read/Write)
// 0x54 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL                0x00
#define CONTROL_ADDR_GIE                    0x04
#define CONTROL_ADDR_IER                    0x08
#define CONTROL_ADDR_ISR                    0x0c
#define CONTROL_ADDR_S_DATA                 0x10
#define CONTROL_BITS_S_DATA                 64
#define CONTROL_ADDR_S0_DATA                0x1c
#define CONTROL_BITS_S0_DATA                64
#define CONTROL_ADDR_R_DATA                 0x28
#define CONTROL_BITS_R_DATA                 64
#define CONTROL_ADDR_SIGMA_DATA             0x34
#define CONTROL_BITS_SIGMA_DATA             64
#define CONTROL_ADDR_T_DATA                 0x40
#define CONTROL_BITS_T_DATA                 64
#define CONTROL_ADDR_RANDOM_INCREMENTS_DATA 0x4c
#define CONTROL_BITS_RANDOM_INCREMENTS_DATA 64
