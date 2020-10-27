`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2020 02:23:38 PM
// Design Name: 
// Module Name: master_slave_tb
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


module master_slave_tb();

    reg Clk, D;
    wire Q;
    
    master_slave dut(Clk,D,Q);
    
    initial  
        begin
        #50 Clk = 0; D = 0; //Qm = 0, Q = Undetermined
        #50 Clk = 1; D = 0; //Qm = Previous value, Q = Qm
        #50 Clk = 0; D = 1; //Qm = 1 , Q = Previous value
        #50 Clk = 1; D = 1; //Qm = Previous value, Q = Qm
        end

endmodule
