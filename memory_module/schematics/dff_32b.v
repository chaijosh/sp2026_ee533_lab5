////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : dff_32b.vf
// /___/   /\     Timestamp : 02/12/2026 21:45:53
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w Z:/EE533/lab5_sp26/memory_module/schematics/dff_32b.sch dff_32b.vf
//Design Name: dff_32b
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module dff_32b(clk, 
               d, 
               q);

    input clk;
    input [31:0] d;
   output [31:0] q;
   
   
   dff_8b XLXI_1 (.clk(clk), 
                  .d(d[31:24]), 
                  .q(q[31:24]));
   dff_8b XLXI_2 (.clk(clk), 
                  .d(d[23:16]), 
                  .q(q[23:16]));
   dff_8b XLXI_3 (.clk(clk), 
                  .d(d[15:8]), 
                  .q(q[15:8]));
   dff_8b XLXI_4 (.clk(clk), 
                  .d(d[7:0]), 
                  .q(q[7:0]));
endmodule
