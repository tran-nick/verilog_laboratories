`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2020 07:23:19 PM
// Design Name: 
// Module Name: BCL8
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


module BCL8(
    input clk, ena,
    output [31:0] BCL
    );
    
    wire[7:0] carryout;
    assign carryout[0] = ena;
BCL1 digit0(.clk(clk), .ena(carryout[0]), .BCL(BCL[ 3: 0]), .BCL_carry(carryout[1]));
BCL1 digit1(.clk(clk), .ena(carryout[1]), .BCL(BCL[ 7: 4]), .BCL_carry(carryout[2]));
BCL1 digit2(.clk(clk), .ena(carryout[2]), .BCL(BCL[11: 8]), .BCL_carry(carryout[3]));
BCL1 digit3(.clk(clk), .ena(carryout[3]), .BCL(BCL[15:12]), .BCL_carry(carryout[4]));
BCL1 digit4(.clk(clk), .ena(carryout[4]), .BCL(BCL[19:16]), .BCL_carry(carryout[5]));
BCL1 digit5(.clk(clk), .ena(carryout[5]), .BCL(BCL[23:20]), .BCL_carry(carryout[6]));
BCL1 digit6(.clk(clk), .ena(carryout[6]), .BCL(BCL[27:24]), .BCL_carry(carryout[7]));
BCL1 digit7(.clk(clk), .ena(carryout[7]), .BCL(BCL[31:28]));

    
endmodule
