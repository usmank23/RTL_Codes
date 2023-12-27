`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 12/26/2023 07:34:31 PM
// Design Name: 
// Module Name: ins_mem_tb
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


module ins_mem_tb();
reg [3:0] read_address;
reg reset;
wire [7:0] instruction_out;

ins_mem dut(.read_address(read_address), .instruction_out(instruction_out), .reset(reset));

initial begin
reset = 1'b0;
read_address = 4'b0000;
end

initial begin
reset = 0;
read_address = $random;
#10;
reset = 0;
read_address = $random;
#10;
reset = 0;
read_address = $random;
#10;
reset = 0;
read_address = $random;
#10;
reset = 1;
read_address = $random;
#10;

reset = 0;
read_address = $random;
#10;

reset = 0;
read_address = $random;
#10;
end

initial begin
$monitor("read_address = %b, instruction_out= %b, reset= %b",read_address, instruction_out, reset);
#100;
$finish;
end

endmodule
