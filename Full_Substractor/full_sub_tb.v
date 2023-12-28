`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/27/2023 11:27:33 PM
// Design Name: 
// Module Name: full_sub_tb
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


module full_sub_tb();
reg a,b,brow_in;
wire diff_out, brow_out;

full_subs dut(.a(a),.b(b), .brow_in(brow_in), .diff_out(diff_out), .brow_out(brow_out));
initial begin
a = 0; 
b = 0;
brow_in = 0;
end

initial begin
a = 0; 
b = 0;
brow_in = 0;
#10;

a = 0; 
b = 0;
brow_in = 1;
#10;

a = 0; 
b = 1;
brow_in = 0;
#10;

a = 0; 
b = 1;
brow_in = 1;
#10;

a = 1; 
b = 0;
brow_in = 0;
#10;

end

initial begin
$monitor("a = %b,b = %b, brow_in = %b, diff_out = %b, brow_out = %b", a,b, brow_in, diff_out, brow_out);
#100;
$finish;
end
endmodule
