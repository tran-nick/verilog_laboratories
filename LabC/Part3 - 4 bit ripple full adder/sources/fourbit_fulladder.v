`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Nick Tran
// Create Date: 09/25/2020 04:03:15 PM
// Module Name: fourbit_fulladder
//////////////////////////////////////////////////////////////////////////////////


//A[3:0] = SW[4:1], B[3:0] = SW[8:5], Cin = SW[0]
//LD[4]=Cout, LD[3:0]=S[3:0]

module fourbit_fulladder(
    input [3:0] a, 
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
    );
    
    wire c3, c2, c1;
    
    fulladder fa0(sum[0], c1, a[0], b[0], cin);
    fulladder fa1(sum[1], c2, a[1], b[1], c1);
    fulladder fa2(sum[2], c3, a[2], b[2], c2);
    fulladder fa3(sum[3], cout, a[3], b[3], c3);
    
endmodule
