`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2020 12:33:26 PM
// Design Name: 
// Module Name: twobit_comparator
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


module twobit_comparator(
    input [3:0] swt,
    output [2:0] led
    );
    
    wire [1:0] a, b ;
    wire G, E, L;
    
    //In Verilog, can only access 1 element at a time. Large assignments should be 
    //handled in for loop
    assign a[0] = swt[0];
    assign a[1] = swt[1];
    assign b[0] = swt[2];
    assign b[1] = swt[3];
    
    assign G = (a[1]&!b[1]) | (a[0]&!b[1]&!b[0]) | (a[1]&a[0]&!b[0]);
    assign E = !(a[0]^b[0]) & !(a[1]^b[1]);
    assign L = (!a[1]&b[1]) | (!a[1]&!a[0]&b[0]) | (!a[0]&b[1]&b[0]);
   
   assign led[2] = G;
   assign led[1] = E;
   assign led[0] = L;
    
endmodule
