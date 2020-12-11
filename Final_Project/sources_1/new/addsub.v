`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2020 08:54:05 PM
// Design Name: 
// Module Name: addsub
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


module addsub(
    input [15:0] A, Buswires,
    input addsub_signal,
    output reg [15:0] sumdiff
    );

always@(A)
    case(addsub_signal)
        1'b0 : sumdiff <= A + Buswires;
        1'b1 : sumdiff <= A - Buswires;
    endcase

endmodule
