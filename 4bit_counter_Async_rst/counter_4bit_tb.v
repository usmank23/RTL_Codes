`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 12/25/2023 03:23:35 PM
// Design Name: 
// Module Name: counter_4bit_tb
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


module counter_4bit_tb();
reg clk, rst;
wire [3:0] q;

counter_4bit dut (.clk(clk), .rst(rst), .q(q));

initial begin 
clk <= 0;
forever #10 clk = ~clk;
end

initial begin
rst <= 0;
#10;
rst <= 0;
#10;
rst <= 0;
#10;
rst <= 0;
#10;
rst <= 1;
#10;
end

initial begin
$monitor("clk = %b, rst = %b, q = %b", clk, rst, q);
#50;
$finish;
end

endmodule
