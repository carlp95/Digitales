`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:31:31 07/14/2016 
// Design Name: 
// Module Name:    div 
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
module div(
	input clk,
	input clr,
	output reg clk25
    );
	 
always @(posedge clk or posedge clr)
	begin
		if(clr)
			clk25 <= 1'b0;
		else
			clk25 <= clk25 + 1;
	end


endmodule
