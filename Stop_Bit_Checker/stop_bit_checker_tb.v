`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/20/2024 08:24:40 PM
// Design Name: 
// Module Name: stop_bit_checker_tb
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


module stop_bit_checker_tb();
reg reset, clk, checkstop, rxin;
reg [7:0] dout1;
wire [7:0] rxdataout;
wire stopbiterror;

stop_bit_checker dut(dout1, rxdataout, stopbiterror, rxin, checkstop, reset, clk );

initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
dout1 = 8'b00001001;
checkstop = 1;
rxin = 1;
#10;

rxin = 0;
#10;

checkstop = 0;
#10;
end

initial begin
$monitor("checkstop=%b, rxin=%b, rxdataout=%b, stopbiterror=%b",checkstop, rxin, rxdataout, stopbiterror);
#30;
$finish;
end
endmodule
