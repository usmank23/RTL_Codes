`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/27/2023 07:09:18 PM
// Design Name: 
// Module Name: reg_16bit
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


module reg_16bit(input clk, rst, ld, input [15:0] d, output reg [15:0] q);

always @(posedge clk, posedge rst)
if(rst)
q <= 16'b0;
 
else if(ld)
q <= d; //if load is high

else 
q <= q; //default 
endmodule
