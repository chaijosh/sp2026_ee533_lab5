`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:49:06 02/09/2026 
// Design Name: 
// Module Name:    IF_stage_branch 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module IF_stage_branch(
    input          clk,
    input          rst,
    input  [8:0]   branch_target,
    input          br1,
    output [31:0]  instr
    );
	 
    reg  [8:0]PC;
    wire [8:0]PC_plus_1;
    wire [8:0]PC_next;

    // PC with asynchronous reset
    always @(posedge clk or posedge rst) begin
        if (rst)
            PC <= 0;      
        else
            PC <= PC_next;
    end

    assign PC_plus_1 = PC + 1;
    assign PC_next = br1 ? branch_target : PC_plus_1;

    // Instruction Memory (using IP Core)
    instr_mem_32x512 icache (
							.addr(PC), 
							.clk(clk), 
							.din(32'h0), 
							.dout(instr), 
							.en(1'b1), 
							.we(1'b0)
    );



endmodule
