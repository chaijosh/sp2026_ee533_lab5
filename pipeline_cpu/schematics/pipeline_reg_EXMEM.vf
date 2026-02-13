////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : pipeline_reg_EXMEM.vf
// /___/   /\     Timestamp : 02/13/2026 10:45:20
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w Z:/EE533/lab5_sp26/pipeline_cpu/schematics/pipeline_reg_EXMEM.sch pipeline_reg_EXMEM.vf
//Design Name: pipeline_reg_EXMEM
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module pipeline_reg_EXMEM(clk, 
                          EX_MemRead, 
                          EX_MemWrite, 
                          EX_RegWrite, 
                          EX_r0data, 
                          EX_r1data, 
                          EX_waddr, 
                          MEM_MemRead, 
                          MEM_MemWrite, 
                          MEM_RegWrite, 
                          MEM_r0data, 
                          MEM_r1data, 
                          MEM_waddr);

    input clk;
    input EX_MemRead;
    input EX_MemWrite;
    input EX_RegWrite;
    input [63:0] EX_r0data;
    input [63:0] EX_r1data;
    input [4:0] EX_waddr;
   output MEM_MemRead;
   output MEM_MemWrite;
   output MEM_RegWrite;
   output [63:0] MEM_r0data;
   output [63:0] MEM_r1data;
   output [4:0] MEM_waddr;
   
   
   dff_5b XLXI_13 (.clk(clk), 
                   .d(EX_waddr[4:0]), 
                   .q(MEM_waddr[4:0]));
   FD XLXI_62 (.C(clk), 
               .D(EX_MemWrite), 
               .Q(MEM_MemWrite));
   defparam XLXI_62.INIT = 1'b0;
   FD XLXI_63 (.C(clk), 
               .D(EX_MemRead), 
               .Q(MEM_MemRead));
   defparam XLXI_63.INIT = 1'b0;
   FD XLXI_64 (.C(clk), 
               .D(EX_RegWrite), 
               .Q(MEM_RegWrite));
   defparam XLXI_64.INIT = 1'b0;
   dff_64b XLXI_73 (.clk(clk), 
                    .d(EX_r0data[63:0]), 
                    .q(MEM_r0data[63:0]));
   dff_64b XLXI_74 (.clk(clk), 
                    .d(EX_r1data[63:0]), 
                    .q(MEM_r1data[63:0]));
endmodule
