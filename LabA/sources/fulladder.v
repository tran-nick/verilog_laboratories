`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2020 04:05:18 PM
// Design Name: 
// Module Name: labA
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


module FullAdder( A , B , Cin , Cout , Sum);
    
    input A , B , Cin;
    output Cout , Sum;
    wire s1 , c1 , c2 ;
    
    //<logic operation> <variable name> (output , input , input)
    xor    xo1 (s1 , A , B);
    and     a1  (c1 , A , B);
    and     a2  (c2 , s1 , Cin);
    xor    xo2 (Sum , s1 , Cin);
    or      o1  (Cout , c1 , c2);
    
endmodule


