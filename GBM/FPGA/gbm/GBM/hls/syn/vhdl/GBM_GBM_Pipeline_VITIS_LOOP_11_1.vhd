-- ==============================================================
-- Generated by Vitis HLS v2024.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity GBM_GBM_Pipeline_VITIS_LOOP_11_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    m_axi_gmem_0_AWVALID : OUT STD_LOGIC;
    m_axi_gmem_0_AWREADY : IN STD_LOGIC;
    m_axi_gmem_0_AWADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem_0_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_0_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem_0_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_0_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_0_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_0_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_0_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_0_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_0_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_0_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_0_WVALID : OUT STD_LOGIC;
    m_axi_gmem_0_WREADY : IN STD_LOGIC;
    m_axi_gmem_0_WDATA : OUT STD_LOGIC_VECTOR (255 downto 0);
    m_axi_gmem_0_WSTRB : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem_0_WLAST : OUT STD_LOGIC;
    m_axi_gmem_0_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_0_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_0_ARVALID : OUT STD_LOGIC;
    m_axi_gmem_0_ARREADY : IN STD_LOGIC;
    m_axi_gmem_0_ARADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem_0_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_0_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem_0_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_0_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_0_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_0_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_0_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_0_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_0_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_0_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_0_RVALID : IN STD_LOGIC;
    m_axi_gmem_0_RREADY : OUT STD_LOGIC;
    m_axi_gmem_0_RDATA : IN STD_LOGIC_VECTOR (255 downto 0);
    m_axi_gmem_0_RLAST : IN STD_LOGIC;
    m_axi_gmem_0_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_0_RFIFONUM : IN STD_LOGIC_VECTOR (8 downto 0);
    m_axi_gmem_0_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_0_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_0_BVALID : IN STD_LOGIC;
    m_axi_gmem_0_BREADY : OUT STD_LOGIC;
    m_axi_gmem_0_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_0_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_0_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    empty : IN STD_LOGIC_VECTOR (63 downto 0);
    sext_ln11 : IN STD_LOGIC_VECTOR (58 downto 0) );
end;


architecture behav of GBM_GBM_Pipeline_VITIS_LOOP_11_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_FFFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111111";
    constant ap_const_lv192_lc_1 : STD_LOGIC_VECTOR (191 downto 0) := "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv7_64 : STD_LOGIC_VECTOR (6 downto 0) := "1100100";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv32_40 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000000";
    constant ap_const_lv32_BF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010111111";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal icmp_ln12_reg_212 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2_io_grp1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln11_fu_107_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal gmem_blk_n_W : STD_LOGIC;
    signal ap_block_pp0_stage0_grp1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001_grp1 : BOOLEAN;
    signal icmp_ln12_fu_123_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal ap_block_pp0_stage0_01001_grp1 : BOOLEAN;
    signal phi_ln12_fu_62 : STD_LOGIC_VECTOR (191 downto 0) := "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    signal select_ln12_fu_171_p3 : STD_LOGIC_VECTOR (191 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal m_fu_66 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    signal add_ln11_fu_113_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_sig_allocacmp_m_2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal trunc_ln11_fu_119_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_49_fu_154_p4 : STD_LOGIC_VECTOR (127 downto 0);
    signal tmp_s_fu_164_p3 : STD_LOGIC_VECTOR (191 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ready_sig : STD_LOGIC;
    signal ap_done_sig : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component GBM_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component GBM_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready_sig,
        ap_done => ap_done_sig,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_exit_ready = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    m_fu_66_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln11_fu_107_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    m_fu_66 <= add_ln11_fu_113_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    m_fu_66 <= ap_const_lv7_0;
                end if;
            end if; 
        end if;
    end process;

    phi_ln12_fu_62_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001_grp1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    phi_ln12_fu_62 <= ap_const_lv192_lc_1;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    phi_ln12_fu_62 <= select_ln12_fu_171_p3;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln12_reg_212 <= icmp_ln12_fu_123_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln11_fu_113_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_m_2) + unsigned(ap_const_lv7_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001_grp1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, ap_block_state2_io_grp1)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state2_io_grp1));
    end process;


    ap_block_pp0_stage0_11001_grp1_assign_proc : process(ap_enable_reg_pp0_iter1, ap_block_state2_io_grp1)
    begin
                ap_block_pp0_stage0_11001_grp1 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state2_io_grp1));
    end process;

        ap_block_pp0_stage0_grp1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, ap_block_state2_io_grp1)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state2_io_grp1));
    end process;


    ap_block_state2_io_grp1_assign_proc : process(m_axi_gmem_0_WREADY, icmp_ln12_reg_212)
    begin
                ap_block_state2_io_grp1 <= ((icmp_ln12_reg_212 = ap_const_lv1_1) and (m_axi_gmem_0_WREADY = ap_const_logic_0));
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln11_fu_107_p2)
    begin
        if (((icmp_ln11_fu_107_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_done <= ap_done_sig;

    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_exit_ready = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;
    ap_ready <= ap_ready_sig;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_m_2_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_loop_init, m_fu_66, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_m_2 <= ap_const_lv7_0;
        else 
            ap_sig_allocacmp_m_2 <= m_fu_66;
        end if; 
    end process;


    gmem_blk_n_W_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, m_axi_gmem_0_WREADY, icmp_ln12_reg_212, ap_block_pp0_stage0_grp1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_grp1) and (icmp_ln12_reg_212 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            gmem_blk_n_W <= m_axi_gmem_0_WREADY;
        else 
            gmem_blk_n_W <= ap_const_logic_1;
        end if; 
    end process;

    icmp_ln11_fu_107_p2 <= "1" when (ap_sig_allocacmp_m_2 = ap_const_lv7_64) else "0";
    icmp_ln12_fu_123_p2 <= "1" when (trunc_ln11_fu_119_p1 = ap_const_lv2_3) else "0";
    m_axi_gmem_0_ARADDR <= ap_const_lv64_0;
    m_axi_gmem_0_ARBURST <= ap_const_lv2_0;
    m_axi_gmem_0_ARCACHE <= ap_const_lv4_0;
    m_axi_gmem_0_ARID <= ap_const_lv1_0;
    m_axi_gmem_0_ARLEN <= ap_const_lv32_0;
    m_axi_gmem_0_ARLOCK <= ap_const_lv2_0;
    m_axi_gmem_0_ARPROT <= ap_const_lv3_0;
    m_axi_gmem_0_ARQOS <= ap_const_lv4_0;
    m_axi_gmem_0_ARREGION <= ap_const_lv4_0;
    m_axi_gmem_0_ARSIZE <= ap_const_lv3_0;
    m_axi_gmem_0_ARUSER <= ap_const_lv1_0;
    m_axi_gmem_0_ARVALID <= ap_const_logic_0;
    m_axi_gmem_0_AWADDR <= ap_const_lv64_0;
    m_axi_gmem_0_AWBURST <= ap_const_lv2_0;
    m_axi_gmem_0_AWCACHE <= ap_const_lv4_0;
    m_axi_gmem_0_AWID <= ap_const_lv1_0;
    m_axi_gmem_0_AWLEN <= ap_const_lv32_0;
    m_axi_gmem_0_AWLOCK <= ap_const_lv2_0;
    m_axi_gmem_0_AWPROT <= ap_const_lv3_0;
    m_axi_gmem_0_AWQOS <= ap_const_lv4_0;
    m_axi_gmem_0_AWREGION <= ap_const_lv4_0;
    m_axi_gmem_0_AWSIZE <= ap_const_lv3_0;
    m_axi_gmem_0_AWUSER <= ap_const_lv1_0;
    m_axi_gmem_0_AWVALID <= ap_const_logic_0;
    m_axi_gmem_0_BREADY <= ap_const_logic_0;
    m_axi_gmem_0_RREADY <= ap_const_logic_0;
    m_axi_gmem_0_WDATA <= (empty & phi_ln12_fu_62);
    m_axi_gmem_0_WID <= ap_const_lv1_0;
    m_axi_gmem_0_WLAST <= ap_const_logic_0;
    m_axi_gmem_0_WSTRB <= ap_const_lv32_FFFFFFFF;
    m_axi_gmem_0_WUSER <= ap_const_lv1_0;

    m_axi_gmem_0_WVALID_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln12_reg_212, ap_block_pp0_stage0_11001_grp1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001_grp1) and (icmp_ln12_reg_212 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            m_axi_gmem_0_WVALID <= ap_const_logic_1;
        else 
            m_axi_gmem_0_WVALID <= ap_const_logic_0;
        end if; 
    end process;

    select_ln12_fu_171_p3 <= 
        ap_const_lv192_lc_1 when (icmp_ln12_reg_212(0) = '1') else 
        tmp_s_fu_164_p3;
    tmp_49_fu_154_p4 <= phi_ln12_fu_62(191 downto 64);
    tmp_s_fu_164_p3 <= (empty & tmp_49_fu_154_p4);
    trunc_ln11_fu_119_p1 <= ap_sig_allocacmp_m_2(2 - 1 downto 0);
end behav;