`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:22:55 07/14/2016 
// Design Name: 
// Module Name:    principal 
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
module principal(
	input wire mclk,
	input wire [3:3] btn,
	output wire hsync, vsync,
	output wire [2:0] red, green,
	output wire [1:0] blue
    );
	 
	 wire clk25, clr, vidon;
	 wire [9:0] hc, vc;

assign clr = btn[3];

div U1 (
    .clk(mclk), 
    .clr(clr), 
    .clk25(clk25)
    );


pong U2 (
    .clk(clk25), 
    .clr(clr), 
    .hsync(hsync), 
    .vsync(vsync), 
    .hc(hc), 
    .vc(vc), 
    .vidon(vidon)
    );

stripes U3 (
    .vidon(vidon), 
    .hc(hc), 
    .vc(vc), 
    .red(red), 
    .green(green), 
    .blue(blue)
    );



endmodule
