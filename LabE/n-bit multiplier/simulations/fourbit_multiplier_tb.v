`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2020 02:20:56 PM
// Design Name: 
// Module Name: fourbit_multiplier_tb
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


module fourbit_multiplier_tb();

    reg [3:0] a,b;
    wire[7:0] LEDs, products;
    
    fourbit_multiplier dut(products,LEDs,a,b);
    
    initial
        begin
            #50 a=4'b0000; b = 4'b0000; //0^0 = 0
            #50 a=4'b0001; b = 4'b0001; //1^2 = 1
            #50 a=4'b0010; b = 4'b0010; //2^2 = 4
            #50 a=4'b0011; b = 4'b0011; //3^2 = 9
            #50 a=4'b0100; b = 4'b0100; //4^2 = 16
            #50 a=4'b0101; b = 4'b0101; //5^2 = 25
            #50 a=4'b0110; b = 4'b0110; //6^2 = 36
            #50 a=4'b0111; b = 4'b0111; //7^2 = 49
            #50 a=4'b1000; b = 4'b1000; //8^2 = 64
            #50 a=4'b1001; b = 4'b1001; //9^2 = 81
            #50 a=4'b1010; b = 4'b1010; //10^2 = 100
            #50 a=4'b1011; b = 4'b1011; //11^2 = 121
            #50 a=4'b1100; b = 4'b1100; //12^2 = 144
            #50 a=4'b1101; b = 4'b1101; //13^2 = 169
            #50 a=4'b1110; b = 4'b1110; //14^2 = 196
            #50 a=4'b1111; b = 4'b1111; //15^2 = 225
        end

endmodule
