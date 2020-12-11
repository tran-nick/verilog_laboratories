`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2020 10:46:11 AM
// Design Name: 
// Module Name: regn
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


module regn(
    input [n-1:0] R,
    input Rin, Clock,
    output reg [n-1:0] Q
    );

parameter n = 16;
   
always@(posedge Clock)
    if(Rin)
        Q <= R;
endmodule
