`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2020 02:08:22 PM
// Design Name: 
// Module Name: d_latch
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


module d_latch(
    input Clk,D,
    output Q
    );
    
    (*keep="true"*) wire S_g,R_g,Qa,Qb;
    
    assign S_g = !(D&Clk);
    assign R_g = !(!D&Clk);
    assign Qa = !(S_g&Qb);
    assign Qb = !(R_g&Qa);
    
    assign Q = Qa;
endmodule
