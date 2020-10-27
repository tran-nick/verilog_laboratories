`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Nick Tran 014682694
// Create Date: 10/13/2020 10:25:55 AM
// Module Name: seven_subtractor
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module seven_subtractor(
    input [6:0] a,b,
    output [13:0] DiffBorr
    );
    
    wire [7:0] a_signed, b_signed;  //8 bit wire to hold signed value of unsigned input
    wire w0,w1,w2,w3,w4,w5,w6;
    wire carry_out;
    
    assign a_signed = a;        //Assume A will always positive
    assign b_signed = ~b +1;    //2's complemented
    
    //8th bit for holding sign
    fulladder sub0(DiffBorr[0],w0,a_signed[0],b_signed[0],0);  
    fulladder sub1(DiffBorr[1],w1,a_signed[1],b_signed[1],w0);  
    fulladder sub2(DiffBorr[2],w2,a_signed[2],b_signed[2],w1);  
    fulladder sub3(DiffBorr[3],w3,a_signed[3],b_signed[3],w2);  
    fulladder sub4(DiffBorr[4],w4,a_signed[4],b_signed[4],w3);  
    fulladder sub5(DiffBorr[5],w5,a_signed[5],b_signed[5],w4);  
    fulladder sub6(DiffBorr[6],w6,a_signed[6],b_signed[6],w5);
    fulladder sub7(DiffBorr[7],carry_out,a_signed[7],b_signed[7],w6);   //8th sign bit
    
    //Extend MSB to fill residual 6 bit of result output
    assign DiffBorr[8] = DiffBorr[7];
    assign DiffBorr[9] = DiffBorr[7];
    assign DiffBorr[10] = DiffBorr[7];
    assign DiffBorr[11] = DiffBorr[7];
    assign DiffBorr[12] = DiffBorr[7];
    assign DiffBorr[13] = DiffBorr[7];
    
endmodule
