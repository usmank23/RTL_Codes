`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 12/27/2023 07:15:51 PM
// Design Name: 
// Module Name: reg_16bit_tb
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


module reg_16bit_tb();
reg clk, rst, ld;
reg [15:0] d;
wire[15:0] q;

reg_16bit dut(.clk(clk), .rst(rst), .ld(ld), .d(d), .q(q));

initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
rst = 0;
ld = 0;
d = 16'h0000;
end

initial begin
rst = 0;
ld = 1;
d = 16'h0011;
#10;

rst = 0;
ld = 1;
d = 16'h1110;
#10;

rst = 0;
ld = 1;
d = 16'h1100;
#10;

rst = 1;
ld = 1;
d = 16'h0010;
#10;
end

initial begin
$monitor(" clk = %b, rst = %b, ld = %b, d = %b, q = %b", clk, rst, ld, d, q);
#50;
$finish;
end

endmodule
