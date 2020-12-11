`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2020 06:36:51 PM
// Design Name: 
// Module Name: fulladd4_behav
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


module fulladd4_behav(sum_94, a_94, b_94

    );
    
    input [3:0] a_94, b_94;
    output [4:0] sum_94;
    wire [4:0] sum_94;
    
    assign sum_94 = a_94 + b_94;
    
    
endmodule
