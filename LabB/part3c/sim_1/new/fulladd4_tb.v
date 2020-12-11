`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2020 06:24:28 PM
// Design Name: 
// Module Name: fulladd4_tb
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


module fulladd4_tb(

    );
    
    reg [3:0] a , b; 
    reg cin;
    wire [3:0] sum; 
    wire cout;
    
    fulladd4 uut(sum, cout, a, b, cin);
    
    initial
        begin
            //max condition
            #20 a = 4'b1111 ; b = 4'b1111 ; cin = 1;
            #20 a = 4'b1111 ; b = 4'b1111 ; cin = 0;
            
            //min condition 
            #20 a = 4'b0000 ; b = 4'b0000 ; cin = 0;
            #20 a = 4'b0000 ; b = 4'b0000 ; cin = 1;
            
            //check additional ~15-20 cases to ensure ripple adder function
            #20 a = 4'b1111 ; b = 4'b0001 ; cin = 0;    
            #20 a = 4'b1111 ; b = 4'b0010 ; cin = 0;     
            #20 a = 4'b1111 ; b = 4'b0100 ; cin = 0;     
            #20 a = 4'b1111 ; b = 4'b1000 ; cin = 0;
            
            #20 a = 4'b0010 ; b = 4'b0001 ; cin = 0;
            #20 a = 4'b0100 ; b = 4'b0010 ; cin = 0;
            #20 a = 4'b1000 ; b = 4'b0100 ; cin = 0;
            #20 a = 4'b1100 ; b = 4'b0011 ; cin = 0;
            
            #20 a = 4'b0010 ; b = 4'b0001 ; cin = 1;
            #20 a = 4'b0100 ; b = 4'b0010 ; cin = 1;
            #20 a = 4'b1000 ; b = 4'b0100 ; cin = 1;
            #20 a = 4'b1100 ; b = 4'b0011 ; cin = 1;
            
            #20 a = 4'b1001 ; b = 4'b0110 ; cin = 0;
            #20 a = 4'b1011 ; b = 4'b0100 ; cin = 0;
            #20 a = 4'b1001 ; b = 4'b0110 ; cin = 1;
            #20 a = 4'b1011 ; b = 4'b0100 ; cin = 1;
            
        end
    
endmodule
