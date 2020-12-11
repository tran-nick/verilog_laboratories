`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2020 04:52:39 PM
// Design Name: 
// Module Name: part1_tb
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


module part1_tb( );
    
    reg [1:0] KEY;
    reg [9:0] SW;
    wire [9:0] LED;
    
    part1 uut(KEY,SW,LED);
    
    initial
        begin
            SW[9] = 1'b1;
            SW[8:0] = 9'b001000000;
            KEY[1] = 1'b1;
        end
        
        
    
endmodule

