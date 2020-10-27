`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2020 12:11:13 PM
// Design Name: 
// Module Name: rs_latch
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


module rs_latch(
    input Clk, R, S,
    output Q
    );
    
    (*keep = "true"*) wire R_g, S_g, Qa, Qb;
    
    assign R_g = R&Clk;
    assign S_g = S&Clk;
    assign Qa = ~(R_g|Qb);
    assign Qb = ~(S_g|Qa);
    
    assign Q = Qa;
    
endmodule
