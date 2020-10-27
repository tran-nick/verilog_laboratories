`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2020 09:04:29 PM
// Design Name: 
// Module Name: d_negedge
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


module d_negedge(
    input Clk, D,
    output reg Q
    );
    
    always@(negedge Clk)
        if(!Clk)
            Q=D;
endmodule
