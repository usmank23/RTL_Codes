`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2024 07:33:31 PM
// Design Name: 
// Module Name: piso_tb
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


module piso_tb( );
reg clk, rst, load;
reg [7:0] datain;
wire data_outbit;

PISO dut( .clk(clk), .rst(rst), .data_outbit(data_outbit), .datain(datain), .load(load));


initial begin
clk = 0;
forever #5 clk = ~clk;
end


initial begin
rst = 0;
load = 0;
datain = 8'b00000000;
end

initial begin
rst = 1;
load = 0;
datain = 8'b01011101;
#10;
 
rst = 0;
load = 1;

#10;
rst = 0;
load = 0;
#10;
end

initial begin
$monitor(" clk = %b, rst = %b, load = %b, data_in = %b, data_outbit = %b", clk, rst,load,datain, data_outbit);
#50;
$finish;
end

endmodule
