`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2024 10:04:43 PM
// Design Name: 
// Module Name: sequence_detector_tb
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


module sequence_detector_tb();
reg clk, x, rst;
wire z;

sequence_detector dut(clk, x,z,rst);

initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
rst = 1;
#10;

rst = 0;
x = 0; #10; x = 0; #10; x = 1; #10; x = 1; #10; x = 0; #10; x = 1; #10; x = 1; #10; x = 0; #10; x = 1; #10; x = 0; #10;
x = 1; #10; x = 1; #10; x = 0; #10;
end

initial begin
$monitor("clk = %b, rst = %b, x = %b, z = %b", clk, rst, x, z);
#140;
$finish;
end

endmodule
