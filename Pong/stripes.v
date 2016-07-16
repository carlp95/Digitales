`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:17:22 07/14/2016 
// Design Name: 
// Module Name:    stripes 
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
module stripes(
	input wire vidon,
	input wire [9:0] hc, vc,
	output reg [2:0] red, green,
	output reg [1:0] blue
    );
	
always @(*)
	begin
		red = 0;
		green = 0;
		blue = 0;
		if(vidon == 1)
			begin
				red = {vc[4], vc[4], vc[4]};
				green = ~{vc[4], vc[4], vc[4]};
			end
	end


endmodule
