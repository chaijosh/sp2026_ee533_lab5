////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : incrementer_pc.vf
// /___/   /\     Timestamp : 02/13/2026 09:37:38
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w Z:/EE533/lab5_sp26/pipeline_cpu/schematics/incrementer_pc.sch incrementer_pc.vf
//Design Name: incrementer_pc
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module incrementer_pc(pc, 
                      pc_next);

    input [8:0] pc;
   output [8:0] pc_next;
   
   wire cout1;
   wire cout2;
   wire cout3;
   wire XLXN_50;
   wire XLXN_52;
   wire XLXN_54;
   wire XLXN_70;
   
   INV XLXI_1 (.I(pc[0]), 
               .O(pc_next[0]));
   XOR2 XLXI_2 (.I0(pc[1]), 
                .I1(pc[0]), 
                .O(pc_next[1]));
   AND2 XLXI_4 (.I0(pc[1]), 
                .I1(pc[0]), 
                .O(cout1));
   XOR2 XLXI_5 (.I0(pc[2]), 
                .I1(cout1), 
                .O(pc_next[2]));
   AND2 XLXI_8 (.I0(pc[2]), 
                .I1(cout1), 
                .O(cout2));
   XOR2 XLXI_9 (.I0(pc[3]), 
                .I1(cout2), 
                .O(pc_next[3]));
   AND2 XLXI_10 (.I0(pc[3]), 
                 .I1(cout2), 
                 .O(cout3));
   XOR2 XLXI_11 (.I0(pc[4]), 
                 .I1(cout3), 
                 .O(pc_next[4]));
   AND2 XLXI_12 (.I0(pc[4]), 
                 .I1(cout3), 
                 .O(XLXN_50));
   XOR2 XLXI_13 (.I0(pc[5]), 
                 .I1(XLXN_50), 
                 .O(pc_next[5]));
   AND2 XLXI_14 (.I0(pc[5]), 
                 .I1(XLXN_50), 
                 .O(XLXN_52));
   XOR2 XLXI_15 (.I0(pc[6]), 
                 .I1(XLXN_52), 
                 .O(pc_next[6]));
   AND2 XLXI_16 (.I0(pc[6]), 
                 .I1(XLXN_52), 
                 .O(XLXN_54));
   XOR2 XLXI_17 (.I0(pc[7]), 
                 .I1(XLXN_54), 
                 .O(pc_next[7]));
   AND2 XLXI_18 (.I0(pc[7]), 
                 .I1(XLXN_54), 
                 .O(XLXN_70));
   XOR2 XLXI_19 (.I0(pc[8]), 
                 .I1(XLXN_70), 
                 .O(pc_next[8]));
endmodule
