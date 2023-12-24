`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 12/24/2023 02:47:25 PM
// Design Name: 
// Module Name: decoder_3to8_tb
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


module decoder_3to8_tb();
reg [2:0]in;
reg en;
wire [7:0] y;

decoder_3to8 dut(.in(in), .en(en), .y(y));

initial 
begin
in = 3'b000;
en = 1'b0;
end

initial 
begin
in = 3'b001;
en = 1;
#10;

in = 3'b011;
en = 1;
#10;

in = 3'b010;
en = 1;
#10;

in = 3'b111;
en = 0;
#10;
end

initial 
begin
$monitor ("in = %b, en = %b, y = %b", in,en,y);
#100;
$finish;
end
endmodule
