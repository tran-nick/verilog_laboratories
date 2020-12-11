`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2020 01:23:07 PM
// Design Name: 
// Module Name: LabG_part3
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


module LabG_part3(mclk,SW,an,ssg);

input mclk;
input [5:0] SW;
output [7:0] an;
output [6:0] ssg;

reg [6:0] dig;
reg [32:0] clkdiv;
reg [3:0] cntr;
reg cclk;   //changed from wire to reg to use in case statement


always @(cntr)
    begin
        case (cntr)
            4'b0000: dig=7'b0111111; //0
            4'b0001: dig=7'b0000110; //1
            4'b0010: dig=7'b1011011; //2
            4'b0011: dig=7'b1001111; //3
            4'b0100: dig=7'b1100110; //4
            4'b0101: dig=7'b1101101; //5
            4'b0110: dig=7'b1111101; //6
            4'b0111: dig=7'b0000111; //7
            4'b1000: dig=7'b1111111; //8
            4'b1001: dig=7'b1101111; //9
            4'b1010: dig=7'b1110111; // A
            4'b1011: dig=7'b1111100; // B
            4'b1100: dig=7'b1011000; // C
            4'b1101: dig=7'b1011110; // D
            4'b1110: dig=7'b1111001; // E
            4'b1111: dig=7'b1110001; // F
            default: dig=7'b0000000;
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

    assign ssg = ~dig;

// connect the buttons on the Nexsys-A7 to the seven segment display anodes.
// The Nexsys-A7 has four anode signals for the seven segment displays.
// placing an anode line at a logic 1 enables a digit to be display.
// placing the anode line at logic 0 will turn off the corresponding
//digit. The buttons on the Nexsys-4 are wired so that pressing the
// button will generate a logic 1. With this assignment, pressing
// a button will turn off the corresponding digit of the seven segment
// display.

    assign an = {4'b1111, ~SW[3:0]};    //changed to specify only first 4 segments to display

// Divide the master clock (100MHz) down to a lower frequency.
// 100 MHz / 2**26 = about 2 Hz and 100MHz/ 2**25 = about 3 Hz 

always @(posedge mclk)
    begin
        clkdiv <= clkdiv + 1;
        //use case statement to scale clock frequency
        case(SW[5:4])
            2'b00 : cclk <= clkdiv[22];
            2'b01 : cclk <= clkdiv[21];
            2'b10 : cclk <= clkdiv[20];
            2'b11 : cclk <= clkdiv[19];
        endcase
    end

// This process implements a decade counter driven by the above clock 
// divider to generate the digits to go out to the seven segment displays.

always @(posedge cclk)
    begin
        cntr <= cntr + 1;        
    end
    
endmodule
