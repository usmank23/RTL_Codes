`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 12/24/2023 12:02:30 AM
// Design Name: 
// Module Name: mux_2x1_tb
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


module mux_2x1_tb();
reg a,b,sel;
wire y;

mux_2x1 dut(.a(a), .b(b), .sel(sel), .y(y));

initial
begin 
a = 0;
b = 0;
sel = 0;
#10;
end

initial 
begin
a = 0;
b = 0;
sel = 0;
#10;

a = 1;
b = 0;
sel = 0;
#10;

a = 0;
b = 1;
sel = 1;
#10;

a = 1;
b = 1;
sel = 0;
#10;

a = 1;
b = 1;
sel = 1;
#10;
end

initial 
begin
$monitor ("a = %b, b = %b, sel = %b, y = &b;", a,b,sel,y);
#100;
$finish;
end
endmodule
