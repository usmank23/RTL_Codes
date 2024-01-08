`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 01/06/2024 11:07:12 PM
// Design Name: 
// Module Name: parity_gen_fsm
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


module parity_gen_fsm(clk, x, z);
input clk, x;
output reg z;
reg even_odd;
parameter EVEN = 0, ODD = 1;

always @(posedge clk)
case (even_odd)
EVEN: begin
       z <= x ? 1:0;
       even_odd <= x ? ODD:EVEN;
      end
ODD: begin
      z <= x ? 0:1;
      even_odd <= x ? EVEN:ODD;
     end
default: even_odd <= EVEN;
endcase
endmodule
