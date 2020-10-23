`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2020 07:43:57 PM
// Design Name: 
// Module Name: labA2
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


module labA2(A , B , Cin , Co , S);
    //port declaration
    input A , B, Cin;
    output Co , S;
    
    assign Co = ((~A & B & Cin) | (A & ~B & Cin) | (A & B & ~Cin) | (A & B & Cin));
    assign S = A ^ B ^ Cin;
    
    
endmodule
