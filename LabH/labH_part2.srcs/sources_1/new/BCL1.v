`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2020 07:18:50 PM
// Design Name: 
// Module Name: BCL1
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


module BCL1(
    input clk, ena,
    output reg [3:0] BCL,
    output BCL_carry
    );
    
    wire BCL_rollover = (BCL ==4'd9);
    
    always@(posedge clk)
        if(ena)
            begin
                if(BCL_rollover) BCL <=4'd0;
                else BCL <= BCL + 4'd1;
            end
    assign BCL_carry = ena & BCL_rollover;
endmodule
