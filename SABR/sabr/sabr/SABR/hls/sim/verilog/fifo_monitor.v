///////////////////////////////////////////////////////////////////////////
// This module is used to monitor fifo max depth and I/O block states
// it will dump these infomation into a json file after simualtion finished
// it will also record the total latency of all transactions in the same file
///////////////////////////////////////////////////////////////////////////
`timescale 1ns/1ps
module fifo_monitor(
input wire clk,
input wire rst,
input wire [31:0] lat_total,
input wire finish
);

function [3:0] fifo_scenario;
    input [63:0] pair_mem[65535:0];
    input [15:0] pair_cnt;
    input is_single_chan;
    reg [15:0] pair_idx;
    reg [1:0] pair_tmp;
    reg [15:0] p00_cnt;
    reg [15:0] p01_cnt;
    reg [15:0] p10_cnt;
    reg [15:0] p11_cnt;
    real p00_percent;
    real p01_percent;
    real p10_percent;
    real p11_percent;
begin
    pair_idx = 16'h0;
    p00_cnt = 16'h0;
    p01_cnt = 16'h0;
    p10_cnt = 16'h0;
    p11_cnt = 16'h0;
    while (pair_idx < pair_cnt) begin
        pair_tmp = {pair_mem[pair_idx][63],pair_mem[pair_idx][31]};
        case(pair_tmp)
            2'b00 : p00_cnt = p00_cnt + 16'h1;
            2'b01 : p01_cnt = p01_cnt + 16'h1;
            2'b10 : p10_cnt = p10_cnt + 16'h1;
            2'b11 : p11_cnt = p11_cnt + 16'h1;
            default: $display("fifo pair has unknown value.");
        endcase
        pair_idx = pair_idx + 16'h1;
    end
    p00_percent = p00_cnt * 1.0 / pair_cnt;
    p01_percent = p01_cnt * 1.0 / pair_cnt;
    p10_percent = p10_cnt * 1.0 / pair_cnt;
    p11_percent = p11_cnt * 1.0 / pair_cnt;
    if (p00_percent == 1.0)
        fifo_scenario = 5;
    else if (p10_percent + p00_percent == 1.0 && is_single_chan == 1'b1) 
        fifo_scenario = 6;
    else if (p10_percent + p00_percent == 1.0)
        fifo_scenario = 4;
    else if (p01_percent > 0.5)
        fifo_scenario = 3;
    else if (p11_percent > 0.5)
        fifo_scenario = 1;
    else if (p10_percent + p01_percent > 0.5)
        fifo_scenario = 2;
    else
        fifo_scenario = 0;
end
endfunction


wire all_fifo_process_done;
assign all_fifo_process_done = 1'b1;
initial begin : profile_dump
    integer fp;
    wait(finish == 1'b1);
    wait(all_fifo_process_done == 1'b1);
    fp = $fopen("fifo_sizing_current.json","w");
    $fdisplay(fp,"{");
    $fdisplay(fp,"\"fifo_info\" : [");
    $fdisplay(fp,"],");
    $fdisplay(fp,"\"lat_total\" : %0d",lat_total);
    $fdisplay(fp,"}");
    $fclose(fp);
end
endmodule
