`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 12/24/2023 07:19:45 PM
// Design Name: 
// Module Name: dff_synrst_tb
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


module dff_synrst_tb();
reg d,clk,rst;
wire q;

dff_syncrst dut(.d(d), .clk(clk), .rst(rst), .q(q));

initial 
begin
clk = 0;
forever #5 clk = ~clk;
end

initial 
begin
d = 1'b0;
rst = 0;
#10;

d = 1'b1;
rst = 0;
#10;

d = 1'b0;
rst = 1;
#10;

d = 1'b1;
rst = 1;
#10;
end

initial 
begin
$monitor ("clk = %b,d = %b, rst = %b, q = %b", clk,d,rst,q);
#100;
$finish;
end
endmodule
