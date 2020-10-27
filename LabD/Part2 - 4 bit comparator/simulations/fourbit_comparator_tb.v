`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2020 02:03:52 PM
// Design Name: 
// Module Name: fourbit_comparator_tb
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


module fourbit_comparator_tb();

    reg[7:0] switches;
    wire [2:0] LED;
    
    fourbit_comparator dut(switches,LED);
    
    initial
        begin
        //testing Equal condition
        #50 switches = 8'b10011001;
        #50 switches = 8'b10101010;
        
        //testing Greater condition
        #50 switches = 8'b11011011;
        #50 switches = 8'b11111011;
        
        //testing Less condition
        #50 switches = 8'b10101011;
        #50 switches = 8'b10001100;
        end

endmodule
