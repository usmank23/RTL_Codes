`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Self
// Engineer: Usman Khan
// 
// Create Date: 01/03/2024 11:05:45 PM
// Design Name: 
// Module Name: txdata_tb
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


module txdata_tb( );
reg startbit, databit, paritybit, stopbit;
reg [1:0] sel;
wire txdata;

TX_mux dut(.startbit(startbit), .databit(databit), .paritybit(paritybit), .stopbit(stopbit), .txdata(txdata), .sel(sel));

initial begin
 startbit = 0;
 databit = 0;
 paritybit = 0;
 stopbit = 0;
end

initial begin
 sel = 2'b00;
 startbit = 0;
 databit = 0;
 paritybit = 0;
 stopbit = 0;
 #10;
 
 sel = 2'b01;
 startbit = 0;
 databit = 1;
 paritybit = 0;
 stopbit = 0;
 #10;
 
 sel = 2'b01;
 startbit = 0;
 databit = 1;
 paritybit = 0;
 stopbit = 0;
 #10;
 
  sel = 2'b01;
 startbit = 0;
 databit = 0;
 paritybit = 0;
 stopbit = 0;
 #10;
 
 sel = 2'b01;
 startbit = 0;
 databit = 1;
 paritybit = 0;
 stopbit = 0;
 #10;
 
 sel = 2'b10;
 startbit = 0;
 databit = 0;
 paritybit = 1;
 stopbit = 0;
 #10;
 
 sel = 2'b11;
 startbit = 0;
 databit = 0;
 paritybit = 0;
 stopbit = 1;
 #10;
 
end

initial begin
$monitor("startbit = %b, databit = %b, paritybit = %b, stopbit = %b, txdata = %b, sel = %b", startbit, databit, paritybit, stopbit, txdata, sel);
#100; 
$finish;
end
endmodule
