`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 12/27/2023 10:14:28 PM
// Design Name: 
// Module Name: half_sub_tb
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


module half_sub_tb();
reg a, b;
wire diff, brow;

half_sub dut(.a(a), .b(b), .diff(diff), .brow(brow));
initial begin
a = 0;
b = 0;
end

initial begin
a = 0;
b = 0;
#10;

a = 0;
b = 1;
#10;

a = 1;
b = 0;
#10;

a = 1;
b = 1;
#10;

end

initial begin
$monitor("a = %b, b = %b, diff = %b, brow = %b", a,b,diff,brow);
#50;
$finish;
end

endmodule
