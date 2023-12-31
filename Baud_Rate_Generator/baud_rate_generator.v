`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 12/30/2023 10:20:29 PM
// Design Name: 
// Module Name: baud_rate_generator
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


module baud_rate_generator(sel, clk, rst, clock_out);
input clk, rst;
input [1:0] sel;
output reg clock_out = 0;
reg [3:0]temp = 0;
reg [3:0]count = 0;

always @(sel)
begin
case(sel)
2'b00: temp <= 4'h5;
2'b01: temp <= 4'h4;
2'b10: temp <= 4'h1;
2'b11: temp <= 4'h2;
endcase
end

always @(posedge clk or negedge rst)
begin
if(!rst)
 clock_out <= 0;
else if( count == temp )
 begin
  count = 0;
  clock_out <= !clock_out;
 end
else
 begin
  count = count + 1;
  clock_out <= clock_out;
 end
end
 
endmodule
