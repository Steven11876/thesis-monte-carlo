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
// 0x1c : Data signal of V
//        bit 31~0 - V[31:0] (Read/Write)
// 0x20 : Data signal of V
//        bit 31~0 - V[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of S0
//        bit 31~0 - S0[31:0] (Read/Write)
// 0x2c : Data signal of S0
//        bit 31~0 - S0[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of r
//        bit 31~0 - r[31:0] (Read/Write)
// 0x38 : Data signal of r
//        bit 31~0 - r[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of sigma_init
//        bit 31~0 - sigma_init[31:0] (Read/Write)
// 0x44 : Data signal of sigma_init
//        bit 31~0 - sigma_init[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of alpha
//        bit 31~0 - alpha[31:0] (Read/Write)
// 0x50 : Data signal of alpha
//        bit 31~0 - alpha[63:32] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of beta
//        bit 31~0 - beta[31:0] (Read/Write)
// 0x5c : Data signal of beta
//        bit 31~0 - beta[63:32] (Read/Write)
// 0x60 : reserved
// 0x64 : Data signal of rho
//        bit 31~0 - rho[31:0] (Read/Write)
// 0x68 : Data signal of rho
//        bit 31~0 - rho[63:32] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of T
//        bit 31~0 - T[31:0] (Read/Write)
// 0x74 : Data signal of T
//        bit 31~0 - T[63:32] (Read/Write)
// 0x78 : reserved
// 0x7c : Data signal of random_increments
//        bit 31~0 - random_increments[31:0] (Read/Write)
// 0x80 : Data signal of random_increments
//        bit 31~0 - random_increments[63:32] (Read/Write)
// 0x84 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL                0x00
#define CONTROL_ADDR_GIE                    0x04
#define CONTROL_ADDR_IER                    0x08
#define CONTROL_ADDR_ISR                    0x0c
#define CONTROL_ADDR_S_DATA                 0x10
#define CONTROL_BITS_S_DATA                 64
#define CONTROL_ADDR_V_DATA                 0x1c
#define CONTROL_BITS_V_DATA                 64
#define CONTROL_ADDR_S0_DATA                0x28
#define CONTROL_BITS_S0_DATA                64
#define CONTROL_ADDR_R_DATA                 0x34
#define CONTROL_BITS_R_DATA                 64
#define CONTROL_ADDR_SIGMA_INIT_DATA        0x40
#define CONTROL_BITS_SIGMA_INIT_DATA        64
#define CONTROL_ADDR_ALPHA_DATA             0x4c
#define CONTROL_BITS_ALPHA_DATA             64
#define CONTROL_ADDR_BETA_DATA              0x58
#define CONTROL_BITS_BETA_DATA              64
#define CONTROL_ADDR_RHO_DATA               0x64
#define CONTROL_BITS_RHO_DATA               64
#define CONTROL_ADDR_T_DATA                 0x70
#define CONTROL_BITS_T_DATA                 64
#define CONTROL_ADDR_RANDOM_INCREMENTS_DATA 0x7c
#define CONTROL_BITS_RANDOM_INCREMENTS_DATA 64
