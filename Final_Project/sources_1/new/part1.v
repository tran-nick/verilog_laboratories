`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2020 10:16:17 AM
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
    input [15:0] SWT,
    input [2:0] KEY,
    output [16:0] LED 
    );
    
   
    wire Manual_Clock;
    wire Resetn, Run, Done;
    wire [15:0] DIN, Bus;
    
    
    assign Resetn = KEY[0]; 
    assign Manual_Clock = KEY[1];
    assign DIN = SWT[15:0];
    assign Run = KEY[2];
    
    processor u1(DIN,Resetn,Manual_Clock,Run,Done,Bus);
    
    assign LED[16] = Done;
    assign LED[15:0] = Bus;
    
endmodule
