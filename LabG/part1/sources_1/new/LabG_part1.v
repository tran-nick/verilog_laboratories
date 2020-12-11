`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2020 01:00:25 PM
// Design Name: 
// Module Name: LabG_part1
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


module LabG_part1(
    input mclk, 
    input [1:0] SW, 
    output reg led0);

    reg [32:0] counter;
    always@(posedge mclk)
        begin
        counter <= counter +1;
            case(SW)
                2'b00: led0 <= counter[21];
                2'b01:led0 <= counter[20];
                2'b10:led0 <= counter[19];
                2'b11: led0 <= counter[18];
            endcase
        end
endmodule
