`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:34:18 02/11/2026
// Design Name:   reg_file_64x32
// Module Name:   Z:/EE533/lab5_sp26/memory_module/verilog/reg_file_tb.v
// Project Name:  verilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: reg_file_64x32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module reg_file_tb;

	// Inputs
	reg clk;
	reg [4:0] r0addr;
	reg [4:0] r1addr;
	reg [4:0] waddr;
	reg [63:0] wdata;
	reg wena;

	// Outputs
	wire [63:0] r0data;
	wire [63:0] r1data;

	// Instantiate the Unit Under Test (UUT)
	reg_file_64x32 uut (
		.clk(clk), 
		.r0addr(r0addr), 
		.r1addr(r1addr), 
		.waddr(waddr), 
		.wdata(wdata), 
		.wena(wena), 
		.r0data(r0data), 
		.r1data(r1data)
	);

    // Clock generation: 10ns period, 100MHz clock
    always #100 clk = ~clk;
	 
	initial begin
		// Initialize Inputs
		clk = 0;
		r0addr = 5'h5;
		r1addr = 5'h10;
		waddr = 0;
		wdata = 0;
		wena = 0;

		// Wait 100 ns for global reset to finish
		#1000;
        
		// Add stimulus here
		r0addr = 5'h0;
		r1addr = 5'h0;
		waddr  = 5'h10;
		wdata  = 64'ha5a5;
		wena   = 1'b1;
		#200;
		
		r0addr = 5'h0;
		r1addr = 5'h0;
		waddr  = 5'h1f;
		wdata  = 64'hf0f0;
		wena   = 1'b1;
		#200;
		
		r0addr = 5'h1f;
		r1addr = 5'h10;
		waddr  = 5'h0;
		wdata  = 64'ha5a5;
		wena   = 1'b0;
		#200;
	end
      
endmodule

