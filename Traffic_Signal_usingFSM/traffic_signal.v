`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 01/06/2024 07:18:06 PM
// Design Name: 
// Module Name: traffic_signal
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


module traffic_signal(clk, light);

input clk;
output reg [2:0] light;
reg [1:0] state;
parameter RED = 3'b100, GREEN = 3'b010, YELLOW = 3'b001;
parameter S0 = 0, S1 = 1, S2 = 2;
always @(posedge clk)
case(state)
S0: begin 
    light <= RED;
    state <= S1;
    end
S1: begin
    light <= GREEN;
    state <= S2;
    end
S2: begin
    light <= YELLOW;
    state <= S0;
    end 
default: begin 
         light <= RED;
         state <= S1;
         end
         
endcase

endmodule
