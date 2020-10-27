`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2020 07:54:50 PM
// Design Name: 
// Module Name: seven_seg
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


module seven_seg(swt, AN, CA,CB,CC,CD,CE,CF,CG);
    input [3:0] swt;
    output [7:0] AN;
    output CA,CB,CC,CD,CE,CF,CG;
    
    wire [6:0] led_out;
    
    assign AN = 0; 
    bcdto7(swt, led_out);   //passing wire and will assign to final constrained outputs. 
    assign {CA,CB,CC,CD,CE,CF,CG} = led_out;
    
    
    
endmodule
