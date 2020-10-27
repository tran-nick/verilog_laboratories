`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:  Nick Tran 014682694
// Create Date: 10/12/2020 07:55:09 PM
// Module Name: ALU_tb
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module ALU_tb();
    reg [6:0] a, b;
    reg [1:0] opcode;
    wire [13:0] result;
    wire [7:0] anode;
    wire CA,CB,CC,CD,CE,CF,CG;
    
    ALU dut(
    a,b,
    opcode,
    anode,
    CA,CB,CC,CD,CE,CF,CG,
    result);
    
    initial
        begin
            #50 opcode = 2'b00 ; a = 7'b0011010; b = 7'b1011110;    //26+94 = 120
            #50 opcode = 2'b00 ; a = 7'b1011110; b = 7'b0011010;    //94+26 = 120     
            
            #50 opcode = 2'b11 ; a = 7'b0011010; b = 7'b1011110;    //26X94 = 2444  base2(1001 1000 1100)
            #50 opcode = 2'b11 ; a = 7'b1011110; b = 7'b0011010;    //94X26 = 2444
            
            #50 opcode = 2'b10 ; a = 7'b0011010; b = 7'b0011010;    //0==0 , GEL = 010
            #50 opcode = 2'b10 ; a = 7'b1011110; b = 7'b0011010;    //94 > 26 , GEL = 100
            #50 opcode = 2'b10 ; a = 7'b0011010; b = 7'b1011110;    //26 < 94 , GEL = 001
            
            #50 opcode = 2'b01 ; a = 7'b0011010; b = 7'b1011110;    //26-94 = -68
            #50 opcode = 2'b01 ; a = 7'b1011110; b = 7'b0011010;    //94-26 = 68
        end
endmodule

