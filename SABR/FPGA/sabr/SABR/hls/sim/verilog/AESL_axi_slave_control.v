// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps

module AESL_axi_slave_control (
    clk,
    reset,
    TRAN_s_axi_control_AWADDR,
    TRAN_s_axi_control_AWVALID,
    TRAN_s_axi_control_AWREADY,
    TRAN_s_axi_control_WVALID,
    TRAN_s_axi_control_WREADY,
    TRAN_s_axi_control_WDATA,
    TRAN_s_axi_control_WSTRB,
    TRAN_s_axi_control_ARADDR,
    TRAN_s_axi_control_ARVALID,
    TRAN_s_axi_control_ARREADY,
    TRAN_s_axi_control_RVALID,
    TRAN_s_axi_control_RREADY,
    TRAN_s_axi_control_RDATA,
    TRAN_s_axi_control_RRESP,
    TRAN_s_axi_control_BVALID,
    TRAN_s_axi_control_BREADY,
    TRAN_s_axi_control_BRESP,
    TRAN_control_write_data_finish,
    TRAN_control_start_in,
    TRAN_control_idle_out,
    TRAN_control_ready_out,
    TRAN_control_ready_in,
    TRAN_control_done_out,
    TRAN_control_write_start_in   ,
    TRAN_control_write_start_finish,
    TRAN_control_interrupt,
    TRAN_control_transaction_done_in
    );

//------------------------Parameter----------------------
`define TV_IN_S "../tv/cdatafile/c.SABR.autotvin_S.dat"
`define TV_IN_V "../tv/cdatafile/c.SABR.autotvin_V.dat"
`define TV_IN_S0 "../tv/cdatafile/c.SABR.autotvin_S0.dat"
`define TV_IN_r "../tv/cdatafile/c.SABR.autotvin_r.dat"
`define TV_IN_sigma_init "../tv/cdatafile/c.SABR.autotvin_sigma_init.dat"
`define TV_IN_alpha "../tv/cdatafile/c.SABR.autotvin_alpha.dat"
`define TV_IN_beta "../tv/cdatafile/c.SABR.autotvin_beta.dat"
`define TV_IN_rho "../tv/cdatafile/c.SABR.autotvin_rho.dat"
`define TV_IN_T "../tv/cdatafile/c.SABR.autotvin_T.dat"
`define TV_IN_random_increments "../tv/cdatafile/c.SABR.autotvin_random_increments.dat"
parameter ADDR_WIDTH = 8;
parameter DATA_WIDTH = 32;
parameter S_DEPTH = 1;
reg [31 : 0] S_OPERATE_DEPTH = 0;
parameter S_c_bitwidth = 64;
parameter V_DEPTH = 1;
reg [31 : 0] V_OPERATE_DEPTH = 0;
parameter V_c_bitwidth = 64;
parameter S0_DEPTH = 1;
reg [31 : 0] S0_OPERATE_DEPTH = 0;
parameter S0_c_bitwidth = 64;
parameter r_DEPTH = 1;
reg [31 : 0] r_OPERATE_DEPTH = 0;
parameter r_c_bitwidth = 64;
parameter sigma_init_DEPTH = 1;
reg [31 : 0] sigma_init_OPERATE_DEPTH = 0;
parameter sigma_init_c_bitwidth = 64;
parameter alpha_DEPTH = 1;
reg [31 : 0] alpha_OPERATE_DEPTH = 0;
parameter alpha_c_bitwidth = 64;
parameter beta_DEPTH = 1;
reg [31 : 0] beta_OPERATE_DEPTH = 0;
parameter beta_c_bitwidth = 64;
parameter rho_DEPTH = 1;
reg [31 : 0] rho_OPERATE_DEPTH = 0;
parameter rho_c_bitwidth = 64;
parameter T_DEPTH = 1;
reg [31 : 0] T_OPERATE_DEPTH = 0;
parameter T_c_bitwidth = 64;
parameter random_increments_DEPTH = 1;
reg [31 : 0] random_increments_OPERATE_DEPTH = 0;
parameter random_increments_c_bitwidth = 64;
parameter START_ADDR = 0;
parameter SABR_continue_addr = 0;
parameter SABR_auto_start_addr = 0;
parameter S_data_in_addr = 16;
parameter V_data_in_addr = 28;
parameter S0_data_in_addr = 40;
parameter r_data_in_addr = 52;
parameter sigma_init_data_in_addr = 64;
parameter alpha_data_in_addr = 76;
parameter beta_data_in_addr = 88;
parameter rho_data_in_addr = 100;
parameter T_data_in_addr = 112;
parameter random_increments_data_in_addr = 124;
parameter STATUS_ADDR = 0;

output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_control_AWADDR;
output  TRAN_s_axi_control_AWVALID;
input  TRAN_s_axi_control_AWREADY;
output  TRAN_s_axi_control_WVALID;
input  TRAN_s_axi_control_WREADY;
output [DATA_WIDTH - 1 : 0] TRAN_s_axi_control_WDATA;
output [DATA_WIDTH/8 - 1 : 0] TRAN_s_axi_control_WSTRB;
output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_control_ARADDR;
output  TRAN_s_axi_control_ARVALID;
input  TRAN_s_axi_control_ARREADY;
input  TRAN_s_axi_control_RVALID;
output  TRAN_s_axi_control_RREADY;
input [DATA_WIDTH - 1 : 0] TRAN_s_axi_control_RDATA;
input [2 - 1 : 0] TRAN_s_axi_control_RRESP;
input  TRAN_s_axi_control_BVALID;
output  TRAN_s_axi_control_BREADY;
input [2 - 1 : 0] TRAN_s_axi_control_BRESP;
output TRAN_control_write_data_finish;
input     clk;
input     reset;
input     TRAN_control_start_in;
output    TRAN_control_done_out;
output    TRAN_control_ready_out;
input     TRAN_control_ready_in;
output    TRAN_control_idle_out;
input  TRAN_control_write_start_in   ;
output TRAN_control_write_start_finish;
input     TRAN_control_interrupt;
input     TRAN_control_transaction_done_in;

reg [ADDR_WIDTH - 1 : 0] AWADDR_reg = 0;
reg  AWVALID_reg = 0;
reg  WVALID_reg = 0;
reg [DATA_WIDTH - 1 : 0] WDATA_reg = 0;
reg [DATA_WIDTH/8 - 1 : 0] WSTRB_reg = 0;
reg [ADDR_WIDTH - 1 : 0] ARADDR_reg = 0;
reg  ARVALID_reg = 0;
reg  RREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] RDATA_reg = 0;
reg  BREADY_reg = 0;
reg [S_c_bitwidth - 1 : 0] mem_S [S_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_S [ (S_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * S_DEPTH -1 : 0] = '{default : 'hz};
reg S_write_data_finish;
reg [V_c_bitwidth - 1 : 0] mem_V [V_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_V [ (V_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * V_DEPTH -1 : 0] = '{default : 'hz};
reg V_write_data_finish;
reg [S0_c_bitwidth - 1 : 0] mem_S0 [S0_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_S0 [ (S0_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * S0_DEPTH -1 : 0] = '{default : 'hz};
reg S0_write_data_finish;
reg [r_c_bitwidth - 1 : 0] mem_r [r_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_r [ (r_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * r_DEPTH -1 : 0] = '{default : 'hz};
reg r_write_data_finish;
reg [sigma_init_c_bitwidth - 1 : 0] mem_sigma_init [sigma_init_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_sigma_init [ (sigma_init_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * sigma_init_DEPTH -1 : 0] = '{default : 'hz};
reg sigma_init_write_data_finish;
reg [alpha_c_bitwidth - 1 : 0] mem_alpha [alpha_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_alpha [ (alpha_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * alpha_DEPTH -1 : 0] = '{default : 'hz};
reg alpha_write_data_finish;
reg [beta_c_bitwidth - 1 : 0] mem_beta [beta_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_beta [ (beta_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * beta_DEPTH -1 : 0] = '{default : 'hz};
reg beta_write_data_finish;
reg [rho_c_bitwidth - 1 : 0] mem_rho [rho_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_rho [ (rho_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * rho_DEPTH -1 : 0] = '{default : 'hz};
reg rho_write_data_finish;
reg [T_c_bitwidth - 1 : 0] mem_T [T_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_T [ (T_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * T_DEPTH -1 : 0] = '{default : 'hz};
reg T_write_data_finish;
reg [random_increments_c_bitwidth - 1 : 0] mem_random_increments [random_increments_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_random_increments [ (random_increments_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * random_increments_DEPTH -1 : 0] = '{default : 'hz};
reg random_increments_write_data_finish;
reg AESL_ready_out_index_reg = 0;
reg AESL_write_start_finish = 0;
reg AESL_ready_reg;
reg ready_initial;
reg AESL_done_index_reg = 0;
reg AESL_idle_index_reg = 0;
reg AESL_auto_restart_index_reg;
reg process_0_finish = 0;
reg process_1_finish = 0;
reg process_2_finish = 0;
reg process_3_finish = 0;
reg process_4_finish = 0;
reg process_5_finish = 0;
reg process_6_finish = 0;
reg process_7_finish = 0;
reg process_8_finish = 0;
reg process_9_finish = 0;
reg process_10_finish = 0;
reg process_11_finish = 0;
//write S reg
reg [31 : 0] write_S_count = 0;
reg [31 : 0] S_diff_count = 0;
reg write_S_run_flag = 0;
reg write_one_S_data_done = 0;
//write V reg
reg [31 : 0] write_V_count = 0;
reg [31 : 0] V_diff_count = 0;
reg write_V_run_flag = 0;
reg write_one_V_data_done = 0;
//write S0 reg
reg [31 : 0] write_S0_count = 0;
reg [31 : 0] S0_diff_count = 0;
reg write_S0_run_flag = 0;
reg write_one_S0_data_done = 0;
//write r reg
reg [31 : 0] write_r_count = 0;
reg [31 : 0] r_diff_count = 0;
reg write_r_run_flag = 0;
reg write_one_r_data_done = 0;
//write sigma_init reg
reg [31 : 0] write_sigma_init_count = 0;
reg [31 : 0] sigma_init_diff_count = 0;
reg write_sigma_init_run_flag = 0;
reg write_one_sigma_init_data_done = 0;
//write alpha reg
reg [31 : 0] write_alpha_count = 0;
reg [31 : 0] alpha_diff_count = 0;
reg write_alpha_run_flag = 0;
reg write_one_alpha_data_done = 0;
//write beta reg
reg [31 : 0] write_beta_count = 0;
reg [31 : 0] beta_diff_count = 0;
reg write_beta_run_flag = 0;
reg write_one_beta_data_done = 0;
//write rho reg
reg [31 : 0] write_rho_count = 0;
reg [31 : 0] rho_diff_count = 0;
reg write_rho_run_flag = 0;
reg write_one_rho_data_done = 0;
//write T reg
reg [31 : 0] write_T_count = 0;
reg [31 : 0] T_diff_count = 0;
reg write_T_run_flag = 0;
reg write_one_T_data_done = 0;
//write random_increments reg
reg [31 : 0] write_random_increments_count = 0;
reg [31 : 0] random_increments_diff_count = 0;
reg write_random_increments_run_flag = 0;
reg write_one_random_increments_data_done = 0;
reg [31 : 0] write_start_count = 0;
reg write_start_run_flag = 0;

//===================process control=================
reg [31 : 0] ongoing_process_number = 0;
//process number depends on how much processes needed.
reg process_busy = 0;

//=================== signal connection ==============
assign TRAN_s_axi_control_AWADDR = AWADDR_reg;
assign TRAN_s_axi_control_AWVALID = AWVALID_reg;
assign TRAN_s_axi_control_WVALID = WVALID_reg;
assign TRAN_s_axi_control_WDATA = WDATA_reg;
assign TRAN_s_axi_control_WSTRB = WSTRB_reg;
assign TRAN_s_axi_control_ARADDR = ARADDR_reg;
assign TRAN_s_axi_control_ARVALID = ARVALID_reg;
assign TRAN_s_axi_control_RREADY = RREADY_reg;
assign TRAN_s_axi_control_BREADY = BREADY_reg;
assign TRAN_control_write_start_finish = AESL_write_start_finish;
assign TRAN_control_done_out = AESL_done_index_reg;
assign TRAN_control_ready_out = AESL_ready_out_index_reg;
assign TRAN_control_idle_out = AESL_idle_index_reg;
assign TRAN_control_write_data_finish = 1 & S_write_data_finish & V_write_data_finish & S0_write_data_finish & r_write_data_finish & sigma_init_write_data_finish & alpha_write_data_finish & beta_write_data_finish & rho_write_data_finish & T_write_data_finish & random_increments_write_data_finish;
always @(TRAN_control_ready_in or ready_initial) 
begin
    AESL_ready_reg <= TRAN_control_ready_in | ready_initial;
end

always @(reset or process_0_finish or process_1_finish or process_2_finish or process_3_finish or process_4_finish or process_5_finish or process_6_finish or process_7_finish or process_8_finish or process_9_finish or process_10_finish or process_11_finish ) begin
    if (reset == 0) begin
        ongoing_process_number <= 0;
    end
    else if (ongoing_process_number == 0 && process_0_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 1 && process_1_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 2 && process_2_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 3 && process_3_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 4 && process_4_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 5 && process_5_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 6 && process_6_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 7 && process_7_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 8 && process_8_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 9 && process_9_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 10 && process_10_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 11 && process_11_finish == 1) begin
            ongoing_process_number <= 0;
    end
end

task count_c_data_four_byte_num_by_bitwidth;
input  integer bitwidth;
output integer num;
integer factor;
integer i;
begin
    factor = 32;
    for (i = 1; i <= 1024; i = i + 1) begin
        if (bitwidth <= factor && bitwidth > factor - 32) begin
            num = i;
        end
        factor = factor + 32;
    end
end    
endtask

function integer ceil_align_to_pow_of_two;
input integer a;
begin
    ceil_align_to_pow_of_two = $pow(2,$clog2(a));
end
endfunction

task count_seperate_factor_by_bitwidth;
input  integer bitwidth;
output integer factor;
begin
    if (bitwidth <= 8) begin
        factor=4;
    end
    if (bitwidth <= 16 & bitwidth > 8 ) begin
        factor=2;
    end
    if (bitwidth <= 32 & bitwidth > 16 ) begin
        factor=1;
    end
    if (bitwidth > 32 ) begin
        factor=1;
    end
end    
endtask

task count_operate_depth_by_bitwidth_and_depth;
input  integer bitwidth;
input  integer depth;
output integer operate_depth;
integer factor;
integer remain;
begin
    count_seperate_factor_by_bitwidth (bitwidth , factor);
    operate_depth = depth / factor;
    remain = depth % factor;
    if (remain > 0) begin
        operate_depth = operate_depth + 1;
    end
end    
endtask

task write; /*{{{*/
    input  reg [ADDR_WIDTH - 1:0] waddr;   // write address
    input  reg [DATA_WIDTH - 1:0] wdata;   // write data
    output reg wresp;
    reg aw_flag;
    reg w_flag;
    reg [DATA_WIDTH/8 - 1:0] wstrb_reg;
    integer i;
begin 
    wresp = 0;
    aw_flag = 0;
    w_flag = 0;
//=======================one single write operate======================
    AWADDR_reg <= waddr;
    AWVALID_reg <= 1;
    WDATA_reg <= wdata;
    WVALID_reg <= 1;
    for (i = 0; i < DATA_WIDTH/8; i = i + 1) begin
        wstrb_reg [i] = 1;
    end    
    WSTRB_reg <= wstrb_reg;
    while (!(aw_flag && w_flag)) begin
        @(posedge clk);
        if (aw_flag != 1)
            aw_flag = TRAN_s_axi_control_AWREADY & AWVALID_reg;
        if (w_flag != 1)
            w_flag = TRAN_s_axi_control_WREADY & WVALID_reg;
        AWVALID_reg <= !aw_flag;
        WVALID_reg <= !w_flag;
    end

    BREADY_reg <= 1;
    while (TRAN_s_axi_control_BVALID != 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    BREADY_reg <= 0;
    if (TRAN_s_axi_control_BRESP === 2'b00) begin
        wresp = 1;
        //input success. in fact BRESP is always 2'b00
    end   
//=======================one single write operate======================

end
endtask/*}}}*/

task read (/*{{{*/
    input  [ADDR_WIDTH - 1:0] raddr ,   // write address
    output [DATA_WIDTH - 1:0] RDATA_result ,
    output rresp
);
begin 
    rresp = 0;
//=======================one single read operate======================
    ARADDR_reg <= raddr;
    ARVALID_reg <= 1;
    while (TRAN_s_axi_control_ARREADY !== 1) begin
        @(posedge clk);
    end
    @(posedge clk);
    ARVALID_reg <= 0;
    RREADY_reg <= 1;
    while (TRAN_s_axi_control_RVALID !== 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    RDATA_result  <= TRAN_s_axi_control_RDATA;
    RREADY_reg <= 0;
    if (TRAN_s_axi_control_RRESP === 2'b00 ) begin
        rresp <= 1;
        //output success. in fact RRESP is always 2'b00
    end  
    @(posedge clk);

//=======================one single read operate end======================

end
endtask/*}}}*/

initial begin : ready_initial_process
    ready_initial = 0;
    wait(reset === 1);
    @(posedge clk);
    ready_initial = 1;
    @(posedge clk);
    ready_initial = 0;
end

initial begin : update_status
    integer process_num ;
    integer read_status_resp;
    integer write_continue_tmp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 0;
    write_continue_tmp = 0;
    while (1) begin
        process_0_finish = 0;
        AESL_done_index_reg         <= 0;
        AESL_ready_out_index_reg        <= 0;
        if (ongoing_process_number === process_num && process_busy === 0) begin
            process_busy = 1;
            read (STATUS_ADDR, RDATA_reg, read_status_resp);
                AESL_ready_out_index_reg    <= RDATA_reg[1 : 1];
                AESL_idle_index_reg         <= RDATA_reg[2 : 2];
                if (RDATA_reg[1 : 1] == 1) begin
                    @(posedge clk);
                    AESL_ready_out_index_reg    <= 0;
                    write_continue_tmp=0;
                    write_continue_tmp[4 : 4] = 1;
                    write (STATUS_ADDR, write_continue_tmp, read_status_resp);
                    AESL_done_index_reg         <= 1;
                    @(posedge clk);
                    AESL_done_index_reg         <= 0;
                end 
            process_0_finish = 1;
            process_busy = 0;
        end 
        @(posedge clk);
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_S_run_flag <= 0; 
        count_operate_depth_by_bitwidth_and_depth (S_c_bitwidth, S_DEPTH, S_OPERATE_DEPTH);
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_S_run_flag <= 1; 
        end
        else if ((write_one_S_data_done == 1 && write_S_count == S_diff_count - 1) || S_diff_count == 0) begin
            write_S_run_flag <= 0; 
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_S_count = 0;
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_S_count = 0;
        end
        if (write_one_S_data_done === 1) begin
            write_S_count = write_S_count + 1;
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        S_write_data_finish <= 0;
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            S_write_data_finish <= 0;
        end
        if (write_S_run_flag == 1 && write_S_count == S_diff_count) begin
            S_write_data_finish <= 1;
        end
    end
end

initial begin : initial_diff_counter_S
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer k;
    reg [31 : 0] S_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = S_c_bitwidth;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        wait (AESL_ready_reg === 1);
        S_diff_count = 0;

        for (k = 0; k < S_OPERATE_DEPTH; k = k + 1) begin
            for (i = 0; i < four_byte_num; i = i + 1) begin
                if (S_c_bitwidth < 32) begin
                    S_data_tmp_reg = mem_S[k];
                end
                else begin
                    for (j = 0; j < 32; j = j + 1) begin
                        if (i*32 + j < S_c_bitwidth) begin
                            S_data_tmp_reg[j] = mem_S[k][i*32 + j];
                        end
                        else begin
                            S_data_tmp_reg[j] = 0;
                        end
                    end
                end
                if(image_mem_S[k * four_byte_num  + i]!==S_data_tmp_reg) begin
                S_diff_count = S_diff_count + 1;
                end
            end
        end

        @(posedge clk);
    end
end

initial begin : write_S
    integer write_S_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer check_S_count;
    reg [31 : 0] S_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = S_c_bitwidth;
    process_num = 1;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_1_finish <= 0;

        for (check_S_count = 0; check_S_count < S_OPERATE_DEPTH; check_S_count = check_S_count + 1) begin
            wait (ongoing_process_number === process_num && process_busy === 0);
            get_ack = 1;
            if (write_S_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write S data 
                for (i = 0; i < four_byte_num; i = i + 1) begin
                    if (S_c_bitwidth < 32) begin
                        S_data_tmp_reg = mem_S[check_S_count];
                    end
                    else begin
                        for (j = 0; j < 32; j = j + 1) begin
                            if (i*32 + j < S_c_bitwidth) begin
                                S_data_tmp_reg[j] = mem_S[check_S_count][i*32 + j];
                            end
                            else begin
                                S_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_S[check_S_count * four_byte_num  + i]!==S_data_tmp_reg) begin
                        image_mem_S[check_S_count * four_byte_num + i]=S_data_tmp_reg;
                        write (S_data_in_addr + check_S_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, S_data_tmp_reg, write_S_resp);
                        write_one_S_data_done <= 1;
                        @(posedge clk);
                        write_one_S_data_done <= 0;
                    end
                end
            end
            process_busy = 0;
        end

        process_1_finish <= 1;
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_V_run_flag <= 0; 
        count_operate_depth_by_bitwidth_and_depth (V_c_bitwidth, V_DEPTH, V_OPERATE_DEPTH);
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_V_run_flag <= 1; 
        end
        else if ((write_one_V_data_done == 1 && write_V_count == V_diff_count - 1) || V_diff_count == 0) begin
            write_V_run_flag <= 0; 
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_V_count = 0;
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_V_count = 0;
        end
        if (write_one_V_data_done === 1) begin
            write_V_count = write_V_count + 1;
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        V_write_data_finish <= 0;
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            V_write_data_finish <= 0;
        end
        if (write_V_run_flag == 1 && write_V_count == V_diff_count) begin
            V_write_data_finish <= 1;
        end
    end
end

initial begin : initial_diff_counter_V
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer k;
    reg [31 : 0] V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = V_c_bitwidth;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        wait (AESL_ready_reg === 1);
        V_diff_count = 0;

        for (k = 0; k < V_OPERATE_DEPTH; k = k + 1) begin
            for (i = 0; i < four_byte_num; i = i + 1) begin
                if (V_c_bitwidth < 32) begin
                    V_data_tmp_reg = mem_V[k];
                end
                else begin
                    for (j = 0; j < 32; j = j + 1) begin
                        if (i*32 + j < V_c_bitwidth) begin
                            V_data_tmp_reg[j] = mem_V[k][i*32 + j];
                        end
                        else begin
                            V_data_tmp_reg[j] = 0;
                        end
                    end
                end
                if(image_mem_V[k * four_byte_num  + i]!==V_data_tmp_reg) begin
                V_diff_count = V_diff_count + 1;
                end
            end
        end

        @(posedge clk);
    end
end

initial begin : write_V
    integer write_V_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer check_V_count;
    reg [31 : 0] V_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = V_c_bitwidth;
    process_num = 2;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_2_finish <= 0;

        for (check_V_count = 0; check_V_count < V_OPERATE_DEPTH; check_V_count = check_V_count + 1) begin
            wait (ongoing_process_number === process_num && process_busy === 0);
            get_ack = 1;
            if (write_V_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write V data 
                for (i = 0; i < four_byte_num; i = i + 1) begin
                    if (V_c_bitwidth < 32) begin
                        V_data_tmp_reg = mem_V[check_V_count];
                    end
                    else begin
                        for (j = 0; j < 32; j = j + 1) begin
                            if (i*32 + j < V_c_bitwidth) begin
                                V_data_tmp_reg[j] = mem_V[check_V_count][i*32 + j];
                            end
                            else begin
                                V_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_V[check_V_count * four_byte_num  + i]!==V_data_tmp_reg) begin
                        image_mem_V[check_V_count * four_byte_num + i]=V_data_tmp_reg;
                        write (V_data_in_addr + check_V_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, V_data_tmp_reg, write_V_resp);
                        write_one_V_data_done <= 1;
                        @(posedge clk);
                        write_one_V_data_done <= 0;
                    end
                end
            end
            process_busy = 0;
        end

        process_2_finish <= 1;
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_S0_run_flag <= 0; 
        count_operate_depth_by_bitwidth_and_depth (S0_c_bitwidth, S0_DEPTH, S0_OPERATE_DEPTH);
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_S0_run_flag <= 1; 
        end
        else if ((write_one_S0_data_done == 1 && write_S0_count == S0_diff_count - 1) || S0_diff_count == 0) begin
            write_S0_run_flag <= 0; 
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_S0_count = 0;
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_S0_count = 0;
        end
        if (write_one_S0_data_done === 1) begin
            write_S0_count = write_S0_count + 1;
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        S0_write_data_finish <= 0;
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            S0_write_data_finish <= 0;
        end
        if (write_S0_run_flag == 1 && write_S0_count == S0_diff_count) begin
            S0_write_data_finish <= 1;
        end
    end
end

initial begin : initial_diff_counter_S0
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer k;
    reg [31 : 0] S0_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = S0_c_bitwidth;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        wait (AESL_ready_reg === 1);
        S0_diff_count = 0;

        for (k = 0; k < S0_OPERATE_DEPTH; k = k + 1) begin
            for (i = 0; i < four_byte_num; i = i + 1) begin
                if (S0_c_bitwidth < 32) begin
                    S0_data_tmp_reg = mem_S0[k];
                end
                else begin
                    for (j = 0; j < 32; j = j + 1) begin
                        if (i*32 + j < S0_c_bitwidth) begin
                            S0_data_tmp_reg[j] = mem_S0[k][i*32 + j];
                        end
                        else begin
                            S0_data_tmp_reg[j] = 0;
                        end
                    end
                end
                if(image_mem_S0[k * four_byte_num  + i]!==S0_data_tmp_reg) begin
                S0_diff_count = S0_diff_count + 1;
                end
            end
        end

        @(posedge clk);
    end
end

initial begin : write_S0
    integer write_S0_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer check_S0_count;
    reg [31 : 0] S0_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = S0_c_bitwidth;
    process_num = 3;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_3_finish <= 0;

        for (check_S0_count = 0; check_S0_count < S0_OPERATE_DEPTH; check_S0_count = check_S0_count + 1) begin
            wait (ongoing_process_number === process_num && process_busy === 0);
            get_ack = 1;
            if (write_S0_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write S0 data 
                for (i = 0; i < four_byte_num; i = i + 1) begin
                    if (S0_c_bitwidth < 32) begin
                        S0_data_tmp_reg = mem_S0[check_S0_count];
                    end
                    else begin
                        for (j = 0; j < 32; j = j + 1) begin
                            if (i*32 + j < S0_c_bitwidth) begin
                                S0_data_tmp_reg[j] = mem_S0[check_S0_count][i*32 + j];
                            end
                            else begin
                                S0_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_S0[check_S0_count * four_byte_num  + i]!==S0_data_tmp_reg) begin
                        image_mem_S0[check_S0_count * four_byte_num + i]=S0_data_tmp_reg;
                        write (S0_data_in_addr + check_S0_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, S0_data_tmp_reg, write_S0_resp);
                        write_one_S0_data_done <= 1;
                        @(posedge clk);
                        write_one_S0_data_done <= 0;
                    end
                end
            end
            process_busy = 0;
        end

        process_3_finish <= 1;
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_r_run_flag <= 0; 
        count_operate_depth_by_bitwidth_and_depth (r_c_bitwidth, r_DEPTH, r_OPERATE_DEPTH);
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_r_run_flag <= 1; 
        end
        else if ((write_one_r_data_done == 1 && write_r_count == r_diff_count - 1) || r_diff_count == 0) begin
            write_r_run_flag <= 0; 
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_r_count = 0;
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_r_count = 0;
        end
        if (write_one_r_data_done === 1) begin
            write_r_count = write_r_count + 1;
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        r_write_data_finish <= 0;
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            r_write_data_finish <= 0;
        end
        if (write_r_run_flag == 1 && write_r_count == r_diff_count) begin
            r_write_data_finish <= 1;
        end
    end
end

initial begin : initial_diff_counter_r
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer k;
    reg [31 : 0] r_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = r_c_bitwidth;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        wait (AESL_ready_reg === 1);
        r_diff_count = 0;

        for (k = 0; k < r_OPERATE_DEPTH; k = k + 1) begin
            for (i = 0; i < four_byte_num; i = i + 1) begin
                if (r_c_bitwidth < 32) begin
                    r_data_tmp_reg = mem_r[k];
                end
                else begin
                    for (j = 0; j < 32; j = j + 1) begin
                        if (i*32 + j < r_c_bitwidth) begin
                            r_data_tmp_reg[j] = mem_r[k][i*32 + j];
                        end
                        else begin
                            r_data_tmp_reg[j] = 0;
                        end
                    end
                end
                if(image_mem_r[k * four_byte_num  + i]!==r_data_tmp_reg) begin
                r_diff_count = r_diff_count + 1;
                end
            end
        end

        @(posedge clk);
    end
end

initial begin : write_r
    integer write_r_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer check_r_count;
    reg [31 : 0] r_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = r_c_bitwidth;
    process_num = 4;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_4_finish <= 0;

        for (check_r_count = 0; check_r_count < r_OPERATE_DEPTH; check_r_count = check_r_count + 1) begin
            wait (ongoing_process_number === process_num && process_busy === 0);
            get_ack = 1;
            if (write_r_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write r data 
                for (i = 0; i < four_byte_num; i = i + 1) begin
                    if (r_c_bitwidth < 32) begin
                        r_data_tmp_reg = mem_r[check_r_count];
                    end
                    else begin
                        for (j = 0; j < 32; j = j + 1) begin
                            if (i*32 + j < r_c_bitwidth) begin
                                r_data_tmp_reg[j] = mem_r[check_r_count][i*32 + j];
                            end
                            else begin
                                r_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_r[check_r_count * four_byte_num  + i]!==r_data_tmp_reg) begin
                        image_mem_r[check_r_count * four_byte_num + i]=r_data_tmp_reg;
                        write (r_data_in_addr + check_r_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, r_data_tmp_reg, write_r_resp);
                        write_one_r_data_done <= 1;
                        @(posedge clk);
                        write_one_r_data_done <= 0;
                    end
                end
            end
            process_busy = 0;
        end

        process_4_finish <= 1;
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_sigma_init_run_flag <= 0; 
        count_operate_depth_by_bitwidth_and_depth (sigma_init_c_bitwidth, sigma_init_DEPTH, sigma_init_OPERATE_DEPTH);
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_sigma_init_run_flag <= 1; 
        end
        else if ((write_one_sigma_init_data_done == 1 && write_sigma_init_count == sigma_init_diff_count - 1) || sigma_init_diff_count == 0) begin
            write_sigma_init_run_flag <= 0; 
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_sigma_init_count = 0;
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_sigma_init_count = 0;
        end
        if (write_one_sigma_init_data_done === 1) begin
            write_sigma_init_count = write_sigma_init_count + 1;
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        sigma_init_write_data_finish <= 0;
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            sigma_init_write_data_finish <= 0;
        end
        if (write_sigma_init_run_flag == 1 && write_sigma_init_count == sigma_init_diff_count) begin
            sigma_init_write_data_finish <= 1;
        end
    end
end

initial begin : initial_diff_counter_sigma_init
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer k;
    reg [31 : 0] sigma_init_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = sigma_init_c_bitwidth;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        wait (AESL_ready_reg === 1);
        sigma_init_diff_count = 0;

        for (k = 0; k < sigma_init_OPERATE_DEPTH; k = k + 1) begin
            for (i = 0; i < four_byte_num; i = i + 1) begin
                if (sigma_init_c_bitwidth < 32) begin
                    sigma_init_data_tmp_reg = mem_sigma_init[k];
                end
                else begin
                    for (j = 0; j < 32; j = j + 1) begin
                        if (i*32 + j < sigma_init_c_bitwidth) begin
                            sigma_init_data_tmp_reg[j] = mem_sigma_init[k][i*32 + j];
                        end
                        else begin
                            sigma_init_data_tmp_reg[j] = 0;
                        end
                    end
                end
                if(image_mem_sigma_init[k * four_byte_num  + i]!==sigma_init_data_tmp_reg) begin
                sigma_init_diff_count = sigma_init_diff_count + 1;
                end
            end
        end

        @(posedge clk);
    end
end

initial begin : write_sigma_init
    integer write_sigma_init_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer check_sigma_init_count;
    reg [31 : 0] sigma_init_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = sigma_init_c_bitwidth;
    process_num = 5;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_5_finish <= 0;

        for (check_sigma_init_count = 0; check_sigma_init_count < sigma_init_OPERATE_DEPTH; check_sigma_init_count = check_sigma_init_count + 1) begin
            wait (ongoing_process_number === process_num && process_busy === 0);
            get_ack = 1;
            if (write_sigma_init_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write sigma_init data 
                for (i = 0; i < four_byte_num; i = i + 1) begin
                    if (sigma_init_c_bitwidth < 32) begin
                        sigma_init_data_tmp_reg = mem_sigma_init[check_sigma_init_count];
                    end
                    else begin
                        for (j = 0; j < 32; j = j + 1) begin
                            if (i*32 + j < sigma_init_c_bitwidth) begin
                                sigma_init_data_tmp_reg[j] = mem_sigma_init[check_sigma_init_count][i*32 + j];
                            end
                            else begin
                                sigma_init_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_sigma_init[check_sigma_init_count * four_byte_num  + i]!==sigma_init_data_tmp_reg) begin
                        image_mem_sigma_init[check_sigma_init_count * four_byte_num + i]=sigma_init_data_tmp_reg;
                        write (sigma_init_data_in_addr + check_sigma_init_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, sigma_init_data_tmp_reg, write_sigma_init_resp);
                        write_one_sigma_init_data_done <= 1;
                        @(posedge clk);
                        write_one_sigma_init_data_done <= 0;
                    end
                end
            end
            process_busy = 0;
        end

        process_5_finish <= 1;
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_alpha_run_flag <= 0; 
        count_operate_depth_by_bitwidth_and_depth (alpha_c_bitwidth, alpha_DEPTH, alpha_OPERATE_DEPTH);
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_alpha_run_flag <= 1; 
        end
        else if ((write_one_alpha_data_done == 1 && write_alpha_count == alpha_diff_count - 1) || alpha_diff_count == 0) begin
            write_alpha_run_flag <= 0; 
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_alpha_count = 0;
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_alpha_count = 0;
        end
        if (write_one_alpha_data_done === 1) begin
            write_alpha_count = write_alpha_count + 1;
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        alpha_write_data_finish <= 0;
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            alpha_write_data_finish <= 0;
        end
        if (write_alpha_run_flag == 1 && write_alpha_count == alpha_diff_count) begin
            alpha_write_data_finish <= 1;
        end
    end
end

initial begin : initial_diff_counter_alpha
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer k;
    reg [31 : 0] alpha_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = alpha_c_bitwidth;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        wait (AESL_ready_reg === 1);
        alpha_diff_count = 0;

        for (k = 0; k < alpha_OPERATE_DEPTH; k = k + 1) begin
            for (i = 0; i < four_byte_num; i = i + 1) begin
                if (alpha_c_bitwidth < 32) begin
                    alpha_data_tmp_reg = mem_alpha[k];
                end
                else begin
                    for (j = 0; j < 32; j = j + 1) begin
                        if (i*32 + j < alpha_c_bitwidth) begin
                            alpha_data_tmp_reg[j] = mem_alpha[k][i*32 + j];
                        end
                        else begin
                            alpha_data_tmp_reg[j] = 0;
                        end
                    end
                end
                if(image_mem_alpha[k * four_byte_num  + i]!==alpha_data_tmp_reg) begin
                alpha_diff_count = alpha_diff_count + 1;
                end
            end
        end

        @(posedge clk);
    end
end

initial begin : write_alpha
    integer write_alpha_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer check_alpha_count;
    reg [31 : 0] alpha_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = alpha_c_bitwidth;
    process_num = 6;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_6_finish <= 0;

        for (check_alpha_count = 0; check_alpha_count < alpha_OPERATE_DEPTH; check_alpha_count = check_alpha_count + 1) begin
            wait (ongoing_process_number === process_num && process_busy === 0);
            get_ack = 1;
            if (write_alpha_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write alpha data 
                for (i = 0; i < four_byte_num; i = i + 1) begin
                    if (alpha_c_bitwidth < 32) begin
                        alpha_data_tmp_reg = mem_alpha[check_alpha_count];
                    end
                    else begin
                        for (j = 0; j < 32; j = j + 1) begin
                            if (i*32 + j < alpha_c_bitwidth) begin
                                alpha_data_tmp_reg[j] = mem_alpha[check_alpha_count][i*32 + j];
                            end
                            else begin
                                alpha_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_alpha[check_alpha_count * four_byte_num  + i]!==alpha_data_tmp_reg) begin
                        image_mem_alpha[check_alpha_count * four_byte_num + i]=alpha_data_tmp_reg;
                        write (alpha_data_in_addr + check_alpha_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, alpha_data_tmp_reg, write_alpha_resp);
                        write_one_alpha_data_done <= 1;
                        @(posedge clk);
                        write_one_alpha_data_done <= 0;
                    end
                end
            end
            process_busy = 0;
        end

        process_6_finish <= 1;
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_beta_run_flag <= 0; 
        count_operate_depth_by_bitwidth_and_depth (beta_c_bitwidth, beta_DEPTH, beta_OPERATE_DEPTH);
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_beta_run_flag <= 1; 
        end
        else if ((write_one_beta_data_done == 1 && write_beta_count == beta_diff_count - 1) || beta_diff_count == 0) begin
            write_beta_run_flag <= 0; 
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_beta_count = 0;
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_beta_count = 0;
        end
        if (write_one_beta_data_done === 1) begin
            write_beta_count = write_beta_count + 1;
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        beta_write_data_finish <= 0;
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            beta_write_data_finish <= 0;
        end
        if (write_beta_run_flag == 1 && write_beta_count == beta_diff_count) begin
            beta_write_data_finish <= 1;
        end
    end
end

initial begin : initial_diff_counter_beta
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer k;
    reg [31 : 0] beta_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = beta_c_bitwidth;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        wait (AESL_ready_reg === 1);
        beta_diff_count = 0;

        for (k = 0; k < beta_OPERATE_DEPTH; k = k + 1) begin
            for (i = 0; i < four_byte_num; i = i + 1) begin
                if (beta_c_bitwidth < 32) begin
                    beta_data_tmp_reg = mem_beta[k];
                end
                else begin
                    for (j = 0; j < 32; j = j + 1) begin
                        if (i*32 + j < beta_c_bitwidth) begin
                            beta_data_tmp_reg[j] = mem_beta[k][i*32 + j];
                        end
                        else begin
                            beta_data_tmp_reg[j] = 0;
                        end
                    end
                end
                if(image_mem_beta[k * four_byte_num  + i]!==beta_data_tmp_reg) begin
                beta_diff_count = beta_diff_count + 1;
                end
            end
        end

        @(posedge clk);
    end
end

initial begin : write_beta
    integer write_beta_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer check_beta_count;
    reg [31 : 0] beta_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = beta_c_bitwidth;
    process_num = 7;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_7_finish <= 0;

        for (check_beta_count = 0; check_beta_count < beta_OPERATE_DEPTH; check_beta_count = check_beta_count + 1) begin
            wait (ongoing_process_number === process_num && process_busy === 0);
            get_ack = 1;
            if (write_beta_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write beta data 
                for (i = 0; i < four_byte_num; i = i + 1) begin
                    if (beta_c_bitwidth < 32) begin
                        beta_data_tmp_reg = mem_beta[check_beta_count];
                    end
                    else begin
                        for (j = 0; j < 32; j = j + 1) begin
                            if (i*32 + j < beta_c_bitwidth) begin
                                beta_data_tmp_reg[j] = mem_beta[check_beta_count][i*32 + j];
                            end
                            else begin
                                beta_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_beta[check_beta_count * four_byte_num  + i]!==beta_data_tmp_reg) begin
                        image_mem_beta[check_beta_count * four_byte_num + i]=beta_data_tmp_reg;
                        write (beta_data_in_addr + check_beta_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, beta_data_tmp_reg, write_beta_resp);
                        write_one_beta_data_done <= 1;
                        @(posedge clk);
                        write_one_beta_data_done <= 0;
                    end
                end
            end
            process_busy = 0;
        end

        process_7_finish <= 1;
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_rho_run_flag <= 0; 
        count_operate_depth_by_bitwidth_and_depth (rho_c_bitwidth, rho_DEPTH, rho_OPERATE_DEPTH);
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_rho_run_flag <= 1; 
        end
        else if ((write_one_rho_data_done == 1 && write_rho_count == rho_diff_count - 1) || rho_diff_count == 0) begin
            write_rho_run_flag <= 0; 
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_rho_count = 0;
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_rho_count = 0;
        end
        if (write_one_rho_data_done === 1) begin
            write_rho_count = write_rho_count + 1;
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        rho_write_data_finish <= 0;
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            rho_write_data_finish <= 0;
        end
        if (write_rho_run_flag == 1 && write_rho_count == rho_diff_count) begin
            rho_write_data_finish <= 1;
        end
    end
end

initial begin : initial_diff_counter_rho
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer k;
    reg [31 : 0] rho_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = rho_c_bitwidth;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        wait (AESL_ready_reg === 1);
        rho_diff_count = 0;

        for (k = 0; k < rho_OPERATE_DEPTH; k = k + 1) begin
            for (i = 0; i < four_byte_num; i = i + 1) begin
                if (rho_c_bitwidth < 32) begin
                    rho_data_tmp_reg = mem_rho[k];
                end
                else begin
                    for (j = 0; j < 32; j = j + 1) begin
                        if (i*32 + j < rho_c_bitwidth) begin
                            rho_data_tmp_reg[j] = mem_rho[k][i*32 + j];
                        end
                        else begin
                            rho_data_tmp_reg[j] = 0;
                        end
                    end
                end
                if(image_mem_rho[k * four_byte_num  + i]!==rho_data_tmp_reg) begin
                rho_diff_count = rho_diff_count + 1;
                end
            end
        end

        @(posedge clk);
    end
end

initial begin : write_rho
    integer write_rho_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer check_rho_count;
    reg [31 : 0] rho_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = rho_c_bitwidth;
    process_num = 8;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_8_finish <= 0;

        for (check_rho_count = 0; check_rho_count < rho_OPERATE_DEPTH; check_rho_count = check_rho_count + 1) begin
            wait (ongoing_process_number === process_num && process_busy === 0);
            get_ack = 1;
            if (write_rho_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write rho data 
                for (i = 0; i < four_byte_num; i = i + 1) begin
                    if (rho_c_bitwidth < 32) begin
                        rho_data_tmp_reg = mem_rho[check_rho_count];
                    end
                    else begin
                        for (j = 0; j < 32; j = j + 1) begin
                            if (i*32 + j < rho_c_bitwidth) begin
                                rho_data_tmp_reg[j] = mem_rho[check_rho_count][i*32 + j];
                            end
                            else begin
                                rho_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_rho[check_rho_count * four_byte_num  + i]!==rho_data_tmp_reg) begin
                        image_mem_rho[check_rho_count * four_byte_num + i]=rho_data_tmp_reg;
                        write (rho_data_in_addr + check_rho_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, rho_data_tmp_reg, write_rho_resp);
                        write_one_rho_data_done <= 1;
                        @(posedge clk);
                        write_one_rho_data_done <= 0;
                    end
                end
            end
            process_busy = 0;
        end

        process_8_finish <= 1;
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_T_run_flag <= 0; 
        count_operate_depth_by_bitwidth_and_depth (T_c_bitwidth, T_DEPTH, T_OPERATE_DEPTH);
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_T_run_flag <= 1; 
        end
        else if ((write_one_T_data_done == 1 && write_T_count == T_diff_count - 1) || T_diff_count == 0) begin
            write_T_run_flag <= 0; 
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_T_count = 0;
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_T_count = 0;
        end
        if (write_one_T_data_done === 1) begin
            write_T_count = write_T_count + 1;
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        T_write_data_finish <= 0;
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            T_write_data_finish <= 0;
        end
        if (write_T_run_flag == 1 && write_T_count == T_diff_count) begin
            T_write_data_finish <= 1;
        end
    end
end

initial begin : initial_diff_counter_T
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer k;
    reg [31 : 0] T_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = T_c_bitwidth;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        wait (AESL_ready_reg === 1);
        T_diff_count = 0;

        for (k = 0; k < T_OPERATE_DEPTH; k = k + 1) begin
            for (i = 0; i < four_byte_num; i = i + 1) begin
                if (T_c_bitwidth < 32) begin
                    T_data_tmp_reg = mem_T[k];
                end
                else begin
                    for (j = 0; j < 32; j = j + 1) begin
                        if (i*32 + j < T_c_bitwidth) begin
                            T_data_tmp_reg[j] = mem_T[k][i*32 + j];
                        end
                        else begin
                            T_data_tmp_reg[j] = 0;
                        end
                    end
                end
                if(image_mem_T[k * four_byte_num  + i]!==T_data_tmp_reg) begin
                T_diff_count = T_diff_count + 1;
                end
            end
        end

        @(posedge clk);
    end
end

initial begin : write_T
    integer write_T_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer check_T_count;
    reg [31 : 0] T_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = T_c_bitwidth;
    process_num = 9;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_9_finish <= 0;

        for (check_T_count = 0; check_T_count < T_OPERATE_DEPTH; check_T_count = check_T_count + 1) begin
            wait (ongoing_process_number === process_num && process_busy === 0);
            get_ack = 1;
            if (write_T_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write T data 
                for (i = 0; i < four_byte_num; i = i + 1) begin
                    if (T_c_bitwidth < 32) begin
                        T_data_tmp_reg = mem_T[check_T_count];
                    end
                    else begin
                        for (j = 0; j < 32; j = j + 1) begin
                            if (i*32 + j < T_c_bitwidth) begin
                                T_data_tmp_reg[j] = mem_T[check_T_count][i*32 + j];
                            end
                            else begin
                                T_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_T[check_T_count * four_byte_num  + i]!==T_data_tmp_reg) begin
                        image_mem_T[check_T_count * four_byte_num + i]=T_data_tmp_reg;
                        write (T_data_in_addr + check_T_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, T_data_tmp_reg, write_T_resp);
                        write_one_T_data_done <= 1;
                        @(posedge clk);
                        write_one_T_data_done <= 0;
                    end
                end
            end
            process_busy = 0;
        end

        process_9_finish <= 1;
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_random_increments_run_flag <= 0; 
        count_operate_depth_by_bitwidth_and_depth (random_increments_c_bitwidth, random_increments_DEPTH, random_increments_OPERATE_DEPTH);
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_random_increments_run_flag <= 1; 
        end
        else if ((write_one_random_increments_data_done == 1 && write_random_increments_count == random_increments_diff_count - 1) || random_increments_diff_count == 0) begin
            write_random_increments_run_flag <= 0; 
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_random_increments_count = 0;
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_random_increments_count = 0;
        end
        if (write_one_random_increments_data_done === 1) begin
            write_random_increments_count = write_random_increments_count + 1;
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        random_increments_write_data_finish <= 0;
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            random_increments_write_data_finish <= 0;
        end
        if (write_random_increments_run_flag == 1 && write_random_increments_count == random_increments_diff_count) begin
            random_increments_write_data_finish <= 1;
        end
    end
end

initial begin : initial_diff_counter_random_increments
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer k;
    reg [31 : 0] random_increments_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = random_increments_c_bitwidth;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        wait (AESL_ready_reg === 1);
        random_increments_diff_count = 0;

        for (k = 0; k < random_increments_OPERATE_DEPTH; k = k + 1) begin
            for (i = 0; i < four_byte_num; i = i + 1) begin
                if (random_increments_c_bitwidth < 32) begin
                    random_increments_data_tmp_reg = mem_random_increments[k];
                end
                else begin
                    for (j = 0; j < 32; j = j + 1) begin
                        if (i*32 + j < random_increments_c_bitwidth) begin
                            random_increments_data_tmp_reg[j] = mem_random_increments[k][i*32 + j];
                        end
                        else begin
                            random_increments_data_tmp_reg[j] = 0;
                        end
                    end
                end
                if(image_mem_random_increments[k * four_byte_num  + i]!==random_increments_data_tmp_reg) begin
                random_increments_diff_count = random_increments_diff_count + 1;
                end
            end
        end

        @(posedge clk);
    end
end

initial begin : write_random_increments
    integer write_random_increments_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer check_random_increments_count;
    reg [31 : 0] random_increments_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = random_increments_c_bitwidth;
    process_num = 10;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_10_finish <= 0;

        for (check_random_increments_count = 0; check_random_increments_count < random_increments_OPERATE_DEPTH; check_random_increments_count = check_random_increments_count + 1) begin
            wait (ongoing_process_number === process_num && process_busy === 0);
            get_ack = 1;
            if (write_random_increments_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write random_increments data 
                for (i = 0; i < four_byte_num; i = i + 1) begin
                    if (random_increments_c_bitwidth < 32) begin
                        random_increments_data_tmp_reg = mem_random_increments[check_random_increments_count];
                    end
                    else begin
                        for (j = 0; j < 32; j = j + 1) begin
                            if (i*32 + j < random_increments_c_bitwidth) begin
                                random_increments_data_tmp_reg[j] = mem_random_increments[check_random_increments_count][i*32 + j];
                            end
                            else begin
                                random_increments_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_random_increments[check_random_increments_count * four_byte_num  + i]!==random_increments_data_tmp_reg) begin
                        image_mem_random_increments[check_random_increments_count * four_byte_num + i]=random_increments_data_tmp_reg;
                        write (random_increments_data_in_addr + check_random_increments_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, random_increments_data_tmp_reg, write_random_increments_resp);
                        write_one_random_increments_data_done <= 1;
                        @(posedge clk);
                        write_one_random_increments_data_done <= 0;
                    end
                end
            end
            process_busy = 0;
        end

        process_10_finish <= 1;
        @(posedge clk);
    end    
end


always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_start_run_flag <= 0; 
        write_start_count <= 0;
    end
    else begin
        if (write_start_count >= 1) begin
            write_start_run_flag <= 0; 
        end
        else if (TRAN_control_write_start_in === 1) begin
            write_start_run_flag <= 1; 
        end
        if (AESL_write_start_finish === 1) begin
            write_start_count <= write_start_count + 1;
            write_start_run_flag <= 0; 
        end
    end
end

initial begin : write_start
    reg [DATA_WIDTH - 1 : 0] write_start_tmp;
    integer process_num;
    integer write_start_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 11;
    while (1) begin
        process_11_finish = 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (write_start_run_flag === 1) begin
                process_busy = 1;
                write_start_tmp=0;
                write_start_tmp[0 : 0] = 1;
                write (START_ADDR, write_start_tmp, write_start_resp);
                process_busy = 0;
                AESL_write_start_finish <= 1;
                @(posedge clk);
                AESL_write_start_finish <= 0;
            end
            process_11_finish <= 1;
        end 
        @(posedge clk);
    end
end

//------------------------Task and function-------------- 
task read_token; 
    input integer fp; 
    output reg [151 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end 
endtask 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_S_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [S_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (S_c_bitwidth , factor);
  fp = $fopen(`TV_IN_S ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_S); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < S_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_S [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_S [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_S [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_S [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_S [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_S;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_V_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [V_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (V_c_bitwidth , factor);
  fp = $fopen(`TV_IN_V ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_V); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < V_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_V [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_V [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_V [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_V [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_V [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_V;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_S0_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [S0_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (S0_c_bitwidth , factor);
  fp = $fopen(`TV_IN_S0 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_S0); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < S0_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_S0 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_S0 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_S0 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_S0 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_S0 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_S0;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_r_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [r_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (r_c_bitwidth , factor);
  fp = $fopen(`TV_IN_r ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_r); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < r_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_r [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_r [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_r [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_r [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_r [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_r;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_sigma_init_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [sigma_init_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (sigma_init_c_bitwidth , factor);
  fp = $fopen(`TV_IN_sigma_init ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_sigma_init); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < sigma_init_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_sigma_init [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_sigma_init [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_sigma_init [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_sigma_init [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_sigma_init [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_sigma_init;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_alpha_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [alpha_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (alpha_c_bitwidth , factor);
  fp = $fopen(`TV_IN_alpha ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_alpha); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < alpha_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_alpha [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_alpha [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_alpha [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_alpha [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_alpha [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_alpha;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_beta_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [beta_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (beta_c_bitwidth , factor);
  fp = $fopen(`TV_IN_beta ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_beta); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < beta_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_beta [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_beta [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_beta [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_beta [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_beta [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_beta;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_rho_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [rho_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (rho_c_bitwidth , factor);
  fp = $fopen(`TV_IN_rho ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_rho); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < rho_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_rho [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_rho [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_rho [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_rho [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_rho [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_rho;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_T_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [T_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (T_c_bitwidth , factor);
  fp = $fopen(`TV_IN_T ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_T); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < T_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_T [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_T [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_T [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_T [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_T [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_T;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_random_increments_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [random_increments_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (random_increments_c_bitwidth , factor);
  fp = $fopen(`TV_IN_random_increments ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_random_increments); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < random_increments_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_random_increments [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_random_increments [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_random_increments [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_random_increments [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_random_increments [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_random_increments;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
endmodule
