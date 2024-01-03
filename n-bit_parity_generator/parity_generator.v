`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 01/02/2024 09:45:00 PM
// Design Name: 
// Module Name: parity_generator
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


module parity_generator #(parameter size = 4)(parity, load, txdata);
input load;
input [size-1:0] txdata;
output  reg parity;

always@ (*)
begin
 if(load)
  parity <= ^txdata;
 else 
  parity <= 1'b0;

end

endmodule

