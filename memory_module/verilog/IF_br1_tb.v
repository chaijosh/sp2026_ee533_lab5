`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:17:00 02/11/2026
// Design Name:   IF_stage_branch
// Module Name:   Z:/EE533/lab5_sp26/memory_module/verilog/IF_br1_tb.v
// Project Name:  verilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: IF_stage_branch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module IF_br1_tb;

	// Inputs
	reg clk;
	reg rst;
	reg [8:0] branch_target;
	reg br1;

	// Outputs
	wire [31:0] instr;

	// Instantiate the Unit Under Test (UUT)
	IF_stage_branch uut (
		.clk(clk), 
		.rst(rst), 
		.branch_target(branch_target), 
		.br1(br1), 
		.instr(instr)
	);
    // Clock generation: 10ns period, 100MHz clock
    always #100 clk = ~clk;
	 
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		branch_target = 0;
		br1 = 0;

		// Wait 100 ns for global reset to finish
		#500;
        
		// Add stimulus here
		rst=0;
		#12000;
		
		br1=1;
		branch_target=9'h20;
		#200
		
		br1=0;
	end
      
endmodule

