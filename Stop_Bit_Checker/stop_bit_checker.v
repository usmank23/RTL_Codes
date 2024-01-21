`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 01/20/2024 06:48:54 PM
// Design Name: 
// Module Name: stop_bit_checker
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


module stop_bit_checker(dout1, rxdataout, stopbiterror, rxin, checkstop, reset, clk );
input reset, clk, checkstop, rxin;
input [7:0] dout1;
output reg [7:0] rxdataout;
output reg stopbiterror;
reg x = 3'd0;
always @(posedge clk)
begin
 if(checkstop)
  begin
   if(rxin)
    begin
     if(x == 15)
      begin
       x <= 0;
       rxdataout <= dout1;
       stopbiterror <= 0;
      end
     else
      begin
       x = x + 1;
       stopbiterror <= 0;
       rxdataout <= dout1;
      end
    end
   else
    begin
     rxdataout <= 8'd0;
     stopbiterror <= 1;
    end
  end
 else
  begin
   rxdataout <= dout1;
   stopbiterror <= 0;
  end
 end
endmodule
