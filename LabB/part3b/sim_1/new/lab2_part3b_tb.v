`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2020 06:08:46 PM
// Design Name: 
// Module Name: lab2_part3b_tb
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


module fulladd_dataflow_tb();
    
    reg a, b, cin;
    wire sum, cout;
    
    fulladd_dataflow uut(sum, cout, a, b, cin);
    
    initial
        begin
        #50 a = 0 ; b = 0 ; cin = 0;//0
        #50 a = 0 ; b = 0 ; cin = 1;//1
        #50 a = 0 ; b = 1 ; cin = 0;//2
        #50 a = 0 ; b = 1 ; cin = 1;//3
        #50 a = 1 ; b = 0 ; cin = 0;//4
        #50 a = 1 ; b = 0 ; cin = 1;//5
        #50 a = 1 ; b = 1 ; cin = 0;//6
        #50 a = 1 ; b = 1 ; cin = 1;//7
        end
endmodule
