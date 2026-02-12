`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:32:20 02/11/2026 
// Design Name: 
// Module Name:    reg_file_64x32 
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
module reg_file_64x32(
    input          clk,
    input  [4:0]   r0addr,
    input  [4:0]   r1addr,
    input  [4:0]   waddr,
    input  [63:0]  wdata,
    input          wena,
    output [63:0]  r0data,
    output [63:0]  r1data
    );

    reg [63:0] registers [0:31];

    always @(posedge clk)
        if (wena)
            registers[waddr] <= wdata;

    assign r0data = (r0addr == 5'b00000) ? 64'b0 : registers[r0addr];
    assign r1data = (r1addr == 5'b00000) ? 64'b0 : registers[r1addr];

endmodule
