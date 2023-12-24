`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 12/23/2023 08:01:39 PM
// Design Name: half adder
// Module Name: half_adder
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
 //////////////////////////////////////////////////////////////////////////////////


module half_adder(a, b, sum, carry);
input a,b;
output sum, carry;

assign sum = a^b;
assign carry = a & b;
 
endmodule
