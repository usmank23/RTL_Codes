`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Usman Khan
// 
// Create Date: 12/23/2023 10:26:04 PM
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();
reg a,b,cin;
wire sum, carry;

full_adder dut(.a(a), .b(b), .cin(cin), .sum(sum), .carry(carry));

initial 
begin
 a = 0;
 b = 0;
 #10;
end

initial
begin
 a = 0;
 b = 0;
 cin = 0;
 #10;
 a = 0;
 b = 1;
 cin = 1;
 #10;
 
 a = 1;
 b = 0;
 cin = 1;
 #10;
 
 a = 1;
 b = 1;
 cin = 1;
 #10;
end

initial
begin
$monitor ("a = %b, b = %b,cin = %b, sum = %b, carry = %b", a,b,cin,sum,carry);
#100
$finish;
end

endmodule
