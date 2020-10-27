`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2020 09:22:27 PM
// Design Name: 
// Module Name: main_tb
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


module main_tb();
    reg Clk, D;
    wire Qa,Qb,Qc;
    
    main_tb dut(D,Clk,Qa,Qb,Qc);

    initial
        begin
        //first section, figure 7(b) Timing diagram
        #50 Clk = 0 ; D = 0;
        #50 Clk = 0 ; D = 1;
        //second section
        #50 Clk = 1 ; D = 1;
        #50 Clk = 1 ; D = 0;
        #50 Clk = 1 ; D = 1;
        #50 Clk = 1 ; D = 0;
        //third section
        #50 Clk = 0 ; D = 0;
        #50 Clk = 0 ; D = 1;
        #50 Clk = 0 ; D = 1;
        #50 Clk = 0 ; D = 1;
        #50 Clk = 0 ; D = 0;
        //fourth section
        #50 Clk = 1 ; D = 0;
        #50 Clk = 1 ; D = 1;
        #50 Clk = 1 ; D = 0;
        #50 Clk = 1 ; D = 1;
        //fifth section
        #50 Clk = 0 ; D = 1;
        #50 Clk = 0 ; D = 0;
        end
endmodule
