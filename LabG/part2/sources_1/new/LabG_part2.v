`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2020 01:48:59 PM
// Design Name: 
// Module Name: LabG_part2
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


module LabG_part2(mclk94,SW94,an94,ssg94);
input mclk94;
input [3:0] SW94;
output [7:0] an94;
output [6:0] ssg94;

reg [6:0] dig94;
reg [32:0] clkdiv94;
reg [3:0] cntr94;
wire cclk94;

always @(cntr94)
    begin
        case (cntr94)
            4'b0000: dig94=7'b0111111; //0
            4'b0001: dig94=7'b0000110; //1
            4'b0010: dig94=7'b1011011; //2
            4'b0011: dig94=7'b1001111; //3
            4'b0100: dig94=7'b1100110; //4
            4'b0101: dig94=7'b1101101; //5
            4'b0110: dig94=7'b1111101; //6
            4'b0111: dig94=7'b0000111; //7
            4'b1000: dig94=7'b1111111; //8
            4'b1001: dig94=7'b1101111; //9
            4'b1010: dig94=7'b1110111; // A
            4'b1011: dig94=7'b1111100; // B
            4'b1100: dig94=7'b1011000; // C
            4'b1101: dig94=7'b1011110; // D
            4'b1110: dig94=7'b1111001; // E
            4'b1111: dig94=7'b1110001; // F
            default: dig94=7'b0000000;
        endcase
    end

//Hook up the seven segment display cathodes.
//a 0 -F count that is mapped through the BCD -> seven segment
//decoder to drive the digits. The 7-segment display on the
//Nexsys-A7 board is a common anode type. To turn on a segment, it is
//necessary to drive a logic 0 on the corresponding cathode line.
//As the seven segment decoder implement above generates a logic 1
//for each segment to be turned on, it is necessary to invert the
//decoder output before driving the cathodes.

    assign ssg94 = ~dig94;

// connect the buttons on the Nexsys-A7 to the seven segment display anodes.
// The Nexsys-A7 has four anode signals for the seven segment displays.
// placing an anode line at a logic 1 enables a digit to be display.
// placing the anode line at logic 0 will turn off the corresponding
//digit. The buttons on the Nexsys-4 are wired so that pressing the
// button will generate a logic 1. With this assignment, pressing
// a button will turn off the corresponding digit of the seven segment
// display.

    assign an94 = {4'b1111, ~SW94};

// Divide the master clock (100MHz) down to a lower frequency.
// 100 MHz / 2**26 = about 2 Hz and 100MHz/ 2**25 = about 3 Hz 

always @(posedge mclk94)
    begin
        clkdiv94 <= clkdiv94 + 1;
    end

assign cclk94 = clkdiv94[25];

// This process implements a decade counter driven by the above clock 
// divider to generate the digits to go out to the seven segment displays.

always @(posedge cclk94)
    begin
        cntr94 <= cntr94 + 1;
    end
    
endmodule
