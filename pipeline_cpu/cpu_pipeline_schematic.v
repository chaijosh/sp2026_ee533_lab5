////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : cpu_pipeline_schematic.vf
// /___/   /\     Timestamp : 02/13/2026 10:52:00
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w Z:/EE533/lab5_sp26/pipeline_cpu/schematics/cpu_pipeline_schematic.sch cpu_pipeline_schematic.vf
//Design Name: cpu_pipeline_schematic
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module cpu_pipeline_schematic(clk, 
                              rst);

    input clk;
    input rst;
   
   wire [31:0] ID_instruction;
   wire [31:0] IF_instruction;
   wire MEM_MemRead;
   wire MEM_MemWrite;
   wire MEM_RegWrite;
   wire [63:0] MEM_r0data;
   wire [63:0] MEM_r1data;
   wire [4:0] MEM_waddr;
   wire WB_RegWrite;
   wire [4:0] WB_waddr;
   wire [63:0] WB_wdata;
   wire [8:0] XLXN_9;
   wire XLXN_87;
   wire XLXN_88;
   wire [8:0] XLXN_95;
   wire XLXN_215;
   wire XLXN_216;
   wire [63:0] XLXN_312;
   wire [63:0] XLXN_313;
   wire [63:0] XLXN_338;
   wire XLXN_352;
   wire XLXN_353;
   wire XLXN_354;
   wire [63:0] XLXN_355;
   wire [4:0] XLXN_356;
   
   OR2 dcache_write_en (.I0(MEM_MemWrite), 
                        .I1(MEM_MemRead), 
                        .O(XLXN_215));
   data_mem_64_256 DCache_64x256 (.addra(MEM_r0data[7:0]), 
                                  .addrb(), 
                                  .clka(clk), 
                                  .clkb(clk), 
                                  .dina(MEM_r1data[63:0]), 
                                  .dinb(), 
                                  .ena(XLXN_215), 
                                  .enb(), 
                                  .wea(MEM_MemWrite), 
                                  .web(), 
                                  .douta(WB_wdata[63:0]), 
                                  .doutb());
   instr_mem_32x512 ICache_32x512 (.addr(XLXN_9[8:0]), 
                                   .clk(clk), 
                                   .din(), 
                                   .en(XLXN_87), 
                                   .we(XLXN_88), 
                                   .dout(IF_instruction[31:0]));
   incrementer_pc PC_incrementer (.pc(XLXN_9[8:0]), 
                                  .pc_next(XLXN_95[8:0]));
   PC_reg_9bit PC_register (.clk(clk), 
                            .pc_in(XLXN_95[8:0]), 
                            .rst(XLXN_216), 
                            .pc_out(XLXN_9[8:0]));
   pipeline_reg_EXMEM pipeline_stage_EX_MEM (.clk(clk), 
                                             .EX_MemRead(XLXN_353), 
                                             .EX_MemWrite(XLXN_354), 
                                             .EX_RegWrite(XLXN_352), 
                                             .EX_r0data(XLXN_338[63:0]), 
                                             .EX_r1data(XLXN_355[63:0]), 
                                             .EX_waddr(XLXN_356[4:0]), 
                                             .MEM_MemRead(MEM_MemRead), 
                                             .MEM_MemWrite(MEM_MemWrite), 
                                             .MEM_RegWrite(MEM_RegWrite), 
                                             .MEM_r0data(MEM_r0data[63:0]), 
                                             .MEM_r1data(MEM_r1data[63:0]), 
                                             .MEM_waddr(MEM_waddr[4:0]));
   pipeline_reg_IDEX pipeline_stage_ID_EX (.clk(clk), 
                                           .ID_MemRead(ID_instruction[27]), 
                                           .ID_MemWrite(ID_instruction[28]), 
                                           .ID_RegWrite(ID_instruction[26]), 
                                           .ID_r0data(XLXN_312[63:0]), 
                                           .ID_r1data(XLXN_313[63:0]), 
                                           .ID_waddr(ID_instruction[15:11]), 
                                           .EX_MemRead(XLXN_353), 
                                           .EX_MemWrite(XLXN_354), 
                                           .EX_RegWrite(XLXN_352), 
                                           .EX_r0data(XLXN_338[63:0]), 
                                           .EX_r1data(XLXN_355[63:0]), 
                                           .EX_waddr(XLXN_356[4:0]));
   pipeline_reg_IFID pipeline_stage_IF_ID (.clk(clk), 
                                           
         .IF_instruction(IF_instruction[31:0]), 
                                           
         .ID_instruction(ID_instruction[31:0]));
   dff_5b pipeline_stage_MEM_WB1 (.clk(clk), 
                                  .d(MEM_waddr[4:0]), 
                                  .q(WB_waddr[4:0]));
   FD pipeline_stage_MEM_WB2 (.C(clk), 
                              .D(MEM_RegWrite), 
                              .Q(WB_RegWrite));
   defparam pipeline_stage_MEM_WB2.INIT = 1'b0;
   reg_file_64x32 register_file (.clk(clk), 
                                 .r0addr(ID_instruction[25:21]), 
                                 .r1addr(ID_instruction[20:16]), 
                                 .waddr(WB_waddr[4:0]), 
                                 .wdata(WB_wdata[63:0]), 
                                 .wena(WB_RegWrite), 
                                 .r0data(XLXN_312[63:0]), 
                                 .r1data(XLXN_313[63:0]));
   VCC XLXI_28 (.P(XLXN_87));
   GND XLXI_29 (.G(XLXN_88));
   INV XLXI_71 (.I(rst), 
                .O(XLXN_216));
endmodule
