`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 12/30/2023 10:36:57 PM
// Design Name: 
// Module Name: brg_tb
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


module brg_tb( );
reg clk, rst;
reg [1:0] sel;
wire clock_out;

baud_rate_generator dut(.sel(sel), .clk(clk), .rst(rst), .clock_out(clock_out));

initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
sel = 2'b01;
rst = 1;
#50;

end

initial begin
$monitor("sel = %b, clk = %b, rst = %b, clock_out = %b", sel,clk,rst,clock_out);
#100;
$finish;
end

endmodule
