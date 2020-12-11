`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Engineer: Nick Tran 014682694
// 
// Module Name: lab2_part1
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////



module lab2_part1(F_94 , A_94 , B_94 , C_94);

    //port declaration
    input A_94 , B_94 , C_94;
    output F_94;
    wire w1 , w2 , w3;
    
    //netlist implmentation
    //nand na1(w1 , A_94 , ~B_94);
    //nand na2(w2 , A_94 , C_94);
    //nand na3(w3 , ~B_94 , C_94);
    //nand na4(F_94 , w1 , w2 , w3); 
   
   //dataflow
   assign F_94 = ~(~(A_94 & ~B_94) & ~(A_94 & C_94) & ~(~B_94 & C_94));

endmodule