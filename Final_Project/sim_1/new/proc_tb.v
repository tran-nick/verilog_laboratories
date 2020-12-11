`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2020 08:39:10 PM
// Design Name: 
// Module Name: proc_tb
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


module proc_tb(

    );
    
reg [15:0] DIN;
reg Resetn;
reg Clock;
reg Run;
wire Done;
wire [15:0] BusWires;

    
    // Instantiate Registers
    initial 
    begin
        Clock = 1'b0;
        Run = 1'b1; 
        Resetn = 1'b0;
    end
    
    // Test I1 (RX <- DIN)
    initial begin
        /************************** I1 - 1 ***********************************/
        #1
        Clock = 1'b1;
        Resetn = 1'b1;
        DIN = {7'b000_0000, 3'b010, 3'b001, 3'b000}; // I1 : R1 <- DIN
        #1
        Clock = 1'b0;
        Resetn = 1'b0;       
        #1
        Clock = 1'b1;
        DIN = {7'b000_0000, 3'b000, 3'b100, 3'b000}; // Provide Data via DIN
        #1
        Clock = 1'b0;
        /************************** I1 - 2 ***********************************/
        #1
        Clock = 1'b1;
        DIN = {7'b000_0000, 3'b010, 3'b010, 3'b000}; // I1 : R2 <- DIN
        #1
        Clock = 1'b0;
        #1
        Clock = 1'b1;
        DIN = {7'b000_0000, 3'b000, 3'b000, 3'b100}; // Provide Data via DIN        
        #1
        Clock = 1'b0;
        /************************** I0 - 1 ***********************************/
        #1
        Clock = 1'b1;
        DIN = {7'b000_0000, 3'b001, 3'b011, 3'b001}; // I0 : R3 <- R1
        #1
        Clock = 1'b0;
        #1
        Clock = 1'b1;
        #1
        Clock = 1'b0;
        /************************** I2 - 1 ***********************************/
        #1
        Clock = 1'b1;
        DIN = {7'b000_0000, 3'b011, 3'b001, 3'b010}; // I2 : R1 <- R1 + R2
        #1
        Clock = 1'b0;
        #1
        Clock = 1'b1;
        #1
        Clock = 1'b0;
        #1
        Clock = 1'b1;
        #1
        Clock = 1'b0;
        #1
        Clock = 1'b1;
        #1
        Clock = 1'b0;
        /************************** I3 - 1 ***********************************/
        #1
        Clock = 1'b1;
        DIN = {7'b000_0000, 3'b100, 3'b001, 3'b010}; // I3 : R1 <- R1 - R2
        #1
        Clock = 1'b0;
        #1
        Clock = 1'b1;
        #1
        Clock = 1'b0;
        #1
        Clock = 1'b1;
        #1
        Clock = 1'b0;
        #1
        Clock = 1'b1;
        #1
        Clock = 1'b0;
        #1
        Clock = 1'b1;
        #1
        Clock = 1'b0;
        #1
        Clock = 1'b1;
        #1
        Clock = 1'b0;
        #1
        Clock = 1'b1;
        #1
        Clock = 1'b0;
        #1
        Clock = 1'b1;
        #1
        Clock = 1'b0;
        #1
        Clock = 1'b1;
    end

endmodule
