`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:59:14 02/11/2026
// Design Name:   IF_stage
// Module Name:   Z:/EE533/lab5_sp26/memory_module/verilog/IF_tb.v
// Project Name:  verilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: IF_stage
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module IF_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [31:0] instr;

	// Instantiate the Unit Under Test (UUT)
	IF_stage uut (
		.clk(clk), 
		.rst(rst), 
		.instr(instr)
	);

    // Clock generation: 10ns period, 100MHz clock
    always #100 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#500;
        
		// Add stimulus here
		rst = 0;

	end
      
endmodule

