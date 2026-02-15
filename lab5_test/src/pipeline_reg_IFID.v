////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : pipeline_reg_IFID.vf
// /___/   /\     Timestamp : 02/13/2026 09:54:03
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w Z:/EE533/lab5_sp26/pipeline_cpu/schematics/pipeline_reg_IFID.sch pipeline_reg_IFID.vf
//Design Name: pipeline_reg_IFID
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module pipeline_reg_IFID(clk, 
                         IF_instruction, 
                         ID_instruction);

    input clk;
    input [31:0] IF_instruction;
   output [31:0] ID_instruction;
   
   
   dff_32b XLXI_1 (.clk(clk), 
                   .d(IF_instruction[31:0]), 
                   .q(ID_instruction[31:0]));
endmodule
