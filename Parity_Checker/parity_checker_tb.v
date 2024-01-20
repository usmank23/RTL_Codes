`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/20/2024 01:15:21 PM
// Design Name: 
// Module Name: parity_checker_tb
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


module parity_checker_tb( );
reg reset, rxin, load;
reg [7:0] dout;
wire parityerror;
wire [7:0] dout1;

parity_checker dut(reset, load, rxin, dout, dout1, parityerror);

initial begin
dout = 00001001 ;
reset = 1;
#10;

reset = 0;
load = 1;
rxin = 1;
#10;

rxin = 0;
#10;

end

initial begin
$monitor("load = %b, rxin = %b, dout = %b, dout1 = %b, parityerror = %b", load, rxin, dout, dout1, parityerror);
#40;
$finish;
end


endmodule
