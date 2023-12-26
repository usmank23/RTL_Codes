`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/26/2023 12:59:13 AM
// Design Name: 
// Module Name: lfsr_tb
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


module lfsr_tb();
reg clk, rst;
wire [4:0] out;

LFSR dut(.clk(clk), .rst(rst), .out(out));
initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
rst = 1;
#10;
rst = 1;
#10;
rst = 0;
#10;
rst = 0;
#10;
rst = 0;
#10;
end

initial begin
$monitor(" clk = %b, rst = %b, out = %b", clk, rst, out);
#100;
$finish;
end

endmodule
