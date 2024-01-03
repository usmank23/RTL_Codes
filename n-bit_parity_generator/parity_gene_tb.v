`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2024 09:54:33 PM
// Design Name: 
// Module Name: parity_gene_tb
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


module parity_gene_tb( );
reg load;
reg[3:0] txdata;
wire parity;

parity_generator dut(.parity(parity), .load(load), .txdata(txdata));

initial begin
load = 1'b0;
txdata = 4'h0;
end

initial begin
load = 1'b1;
txdata = 4'h7;
#10;

load = 1'b0;
end

initial begin
$monitor("load = %b, txdata = %b, parity = %b", load, txdata, parity);
#40;
$finish; 
end
endmodule
