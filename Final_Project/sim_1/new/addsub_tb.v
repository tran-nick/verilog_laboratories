`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2020 06:47:24 PM
// Design Name: 
// Module Name: addsub_tb
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


module addsub_tb();

    reg [15:0] A;
    reg [15:0] Buswires;
    reg addsub_signal;
    wire [15:0] sumdiff;
    
    addsub uut(A,Buswires,addsub_signal,sumdiff);
    
    initial
        begin
            A = 16'd5;
            Buswires = 16'd3;
            
            addsub_signal = 1;
            #20 addsub_signal = 0;
        
        
        end

endmodule
