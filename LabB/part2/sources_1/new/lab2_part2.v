`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2020 01:01:16 PM
// Design Name: 
// Module Name: lab2_part2
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


module lab2_part2(Maj_94 , Uni_94 , Tie_94 , A_94 , B_94 , C_94 , D_94);

    input A_94 , B_94 , C_94 , D_94;
    output Maj_94 , Uni_94 , Tie_94;
    wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13;
    
    //Majority - 3 or more inputs TRUE
    nand na1(w1 , A_94 , B_94 , D_94);
    nand na2(w2 , B_94 , C_94 , D_94);
    nand na3(w3 , A_94 , B_94 , C_94);
    nand na4(w4 , A_94 , C_94 , D_94);
    nand na5(Maj_94 , w1 , w2 , w3 , w4);
    
    //Unity - all inputs same value
    nand na6(w5 , ~A_94 , ~B_94 , ~C_94 , ~D_94);
    nand na7(w6 , A_94 , B_94 , C_94 , D_94);
    nand na8(Uni_94 , w5 , w6);
    
    //Tie - 2 inputs TRUE, Majority = don't care
    nand na9(w7, ~A_94, ~B_94, C_94, D_94);
    nand na10(w8, ~A_94, B_94, ~C_94, D_94);
    nand na11(w9, ~A_94, ~B_94, C_94, D_94);
    nand na12(w10, ~A_94, B_94, C_94, ~D_94);
    nand na13(w11, A_94, B_94, ~C_94, ~D_94);
    nand na14(w12, A_94, ~B_94, ~C_94, D_94);
    nand na15(w13, A_94, ~B_94, C_94, ~D_94);
    nand na16(Tie_94 , w7, w8, w9, w10, w11, w12, w13);


endmodule
