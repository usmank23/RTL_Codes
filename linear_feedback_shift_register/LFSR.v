`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 12/26/2023 12:00:35 AM
// Design Name: 
// Module Name: LFSR
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

module LFSR(clk,rst,out);
input clk, rst;
output reg [4:0] out;

always @(posedge clk)
begin
if(rst)
out <= 5'b11111;
else
out = {out[3:0],(out[4]^out[3])};
end

endmodule
