`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 12/27/2023 11:17:36 PM
// Design Name: 
// Module Name: full_subs
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


module full_subs(a,b, brow_in, diff_out, brow_out);
input a,b,brow_in;
output diff_out, brow_out;
wire w1, w2, w3;

assign w1 = a ^ b;
assign w2 = (~a)& b;
assign w3 = (~w1) & brow_in;
assign diff_out = w1 ^ brow_in;
assign brow_out = w3 | w2;

endmodule
