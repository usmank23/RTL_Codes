`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Usman Khan
// 
// Create Date: 12/23/2023 08:06:15 PM
// Design Name: half_adder
// Module Name: half_adder_tb
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


module half_adder_tb();
reg a_t, b_t;
wire SUM, CARRY;

half_adder dut(.a(a_t), .b(b_t), .sum(SUM), .carry(CARRY));

initial 
begin
 a_t = 0;
 b_t = 0;
 #10;
end

initial
begin
 a_t = 0;
 b_t = 0;
 #10;
 a_t = 0;
 b_t = 1;
 #10;
 
 a_t = 1;
 b_t = 0;
 #10;
 
 a_t = 1;
 b_t = 1;
 #10;
end

initial
begin
$monitor ("a_t = %b, b = %b, sum = %b, carry = %b", a_t,b_t,SUM,CARRY);
#100
$finish;
end
 
endmodule
