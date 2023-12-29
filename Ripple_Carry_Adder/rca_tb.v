`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 12/29/2023 01:02:44 AM
// Design Name: 
// Module Name: rca_tb
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


module rca_tb();
reg [3:0] a;
reg [3:0] b;
reg cin;
wire [3:0] s;
wire  c4;

ripple_carry_adder dut(.a(a), .b(b), .cin(cin), .s(s), .c4(c4));
initial begin
a = 4'b0000;
b = 4'b0000;
cin = 0;
end

initial begin
a = 4'b1100;
b = 4'b0011;
cin = 1'b1;
#10;

a = $random;
b = $random;
cin = 0;
#10;

a = $random;
b = $random;
cin = 1;
#20;

a = $random;
b = $random;
cin = 0;
#10;
end

initial begin
$monitor("a = %b, b = %b, cin = %b, s = %b, c4 = %b", a,b,cin,s,c4);
#50;
$finish;
end

endmodule
