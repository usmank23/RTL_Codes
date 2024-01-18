`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 01/17/2024 09:40:16 PM
// Design Name: 
// Module Name: sipo
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


module sipo(rxin, clk, shift, rst, dout);
input rxin, clk, shift, rst;
output [4:0] dout;

reg [4:0] s = 0;

always @(posedge clk or posedge rst)
begin
 if(rst)
 begin
  s = 4'h0;
 end
 else if(shift)
 begin
  s = s >> 1;
  s[3] = rxin;
 end
 
 else
  s = s;
end

assign dout = s;

endmodule
