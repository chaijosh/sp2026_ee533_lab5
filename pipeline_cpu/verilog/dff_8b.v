////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : dff_8b.vf
// /___/   /\     Timestamp : 02/13/2026 09:37:35
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w Z:/EE533/lab5_sp26/pipeline_cpu/schematics/dff_8b.sch dff_8b.vf
//Design Name: dff_8b
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module dff_8b(clk, 
              d, 
              q);

    input clk;
    input [7:0] d;
   output [7:0] q;
   
   
   FD XLXI_10 (.C(clk), 
               .D(d[0]), 
               .Q(q[0]));
   defparam XLXI_10.INIT = 1'b0;
   FD XLXI_11 (.C(clk), 
               .D(d[1]), 
               .Q(q[1]));
   defparam XLXI_11.INIT = 1'b0;
   FD XLXI_12 (.C(clk), 
               .D(d[2]), 
               .Q(q[2]));
   defparam XLXI_12.INIT = 1'b0;
   FD XLXI_13 (.C(clk), 
               .D(d[3]), 
               .Q(q[3]));
   defparam XLXI_13.INIT = 1'b0;
   FD XLXI_14 (.C(clk), 
               .D(d[4]), 
               .Q(q[4]));
   defparam XLXI_14.INIT = 1'b0;
   FD XLXI_15 (.C(clk), 
               .D(d[5]), 
               .Q(q[5]));
   defparam XLXI_15.INIT = 1'b0;
   FD XLXI_16 (.C(clk), 
               .D(d[6]), 
               .Q(q[6]));
   defparam XLXI_16.INIT = 1'b0;
   FD XLXI_17 (.C(clk), 
               .D(d[7]), 
               .Q(q[7]));
   defparam XLXI_17.INIT = 1'b0;
endmodule
