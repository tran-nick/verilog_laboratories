`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2020 06:17:20 PM
// Design Name: 
// Module Name: fulladd4
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
module fulladd_dataflow(sum, cout, a , b, cin);
    input a , b , cin;
    output sum, cout;
    
    assign sum = a^b^cin; 
    assign cout = ((a^b)&cin)|(a&b);
endmodule

module fulladd4(sum_94, cout_94, a_94, b_94, cin_94

    );
    
    output[3:0] sum_94; //bus 4 bits wide
    output cout_94;
    input [3:0]a_94, b_94;
    input cin_94;
    wire c3, c2, c1;
    
    fulladd_dataflow fa0(sum_94[0], c1, a_94[0], b_94[0], cin_94);
    fulladd_dataflow fa1(sum_94[1], c2, a_94[1], b_94[1], c1);
    fulladd_dataflow fa2(sum_94[2], c3, a_94[2], b_94[2], c2);
    fulladd_dataflow fa3(sum_94[3], cout_94, a_94[3], b_94[3], c3);
    
    
endmodule
