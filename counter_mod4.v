`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2026 20:44:36
// Design Name: 
// Module Name: counter_mod4
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


module counter_mod4(

input clk,rst , enb,
output reg [1:0]count
);

always@(posedge clk)
begin
if(rst)
begin
count <= 0;
end
else if(enb)
count <= count + 1'b1;
else 
count <= count;
end  
endmodule
