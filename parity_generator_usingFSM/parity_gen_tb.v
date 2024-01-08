`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/08/2024 02:01:07 PM
// Design Name: 
// Module Name: parity_gen_tb
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


module parity_gen_tb();
reg clk, x;
wire z;

parity_gen_fsm dut(.clk(clk), .x(x), .z(z));

initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
x = 0;
#10;
x = 1;
#10;
x = 0;
#10;
x = 1;
#10;
end

initial begin
$monitor("clk = %b, x = %b, z = %b", clk, x, z);
#50;
$finish;
end

endmodule
