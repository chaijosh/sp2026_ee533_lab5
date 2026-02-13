////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : dff_5b.vf
// /___/   /\     Timestamp : 02/12/2026 21:45:57
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w Z:/EE533/lab5_sp26/memory_module/schematics/dff_5b.sch dff_5b.vf
//Design Name: dff_5b
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module dff_5b(clk, 
              d, 
              q);

    input clk;
    input [4:0] d;
   output [4:0] q;
   
   
   FD XLXI_7 (.C(clk), 
              .D(d[0]), 
              .Q(q[0]));
   defparam XLXI_7.INIT = 1'b0;
   FD XLXI_8 (.C(clk), 
              .D(d[1]), 
              .Q(q[1]));
   defparam XLXI_8.INIT = 1'b0;
   FD XLXI_9 (.C(clk), 
              .D(d[2]), 
              .Q(q[2]));
   defparam XLXI_9.INIT = 1'b0;
   FD XLXI_10 (.C(clk), 
               .D(d[3]), 
               .Q(q[3]));
   defparam XLXI_10.INIT = 1'b0;
   FD XLXI_11 (.C(clk), 
               .D(d[4]), 
               .Q(q[4]));
   defparam XLXI_11.INIT = 1'b0;
endmodule
