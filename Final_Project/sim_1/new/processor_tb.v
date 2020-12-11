`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2020 06:52:06 PM
// Design Name: 
// Module Name: processor_tb
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


module processor_tb();

reg [15:0] DIN;
reg Resetn;
reg Clock;
reg Run;
wire Done;
wire [15:0] BusWires;


processor uut(DIN,Resetn,Clock,Run,Done,BusWires);

initial
    begin : CLOCK_SIGNAL
        Clock = 1;
        #0.1 Clock = 0;
        forever #(10) Clock = ~Clock;
    end

initial
    begin : DIN_INPUT
        DIN = 16'h0000;
        #20 DIN = 16'h2000;
        #20 DIN = 16'h0005;
        #20 DIN = 16'h0400;
        #40 DIN = 16'h4080;
        #80 DIN = 16'h6000;
        #20 DIN = 16'h0000;
    end
    
initial
    begin : RESET_SIGNAL
    Resetn = 0;
    #20 Resetn = 1;
    end

initial
    begin : RUN_SIGNAL
    Run = 0;
    #20 Run = 1;
    #20 Run = 0;
    #20 Run = 1;
    #20 Run = 0;
    #20 Run = 1;
    #20 Run = 0;
    #60 Run = 1;
    #20 Run = 0;
    end
endmodule
