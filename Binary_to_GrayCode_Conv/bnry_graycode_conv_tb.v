`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/15/2024 04:27:30 PM
// Design Name: 
// Module Name: bnry_graycode_conv_tb
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


module bnry_graycode_conv_tb( );
reg [3:0] in;
wire [3:0] out;

bnry_graycode dut(.in(in),.out(out));

initial begin
in = 4'b0011;
#10;
end

initial begin
$monitor("in = %b, out = %b", in, out);
#20;
$finish;
end

endmodule
