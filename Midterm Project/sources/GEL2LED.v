`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:  Nick Tran 014682694
// Create Date: 10/12/2020 08:46:51 PM
// Module Name: GEL2LED
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module GEL2LED(
    input [2:0] GEL,
    output reg [6:0] LED
    );
    
    always @(*)
        begin
            case(GEL)       //ABCDEFG
            3'b001 : LED = 7'b1110001;  //Less than
            3'b010 : LED = 7'b0110000;  //Equal to
            3'b100 : LED = 7'b0100000;  //Greater than
            default : LED = 7'b0000000; //default all on
            endcase
        end    
endmodule
