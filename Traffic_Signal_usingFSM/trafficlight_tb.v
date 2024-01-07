`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 01/06/2024 07:59:21 PM
// Design Name: 
// Module Name: trafficlight_tb
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


module trafficlight_tb();
reg clk;
wire [2:0] light;

traffic_signal dut(.clk(clk), .light(light));

initial begin
clk = 0;
forever #5 clk = ~clk;;
end

initial begin
$monitor("clk = %b, light = %b", clk, light);
#40;
$finish;
end

endmodule
