////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : dff_64b.vf
// /___/   /\     Timestamp : 02/12/2026 22:37:16
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w Z:/EE533/lab5_sp26/memory_module/schematics/dff_64b.sch dff_64b.vf
//Design Name: dff_64b
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module dff_64b(clk, 
               d, 
               q);

    input clk;
    input [63:0] d;
   output [63:0] q;
   
   
   dff_32b XLXI_1 (.clk(clk), 
                   .d(d[63:32]), 
                   .q(q[63:32]));
   dff_32b XLXI_2 (.clk(clk), 
                   .d(d[31:0]), 
                   .q(q[31:0]));
endmodule
