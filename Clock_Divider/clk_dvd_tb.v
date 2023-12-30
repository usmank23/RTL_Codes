`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// Create Date: 12/30/2023 02:45:57 PM
// Design Name: 
// Module Name: clk_dvd_tb
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


module clk_dvd_tb();
reg clk, rst;
wire q;

clk_dvd dut(.clk(clk), .rst(rst), .q(q));

initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
rst = 1;
#10;

rst = 0;
end

initial begin
$monitor("clk = %b, rst = %b, q = %b", clk, rst, q);
#100;
$finish;
end
endmodule
