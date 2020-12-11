`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2020 06:05:44 PM
// Design Name: 
// Module Name: lab2_part3b
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


module fulladd_dataflow(sum_94, cout_94 , a_94, b_94, cin_94

    );
    
    input  a_94, b_94, cin_94;
    output  sum_94, cout_94;
    
    assign sum_94 =  a_94^b_94^cin_94;
    assign cout_94 = ((a_94^b_94)&cin_94)|(a_94&b_94);
    
    
endmodule
