`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 12/24/2023 07:06:46 PM
// Design Name: 
// Module Name: dff_syncrst
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


module dff_syncrst(d,q,clk,rst);
input d,clk,rst;
output reg q;

always @(posedge clk)
 begin
  if(rst)
   q <= 1'b0;
  else 
   q <= d;
 end
  
endmodule
