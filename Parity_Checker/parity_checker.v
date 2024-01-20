`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 01/20/2024 12:23:52 PM
// Design Name: 
// Module Name: parity_checker
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// This is an odd parity checker.
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module parity_checker(reset, load, rxin, dout, dout1, parityerror);
input reset, rxin, load;  //this rxin is not the one coming from the transmitter
input [7:0] dout;  //dout is coming from sipo module in UART
output reg parityerror; // this is the main output that we want
output [7:0] dout1; //This is one of the outputs generated from this module
reg [3:0] a;
wire [3:0] b;

assign b = dout;

always @(*)
 begin
  if(reset)
   a <= 8'h00;
  else if(load)
   begin
    if(rxin == ^b)
     begin
      parityerror <= 0;
      a <= dout;
     end
    else 
     begin 
      parityerror <= 1;
      a <= a;
     end
    end
  else
   begin
    parityerror <= 0;
    a <= a;
   end
 end

assign dout1 = a;
  
 
endmodule
