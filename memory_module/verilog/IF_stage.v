`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:49:06 02/09/2026 
// Design Name: 
// Module Name:    IF_stage 
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
module IF_stage(
    input clk,
    input rst,
    output [31:0]instr
    );
	 
	 // Internal signals
    reg  [8:0]PC; // PC register (9 bit for addressing the 32x512 bit IMEM)
    wire [8:0]PC_next; // PC_next = PC+4 wire

    // PC with asynchronous reset
    always @(posedge clk or posedge rst) begin
        if (rst)
            PC <= 0;      
        else
            PC <= PC_next;
    end

    assign PC_next = PC + 1;

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
