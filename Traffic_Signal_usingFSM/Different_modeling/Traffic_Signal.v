`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 01/06/2024 08:50:30 PM
// Design Name: 
// Module Name: Traffic_Signal
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


module Traffic_Signal(clk, light);
input clk;
output reg [2:0] light;

reg [1:0] state;

parameter RED = 3'b100, GREEN = 3'b010, YELLOW = 3'b001;
parameter S0 = 0, S1 = 1, S2 = 2;

always @(posedge clk)
case(state)
S0: state <= S1;
S1: state <= S2;
S2: state <= S0;
default: state <= S0;
endcase

always @(state)
case(state)
S0: light = GREEN;
S1: light = YELLOW;
S2: light = RED;
default: light = RED;
endcase
endmodule
