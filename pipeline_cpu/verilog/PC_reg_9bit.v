////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : PC_reg_9bit.vf
// /___/   /\     Timestamp : 02/13/2026 09:37:41
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w Z:/EE533/lab5_sp26/pipeline_cpu/schematics/PC_reg_9bit.sch PC_reg_9bit.vf
//Design Name: PC_reg_9bit
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module FD8CE_MXILINX_PC_reg_9bit(C, 
                                 CE, 
                                 CLR, 
                                 D, 
                                 Q);

    input C;
    input CE;
    input CLR;
    input [7:0] D;
   output [7:0] Q;
   
   
   FDCE I_Q0 (.C(C), 
              .CE(CE), 
              .CLR(CLR), 
              .D(D[0]), 
              .Q(Q[0]));
   defparam I_Q0.INIT = 1'b0;
   FDCE I_Q1 (.C(C), 
              .CE(CE), 
              .CLR(CLR), 
              .D(D[1]), 
              .Q(Q[1]));
   defparam I_Q1.INIT = 1'b0;
   FDCE I_Q2 (.C(C), 
              .CE(CE), 
              .CLR(CLR), 
              .D(D[2]), 
              .Q(Q[2]));
   defparam I_Q2.INIT = 1'b0;
   FDCE I_Q3 (.C(C), 
              .CE(CE), 
              .CLR(CLR), 
              .D(D[3]), 
              .Q(Q[3]));
   defparam I_Q3.INIT = 1'b0;
   FDCE I_Q4 (.C(C), 
              .CE(CE), 
              .CLR(CLR), 
              .D(D[4]), 
              .Q(Q[4]));
   defparam I_Q4.INIT = 1'b0;
   FDCE I_Q5 (.C(C), 
              .CE(CE), 
              .CLR(CLR), 
              .D(D[5]), 
              .Q(Q[5]));
   defparam I_Q5.INIT = 1'b0;
   FDCE I_Q6 (.C(C), 
              .CE(CE), 
              .CLR(CLR), 
              .D(D[6]), 
              .Q(Q[6]));
   defparam I_Q6.INIT = 1'b0;
   FDCE I_Q7 (.C(C), 
              .CE(CE), 
              .CLR(CLR), 
              .D(D[7]), 
              .Q(Q[7]));
   defparam I_Q7.INIT = 1'b0;
endmodule
`timescale 1ns / 1ps

module PC_reg_9bit(clk, 
                   pc_in, 
                   rst, 
                   pc_out);

    input clk;
    input [8:0] pc_in;
    input rst;
   output [8:0] pc_out;
   
   wire XLXN_7;
   
   FD8CE_MXILINX_PC_reg_9bit XLXI_1 (.C(clk), 
                                     .CE(XLXN_7), 
                                     .CLR(rst), 
                                     .D(pc_in[8:1]), 
                                     .Q(pc_out[8:1]));
   // synthesis attribute HU_SET of XLXI_1 is "XLXI_1_0"
   FDCE XLXI_2 (.C(clk), 
                .CE(XLXN_7), 
                .CLR(rst), 
                .D(pc_in[0]), 
                .Q(pc_out[0]));
   defparam XLXI_2.INIT = 1'b0;
   VCC XLXI_3 (.P(XLXN_7));
endmodule
