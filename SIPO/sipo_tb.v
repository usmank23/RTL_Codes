`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 01/17/2024 09:53:17 PM
// Design Name: 
// Module Name: sipo_tb
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


module sipo_tb();
reg rxin, clk, shift, rst;
wire [4:0] dout;

sipo dut(rxin, clk, shift, rst, dout);

initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
shift = 1;
rxin = 0;
#10;

rst = 0;
shift = 1;
rxin = 1;
#10;

rxin = 0;
#10;

rxin = 1;
#10;

rxin = 1;
#10;

rxin = 1;
end

initial begin
$monitor("rxin = %b, dout = %b", rxin, dout);
#60;
$finish;
end


endmodule
