`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2020 01:34:55 PM
// Design Name: 
// Module Name: fourbit_comparator
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

module fourbit_comparator(

    input [7:0] swt,
    output [2:0] led
    
    );
    
    wire [1:0] A0,A1,B0,B1;
    wire G0, G1, E0, E1, L0, L1;
    
    //connecting wires to switch inputs
    assign A1[1] = swt[7];
    assign A1[0] = swt[6];
    assign A0[1] = swt[5];
    assign A0[0] = swt[4];
    assign B1[1] = swt[3];
    assign B1[0] = swt[2];
    assign B0[1] = swt[1];
    assign B0[0] = swt[0];
    
    twobit_comparator comp0(G0,E0,L0,A0,B0);
    twobit_comparator comp1(G1,E1,L1,A1,B1);
 
    assign led[2] = G1;                 //Greater, if a1 > b1
    assign led[1] = E0 && E1;           //Equal, if a1 == b1 AND a0 == b0
    assign led[0] = L1 || (E1&&L0);     //Less, if a1 < b1 OR (a1 == b1 AND a0 < b0)
    
endmodule
