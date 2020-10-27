`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2020 01:46:51 PM
// Design Name: 
// Module Name: majority_tb
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


module majority_tb();

    reg [3:0] switch;
    wire [2:0] leds;
    
    majority dut(switch ,leds);
    
    initial
        begin
            #50 switch = 4'b0000;     //0
            #50 switch = 4'b0001;     //1
            #50 switch = 4'b0010;     //2
            #50 switch = 4'b0011;     //3
            #50 switch = 4'b0100;     //4
            #50 switch = 4'b0101;     //5
            #50 switch = 4'b0110;     //6
            #50 switch = 4'b0111;     //7
            #50 switch = 4'b1000;     //8
            #50 switch = 4'b1001;     //9
            #50 switch = 4'b1010;     //10
            #50 switch = 4'b1011;     //11
            #50 switch = 4'b1100;     //12
            #50 switch = 4'b1101;     //13
            #50 switch = 4'b1110;     //14
            #50 switch = 4'b1111;     //15
    
    end

endmodule
