`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 01/01/2024 07:18:58 PM
// Design Name: 
// Module Name: PISO
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


module PISO( clk, rst, data_outbit, datain, load);
input clk, rst, load;
input [7:0] datain;
output reg data_outbit = 1'b0;
reg [7:0] temp=7'b0;

always @(posedge clk)
begin
if(rst)
begin
data_outbit <= 1'b0;
end

else if(load)
temp <= datain;

else
begin
data_outbit <= temp[0];
temp <= temp >> 1'b1;
end

end

endmodule
