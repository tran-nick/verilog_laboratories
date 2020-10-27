`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:  Nick Tran 014682694
// Create Date: 10/12/2020 08:44:33 PM
// Module Name: seven_comparator
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module seven_comparator(
    input [6:0] a, b,
    output[7:0] anode,
    output ca,cb,cc,cd,ce,cf,cg
);
    wire G0,E0,L0;
    wire G1,E1,L1;
    wire G2,E2,L2;
    wire G3,E3,L3;
    wire[2:0] GEL;
    
    twobit_comparator comp0(a[1:0],b[1:0],G0,E0,L0);
    twobit_comparator comp1(a[3:2],b[3:2],G1,E1,L1);
    twobit_comparator comp2(a[5:4],b[5:4],G2,E2,L2);
    twobit_comparator comp3(a[6:5],b[6:5],G3,E3,L3);
    
    assign GEL[0] = L3 | E3&L2 | E3&E2&L1 | E3&E2&E1&L0;    //Less than
    assign GEL[1] = E3&E2&E1&E0;                            //Equal to
    assign GEL[2] = G3 | E3&G2 | E3&E2&G1 | E3&E2&E1&G0;    //Greater than

    //handling display
    assign anode = 0;
    
    seg_display disp0(GEL,anode,ca,cb,cc,cd,ce,cf,cg);
     
endmodule
