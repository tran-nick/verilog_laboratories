`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2020 09:03:31 PM
// Design Name: 
// Module Name: main
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


module main(
    input D, Clk,
    output Qa,Qb,Qc
    );
    
    d_latch dl0(Clk,D,Qa);
    d_posedge dl1(Clk,D,Qb);
    d_negedge dl2(Clk,D,Qc);
    
endmodule
