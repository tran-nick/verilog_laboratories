`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2020 10:40:52 AM
// Design Name: 
// Module Name: upcount
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


module upcount(
    input Clear, Clock,
    output reg [1:0] Q
    );
    
always@(posedge Clock)
    if(Clear)
        Q <= 2'b0;
    else
        Q <= Q + 1'b1;      
endmodule
