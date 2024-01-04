`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/03/2024 10:28:36 PM
// Design Name: 
// Module Name: TX-mux
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


module TX_mux(startbit, databit, paritybit, stopbit, txdata, sel);
input startbit, databit, paritybit, stopbit;
input [1:0] sel;
output reg txdata;

always @(*)
begin
case(sel)
2'b00: txdata = 0;
2'b01: txdata = databit;
2'b10: txdata = paritybit;
2'b11: txdata = stopbit;
default txdata = 0;
endcase
end
 
endmodule
