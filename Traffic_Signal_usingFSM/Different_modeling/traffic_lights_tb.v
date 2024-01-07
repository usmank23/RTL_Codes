`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2024 09:28:59 PM
// Design Name: 
// Module Name: traffic_lights_tb
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


module traffic_lights_tb();
reg clk;
wire [2:0] light;

Traffic_Signal dut(clk, light);

initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
$monitor("clk = %b, light = %b", clk,light);
#40;
$finish;
end
endmodule
