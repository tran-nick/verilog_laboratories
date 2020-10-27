`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2020 12:59:12 PM
// Design Name: 
// Module Name: twobit_comparator_tb
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


module twobit_comparator_tb();

    reg [3:0] swt;
    wire [2:0] GEL;
    
    twobit_comparator dut(swt, GEL);
    
    initial
        begin
            #50 swt = 4'b0000;     //0
            #50 swt = 4'b0001;     //1
            #50 swt = 4'b0010;     //2
            #50 swt = 4'b0011;     //3
            #50 swt = 4'b0100;     //4
            #50 swt = 4'b0101;     //5
            #50 swt = 4'b0110;     //6
            #50 swt = 4'b0111;     //7
            #50 swt = 4'b1000;     //8
            #50 swt = 4'b1001;     //9
            #50 swt = 4'b1010;     //10
            #50 swt = 4'b1011;     //11
            #50 swt = 4'b1100;     //12
            #50 swt = 4'b1101;     //13
            #50 swt = 4'b1110;     //14
            #50 swt = 4'b1111;     //15
        end
        

endmodule
