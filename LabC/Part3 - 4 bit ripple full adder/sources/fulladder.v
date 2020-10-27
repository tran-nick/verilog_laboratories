`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Nick Tran
// Create Date: 09/25/2020 04:03:15 PM
// Module Name: fulladder
//////////////////////////////////////////////////////////////////////////////////

module fulladder(sum, cout, a, b, cin);

    input a, b, cin;
    output sum, cout;
    
    assign sum = a^b^cin;
    assign cout = ((a^b)&cin)|(a&b);
    
endmodule
