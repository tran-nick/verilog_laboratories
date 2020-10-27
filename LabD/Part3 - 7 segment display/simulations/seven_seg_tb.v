`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2020 10:45:28 AM
// Design Name: 
// Module Name: seven_seg_tb
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


module seven_seg_tb();

    reg [3:0] switches;
    wire [7:0] AN;
    wire CA,CB,CC,CD,CE,CF,CG;
    
    seven_seg_display DUT(switches,AN,CA,CB,CC,CD,CE,CF,CG);

    initial
        begin
        #50 switches = 4'b0000;     //0
        #50 switches = 4'b0001;     //1
        #50 switches = 4'b0010;     //2
        #50 switches = 4'b0011;     //3
        #50 switches = 4'b0100;     //4
        #50 switches = 4'b0101;     //5
        #50 switches = 4'b0110;     //6
        #50 switches = 4'b0111;     //7
        #50 switches = 4'b1000;     //8
        #50 switches = 4'b1001;     //9
        #50 switches = 4'b1010;     //10
        #50 switches = 4'b1011;     //11
        #50 switches = 4'b1100;     //12
        #50 switches = 4'b1101;     //13
        #50 switches = 4'b1110;     //14
        #50 switches = 4'b1111;     //15
        end


endmodule
