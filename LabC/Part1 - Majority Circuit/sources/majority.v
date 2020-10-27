`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Nick Tran
// Create Date: 09/23/2020 01:39:16 PM
// Module Name: majority
//////////////////////////////////////////////////////////////////////////////////

//SW[3] = A , SW[2] = B , SW[1] = C , SW[0] = D
//LD[0] = M , LD[1] = U , LD[2] = T

module majority(
    input [3:0] swt,
    output [2:0] led 
    );

    //Majority          
    assign led[0] = 
    !(!(swt[3]&swt[2]&swt[0])       //ABD
    & !(swt[2]&swt[1]&swt[0])       //BCD
    & !(swt[3]&swt[2]&swt[1])       //ABC
    & !(swt[3]&swt[1]&swt[0]));     //ACD
    
    //Unanimous
    assign led[1] = 
    !(!(!swt[3]&!swt[2]&!swt[1]&!swt[0])     //A'B'C'D'
    & !(swt[3]&swt[2]&swt[1]&swt[0]));      //ABCD
    
    //Tie - 
    assign led[2] = 
    !(!(!swt[3] & !swt[2] & swt[1] & swt[0])       //A'B'CD
    & !(!swt[3] & swt[2] & !swt[1] & swt[0])      //A'BC'D
    & !(!swt[3] & swt[2] & swt[1] & !swt[0])      //A'BCD'
    & !(swt[3] & swt[2] & !swt[1] & !swt[0])      //ABC'D'
    & !(swt[3] & !swt[2] & !swt[1] & swt[0])      //AB'C'D
    & !(swt[3] & !swt[2] & swt[1] & !swt[0]));    //AB'CD'
    
endmodule
