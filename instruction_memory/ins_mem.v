`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 12/26/2023 05:23:43 PM
// Design Name: 
// Module Name: ins_mem
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


module ins_mem(read_address, instruction_out, reset);
input [3:0] read_address;
input reset;
output [7:0] instruction_out;

reg [7:0] memory [15:0];
initial  
begin  
                memory[0] = 8'b10000101;  
                memory[1] = 8'b00100110;  
                memory[2] = 8'b11010000;  
                memory[3] = 8'b11010111;  
                memory[4] = 8'b11111001;  
                memory[5] = 8'b11000100; 
                memory[6] = 8'b00001011;  
                memory[7] = 8'b01000000;  
                memory[8] = 8'b00001100;  
                memory[9] = 8'b00010000;  
                memory[10] = 8'b00110000;  
                memory[11] = 8'b00011000;  
                memory[12] = 8'b01100000;  
                memory[13] = 8'b00000010;  
                memory[14] = 8'b00001000;  
                memory[15] = 8'b01000000;  
end

always @(posedge reset)
begin
memory[read_address] = 8'b00000000;

end

assign instruction_out = memory[read_address];
endmodule
