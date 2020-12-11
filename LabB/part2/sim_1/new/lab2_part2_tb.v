`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2020 02:38:15 PM
// Design Name: 
// Module Name: lab2_part2_tb
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


module lab2_part2_tb(

    );
    
    reg A , B , C , D;
    wire Maj , Uni , Tie;

    lab2_part2 dut(Maj , Uni , Tie , A , B , C , D);

    initial
        begin
            #50 A = 0 ; B = 0 ; C = 0 ; D = 0;  //0
            #50 A = 0 ; B = 0 ; C = 0 ; D = 1;  //1
            #50 A = 0 ; B = 0 ; C = 1 ; D = 0;  //2
            #50 A = 0 ; B = 0 ; C = 1 ; D = 1;  //3
            #50 A = 0 ; B = 1 ; C = 0 ; D = 0;  //4
            #50 A = 0 ; B = 1 ; C = 0 ; D = 1;  //5
            #50 A = 0 ; B = 1 ; C = 1 ; D = 0;  //6
            #50 A = 0 ; B = 1 ; C = 1 ; D = 1;  //7
            #50 A = 1 ; B = 0 ; C = 0 ; D = 0;  //8
            #50 A = 1 ; B = 0 ; C = 0 ; D = 1;  //9
            #50 A = 1 ; B = 0 ; C = 1 ; D = 0;  //10
            #50 A = 1 ; B = 0 ; C = 1 ; D = 1;  //11
            #50 A = 1 ; B = 1 ; C = 0 ; D = 0;  //12
            #50 A = 1 ; B = 1 ; C = 0 ; D = 1;  //13
            #50 A = 1 ; B = 1 ; C = 1 ; D = 0;  //14
            #50 A = 1 ; B = 1 ; C = 1 ; D = 1;  //15
        end
endmodule
