////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : pipeline_reg_IDEX.vf
// /___/   /\     Timestamp : 02/13/2026 10:45:18
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w Z:/EE533/lab5_sp26/pipeline_cpu/schematics/pipeline_reg_IDEX.sch pipeline_reg_IDEX.vf
//Design Name: pipeline_reg_IDEX
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module pipeline_reg_IDEX(clk, 
                         ID_MemRead, 
                         ID_MemWrite, 
                         ID_RegWrite, 
                         ID_r0data, 
                         ID_r1data, 
                         ID_waddr, 
                         EX_MemRead, 
                         EX_MemWrite, 
                         EX_RegWrite, 
                         EX_r0data, 
                         EX_r1data, 
                         EX_waddr);

    input clk;
    input ID_MemRead;
    input ID_MemWrite;
    input ID_RegWrite;
    input [63:0] ID_r0data;
    input [63:0] ID_r1data;
    input [4:0] ID_waddr;
   output EX_MemRead;
   output EX_MemWrite;
   output EX_RegWrite;
   output [63:0] EX_r0data;
   output [63:0] EX_r1data;
   output [4:0] EX_waddr;
   
   
   dff_5b XLXI_13 (.clk(clk), 
                   .d(ID_waddr[4:0]), 
                   .q(EX_waddr[4:0]));
   FD XLXI_62 (.C(clk), 
               .D(ID_MemWrite), 
               .Q(EX_MemWrite));
   defparam XLXI_62.INIT = 1'b0;
   FD XLXI_63 (.C(clk), 
               .D(ID_MemRead), 
               .Q(EX_MemRead));
   defparam XLXI_63.INIT = 1'b0;
   FD XLXI_64 (.C(clk), 
               .D(ID_RegWrite), 
               .Q(EX_RegWrite));
   defparam XLXI_64.INIT = 1'b0;
   dff_64b XLXI_73 (.clk(clk), 
                    .d(ID_r0data[63:0]), 
                    .q(EX_r0data[63:0]));
   dff_64b XLXI_74 (.clk(clk), 
                    .d(ID_r1data[63:0]), 
                    .q(EX_r1data[63:0]));
endmodule
