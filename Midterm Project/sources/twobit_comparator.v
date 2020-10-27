`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:  Nick Tran 014682694
// Create Date: 10/12/2020 08:43:55 PM
// Module Name: twobit_comparator
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module twobit_comparator(
    input [1:0] a,b,
    output G, E, L
    );
    
    assign G = (a > b);
    assign E = (a == b);
    assign L = (a < b);
endmodule
