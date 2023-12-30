`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 12/30/2023 02:01:08 PM
// Design Name: 
// Module Name: clk_dvd
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


module clk_dvd(clk, rst, q);
input clk, rst;
output reg q;

always@(posedge clk)
begin
if(rst)
q <= 0;
else 
q <= ~q;
end
endmodule
