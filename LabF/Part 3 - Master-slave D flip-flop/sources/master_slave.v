`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2020 02:07:54 PM
// Design Name: 
// Module Name: master_slave
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


module master_slave(
    input Clk, D,
    output Q
    );
    
    (*keep="true"*) wire Qm, Clk_0;
    
    assign Clk_0 = !Clk;
    
    d_latch master(Clk_0,D,Qm);
    d_latch slave(Clk,Qm,Q);
    
endmodule
