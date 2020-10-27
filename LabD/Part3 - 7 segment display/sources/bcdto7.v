`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//decoder using case statements. 
module bcdto7(sw, LED);
    input [3:0] sw;
    output reg [6:0] LED;
    
    always @(*)
        begin
        case(sw)
            4'b0000 : LED = 7'b0000001; //"0"
            4'b0001 : LED = 7'b1001111; //"1"
            4'b0010 : LED = 7'b0010010; //"2"
            4'b0011 : LED = 7'b0000110; //"3"
            4'b0100 : LED = 7'b1001100; //"4"
            4'b0101 : LED = 7'b0100100; //"5"
            4'b0110 : LED = 7'b0100000; //"6"
            4'b0111 : LED = 7'b0001111; //"7"
            4'b1000 : LED = 7'b0000000; //"8"
            4'b1001 : LED = 7'b0000100; //"9"
            default : LED = 7'b0000001; //"0"
            endcase
        end
endmodule
