`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2020 04:57:29 PM
// Design Name: 
// Module Name: part1
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


module part1(
   input [1:0] KEY,
    input [9:0] SW,
    output [9:0] LED
    );
    
    wire Resetn, Manual_Clock, Run, Done;
    wire [8:0] DIN, Bus;
    
    assign Resetn = KEY[0];
    assign Manual_Clock = KEY[1];
    
    assign DIN = SW[8:0];
    assign Run = SW[9];
    
    processor U1(DIN,Resetn,Manual_Clock,Run,Done,Bus);
    
    assign LED[8:0] = Bus;
    assign LED[9] = Done;
    
endmodule
