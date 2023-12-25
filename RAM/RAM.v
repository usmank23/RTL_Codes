`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/25/2023 02:05:18 AM
// Design Name: 
// Module Name: RAM
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


module RAM(add, data_in, data_out, wr, clk);
input clk;
input [7:0] data_in;
input [9:0] add;
input wr;
output reg [7:0] data_out;

reg [7:0] ram_block [1:1023];

always @(posedge clk)
begin
if(wr)
ram_block[add] <= data_in;
else
data_out <= ram_block[add];
end

endmodule