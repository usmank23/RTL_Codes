`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 12/24/2023 02:11:41 PM
// Design Name: 
// Module Name: decoder_3to8
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


module decoder_3to8(in,en,y);
input [2:0]in;
input en;
output reg [7:0] y;

always @(in or en)
 if (en)
  begin
   case(in)
    3'b000: y =  8'b00000001;
    3'b001: y =  8'b00000010;
    3'b010: y =  8'b00000100;
    3'b011: y =  8'b00001000;
    3'b100: y =  8'b00010000;
    3'b101: y =  8'b00100000;
    3'b110: y =  8'b01000000;
    3'b111: y =  8'b10000000;
    default:y =  8'b00000000;
   endcase
  end
endmodule
