`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 12/28/2023 10:35:39 PM
// Design Name: 
// Module Name: ripple_carry_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 4-bit ripple carry adder
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module full_adder(a,b,cin,sum,carry);
input a,b,cin;
output sum,carry;
wire w1,w2,w3;

assign w1 = a ^ b;
assign sum = w1 ^ cin;
assign w2 = cin & w1;
assign w3 = a & b;
assign carry = w2 | w3;

endmodule


module ripple_carry_adder(a, b, cin, s, c4);
input [3:0] a;
input [3:0] b;
input cin;
output [3:0] s;
output  c4;
wire c1,c2,c3;

full_adder f0(a[0], b[0], cin, s[0], c1);
full_adder f1(a[1], b[1], c1, s[1], c2);
full_adder f2(a[2], b[2], c2, s[2], c3);
full_adder f3(a[3], b[3], c3, s[3], c4);

endmodule