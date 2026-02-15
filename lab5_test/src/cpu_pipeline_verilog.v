`timescale 1ns / 1ps

module cpu_pipeline_verilog(
    input clk, 
    input [8:0] pc_traversal,         // Port A PC (CPU Execution)
    input [7:0] debug_addr_in,        // Port B Data Addr
    input [63:0] debug_data_in,       // Port B Data In
    input debug_data_write_en,        // Port B Data WE
    input debug_enable,               // Debug Mode Enable
    input [31:0] debug_instr_in,      // Port B Instr In
    input debug_instr_write_en,       // Port B Instr WE
    input [8:0] debug_pc,             // Port B Instr Addr
    input rst, 
    output [63:0] debug_data_out,     // Port B Data Out
    output [31:0] debug_instr_out     // Port B Instr Out
);

   wire [31:0] ID_instruction;
   wire [31:0] IF_instruction;
   wire MEM_MemRead, MEM_MemWrite, MEM_RegWrite;
   wire [63:0] MEM_r0data, MEM_r1data, WB_wdata;
   wire [4:0] MEM_waddr, WB_waddr;
   wire WB_RegWrite;
   
   wire [8:0] XLXN_9 = pc_traversal; 
   wire XLXN_215, XLXN_216, XLXN_366;
   wire [63:0] XLXN_312, XLXN_313, XLXN_338, XLXN_355;
   wire XLXN_352, XLXN_353, XLXN_354;
   wire [4:0] XLXN_356;
   
   // --- Data Memory (Port A: CPU | Port B: Debug) ---
   OR2 dcache_write_en (.I0(MEM_MemWrite), .I1(MEM_MemRead), .O(XLXN_215));
   
   data_mem_64_256 DCache_64x256 (
        .clka(clk), 
        .addra(MEM_r0data[7:0]), 
        .dina(MEM_r1data[63:0]), 
        .ena(XLXN_215), 
        .wea(MEM_MemWrite), 
        .douta(WB_wdata[63:0]),
        
        .clkb(clk), 
        .addrb(debug_addr_in[7:0]), 
        .dinb(debug_data_in[63:0]), 
        .enb(debug_enable), 
        .web(debug_data_write_en), 
        .doutb(debug_data_out[63:0])
   );

   // --- Instruction Memory (Port A: Read-Only | Port B: Read/Write) ---
   instr_mem_dp ICache_dp (
        // PORT A: CPU Fetch (Read Only - NO WRITE PORTS)
        .clka(clk), 
        .addra(XLXN_9[8:0]), 
        .douta(IF_instruction[31:0]), 
        .ena(XLXN_366), 
        // .wea and .dina REMOVED here to fix the error

        // PORT B: Debug Access (Read/Write)
        .clkb(clk), 
        .addrb(debug_pc[8:0]), 
        .dinb(debug_instr_in[31:0]), 
        .doutb(debug_instr_out[31:0]), 
        .enb(debug_enable), 
        .web(debug_instr_write_en)
   );

   // --- Pipeline Stages ---
   // NOP Injection: Force 0 if in debug mode
   wire [31:0] IF_Input_Mux = debug_enable ? 32'b0 : IF_instruction;

   pipeline_reg_EXMEM pipeline_stage_EX_MEM (
        .clk(clk), 
        .EX_MemRead(XLXN_353), .EX_MemWrite(XLXN_354), .EX_RegWrite(XLXN_352), 
        .EX_r0data(XLXN_338[63:0]), .EX_r1data(XLXN_355[63:0]), .EX_waddr(XLXN_356[4:0]), 
        .MEM_MemRead(MEM_MemRead), .MEM_MemWrite(MEM_MemWrite), .MEM_RegWrite(MEM_RegWrite), 
        .MEM_r0data(MEM_r0data[63:0]), .MEM_r1data(MEM_r1data[63:0]), .MEM_waddr(MEM_waddr[4:0])
   );

   pipeline_reg_IDEX  pipeline_stage_ID_EX (
        .clk(clk), 
        .ID_MemRead(ID_instruction[27]), .ID_MemWrite(ID_instruction[28]), .ID_RegWrite(ID_instruction[26]), 
        .ID_r0data(XLXN_312[63:0]), .ID_r1data(XLXN_313[63:0]), .ID_waddr(ID_instruction[15:11]), 
        .EX_MemRead(XLXN_353), .EX_MemWrite(XLXN_354), .EX_RegWrite(XLXN_352), 
        .EX_r0data(XLXN_338[63:0]), .EX_r1data(XLXN_355[63:0]), .EX_waddr(XLXN_356[4:0])
   );
   
   pipeline_reg_IFID  pipeline_stage_IF_ID (
        .clk(clk), 
        .IF_instruction(IF_Input_Mux), 
        .ID_instruction(ID_instruction[31:0])
   );

   dff_5b pipeline_stage_MEM_WB1 (.clk(clk), .d(MEM_waddr[4:0]), .q(WB_waddr[4:0]));
   
   FD pipeline_stage_MEM_WB2 (.C(clk), .D(debug_enable ? 1'b0 : MEM_RegWrite), .Q(WB_RegWrite));
   defparam pipeline_stage_MEM_WB2.INIT = 1'b0;

   reg_file_64x32 register_file (
        .clk(clk), 
        .r0addr(ID_instruction[25:21]), 
        .r1addr(ID_instruction[20:16]), 
        .waddr(WB_waddr[4:0]), 
        .wdata(WB_wdata[63:0]), 
        .wena(WB_RegWrite), 
        .r0data(XLXN_312[63:0]), 
        .r1data(XLXN_313[63:0])
   );

   INV XLXI_71 (.I(rst), .O(XLXN_216));
   INV XLXI_74 (.I(debug_enable), .O(XLXN_366));

endmodule