`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2020 02:43:56 PM
// Design Name: 
// Module Name: swt2led
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

module swt2led(
    output reg [3:0]leds,
    input [3:0] switches
);
    always @(*)
        begin
            case(switches)
                4'b0000 : leds = 4'b0000; //"0"
                4'b0001 : leds = 4'b0001; //"1"
                4'b0010 : leds = 4'b0010; //"2"
                4'b0011 : leds = 4'b0011; //"3"
                4'b0100 : leds = 4'b0100; //"4"
                4'b0101 : leds = 4'b0101; //"5"
                4'b0110 : leds = 4'b0110; //"6"
                4'b0111 : leds = 4'b0111; //"7"
                4'b1000 : leds = 4'b1000; //"8"
                4'b1001 : leds = 4'b1001; //"9"
                default : leds = 4'b0000; //"0"
            endcase
        end
endmodule