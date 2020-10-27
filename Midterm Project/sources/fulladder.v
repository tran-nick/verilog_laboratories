`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:  Nick Tran 014682694
// Create Date: 10/12/2020 07:46:53 PM: 
// Module Name: fulladder
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module fulladder(
    output Sum, Cout,
    input a, b, Cin
    );
    
    assign Sum = a^b^Cin;
    assign Cout = (a^b)&Cin | a&b;
    
endmodule

