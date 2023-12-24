`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 12/23/2023 11:55:38 PM
// Design Name: 
// Module Name: mux_2x1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux_2x1(a,b,sel,y);
input a,b,sel;
output y;
wire w1, w2;

assign w1 = b & sel;
assign w2 = a & (~sel);
assign y = w1 | w2;

endmodule
