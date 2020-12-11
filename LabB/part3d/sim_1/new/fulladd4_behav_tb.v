`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2020 06:40:57 PM
// Design Name: 
// Module Name: fulladd4_behav_tb
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


module fulladd4_behav_tb(

    );
    reg [3:0] a, b;
    wire [3:0] sum;
    
    fulladd4_behav uut(sum, a, b);
    
    initial
        begin
        #20 a = 4'b0000 ; b = 4'b0000 ; //min case
        #20 a = 4'b1111 ; b = 4'b1111 ; //max case
        
        //check additional ~15-20 cases to ensure ripple adder function
        #20 a = 4'b1111 ; b = 4'b0001 ;     
        #20 a = 4'b1111 ; b = 4'b0010 ;   
        #20 a = 4'b1111 ; b = 4'b0100 ;  
        #20 a = 4'b1111 ; b = 4'b1000 ;
        
        #20 a = 4'b0010 ; b = 4'b0001 ; 
        #20 a = 4'b0100 ; b = 4'b0010 ; 
        #20 a = 4'b1000 ; b = 4'b0100 ; 
        #20 a = 4'b1100 ; b = 4'b0011 ; 
        
        #20 a = 4'b0010 ; b = 4'b0001 ; 
        #20 a = 4'b0100 ; b = 4'b0010 ; 
        #20 a = 4'b1000 ; b = 4'b0100 ; 
        #20 a = 4'b1100 ; b = 4'b0011 ; 
        
        #20 a = 4'b1001 ; b = 4'b0110 ; 
        #20 a = 4'b1011 ; b = 4'b0100 ;
        #20 a = 4'b1001 ; b = 4'b0110 ; 
        #20 a = 4'b1011 ; b = 4'b0100 ; 
   
        end
    
endmodule
