`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 01/15/2024 03:44:03 PM
// Design Name: 
// Module Name: bnry_graycode
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// Binary to gray code convertor
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module bnry_graycode #(parameter SIZE = 4)(in,out);
input [SIZE - 1: 0] in;
output [SIZE - 1: 0] out;

genvar i;
generate
 for( i = 0; i < SIZE - 1; i = i + 1)
  begin
   assign out[i] = in[i] + in[i + 1];
  end
endgenerate

assign out[SIZE - 1] = in[SIZE - 1];
endmodule
