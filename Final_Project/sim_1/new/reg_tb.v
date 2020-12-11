`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2020 06:38:32 PM
// Design Name: 
// Module Name: reg_tb
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


module reg_tb();

    reg [16:0] R;
    reg Rin; 
    reg Clock;
    wire [15:0] Q;
    
    regn uut(R,Rin,Clock,Q);
    
    initial
        begin: CLOCK
            Clock = 0;
            forever
            forever #(5) Clock = ~Clock;
        end
        
    initial 
        begin
        Rin = 1;
        R = 4'h1000;
        end
    

endmodule
