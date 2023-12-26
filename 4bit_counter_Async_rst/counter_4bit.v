`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 12/25/2023 02:21:11 PM
// Design Name: 
// Module Name: counter_4bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// Verilog code for a 4-bit signed up counter with an asynchronous reset.
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module counter_4bit(clk, rst,q);
input clk, rst;
output signed [3:0] q;
reg signed [3:0] tmp = 0;

always @(posedge clk or posedge rst)
begin
 if(rst)
  tmp <= 4'b0000;
 else 
  tmp <= tmp + 4'b0001;

end
assign q = tmp;

endmodule
