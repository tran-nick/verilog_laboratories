`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2020 03:29:37 PM
// Design Name: 
// Module Name: lab2_part3
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



module fulladd_struct(sum_94 , cout_94 , a_94 , b_94 , cin_94);

    input a_94 , b_94 , cin_94;
    output sum_94 , cout_94;
    wire s1 , c1, c2;
    
    xor(s1 , a_94 , b_94);
    and(c1 , a_94 , b_94);
    xor(sum_94, s1 , cin_94);
    and(c2 , s1 , cin_94);
    or(cout_94, c1 , c2);
    
   

endmodule
