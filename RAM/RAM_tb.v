`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/25/2023 02:23:59 AM
// Design Name: 
// Module Name: RAM_tb
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


module RAM_tb();
reg [7:0] data_in;
reg [9:0] add;
reg wr, clk;
wire [7:0] data_out;

RAM dut(.data_in(data_in), .add(add), .wr(wr),.clk(clk),.data_out(data_out));

initial begin
clk = 0;
forever #10 clk = ~clk;
end

initial begin
data_in = 8'b00000000;
add = 10'b0000000000;
wr = 1'b0;
#10;
end

initial begin
wr = 1;
data_in = 8'b00110011;
add = 10'b1100011101;
#10;

wr = 1;
data_in = 8'b00111111;
add = 10'b1111111101;
#10;

wr = 1;
data_in = 8'b00000011;
add = 10'b1110011101;
#10;

wr = 0;
add = 10'b1111111101;
#10;

wr = 0;
add = 10'b1111111101;
#10;
end

initial begin
$monitor("clk = %b, wr = %b, data_in = %b, add = %b, data_out = %b", clk,wr,data_in,add,data_out);
#50;
$finish;
end
endmodule
