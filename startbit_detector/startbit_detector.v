`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 01/15/2024 10:48:32 PM
// Design Name: 
// Module Name: startbit_detector
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


module startbit_detector( rxbit, out, clk);
input clk, rxbit;
output reg out;
reg [3:0] x;

always @(posedge clk)
begin
if(!rxbit)
 begin
  if(x == 4'd12)
   begin
    out = 1;
    x = 0;
   end
  else
   begin
    out = 0;
    x = x + 1;
   end 
 end  
else
 begin
  out = 0;
  x = 0;
 end
end
    

endmodule
