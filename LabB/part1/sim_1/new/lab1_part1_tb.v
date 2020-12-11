`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Nick Tran 014682694
// Module Name: lab1_part1_tb
//
// Module Name: lab2_part1
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////


module lab2_part1_tb(

    );
    
    reg A , B ,C;
    wire F ;
    
    lab2_part1 dut(F , A , B , C);
   
   initial
    begin
        //for 50 units time, set respective values
        #50 A = 0 ; B = 0; C = 0; //0
        #50 A = 0 ; B = 0; C = 1; //1
        #50 A = 0 ; B = 1; C = 0; //2
        #50 A = 0 ; B = 1; C = 1; //3
        #50 A = 1 ; B = 0; C = 0; //4
        #50 A = 1 ; B = 0; C = 1; //5
        #50 A = 1 ; B = 1; C = 0; //6
        #50 A = 1 ; B = 1; C = 1; //7        
    end
    
endmodule
