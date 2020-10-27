`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Nick Tran 014682694
// Create Date: 10/12/2020 07:48:15 PM
// Module Name: seven_fulladder
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module seven_fulladder(
    input [6:0] a, b,   //7 bit inputs
    output [7:0] SumCout    //8 bit output, SumCout[7] = Cout
    );
    
    wire c0,c1,c2,c3,c4,c5;
    
    fulladder add0(SumCout[0],c0,a[0],b[0],0);  
    fulladder add1(SumCout[1],c1,a[1],b[1],c0);  
    fulladder add2(SumCout[2],c2,a[2],b[2],c1);  
    fulladder add3(SumCout[3],c3,a[3],b[3],c2);  
    fulladder add4(SumCout[4],c4,a[4],b[4],c3);  
    fulladder add5(SumCout[5],c5,a[5],b[5],c4);  
    fulladder add6(SumCout[6],SumCout[7],a[6],b[6],c5);

endmodule
