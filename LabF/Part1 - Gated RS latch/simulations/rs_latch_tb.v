`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2020 01:02:16 PM
// Design Name: 
// Module Name: rs_latch_tb
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


module rs_latch_tb();

    reg Clk, R, S;
    wire Q;
    
    rs_latch dut(Clk,R,S,Q);
    
    initial
        begin
        //RS latch, condition R=1,S=1 is forbidden
        #50 Clk = 0; R = 0; S = 0;  //test case 1
        #50 Clk = 1; R = 0; S = 0;  //test case 2
        #50 Clk = 1; R = 0; S = 1;  //test case 3
        #50 Clk = 0; R = 0; S = 1;  //test case 4 - Q follow previous value
        #50 Clk = 0; R = 1; S = 0;  //test case 5 - Q follow previous value
        #50 Clk = 1; R = 1; S = 0;  //test case 6
        end
endmodule
