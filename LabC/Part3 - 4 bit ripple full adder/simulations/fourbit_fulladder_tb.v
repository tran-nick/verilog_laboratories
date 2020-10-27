`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2020 04:41:22 PM
// Design Name: 
// Module Name: fourbit_fulladder_tb
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


module fourbit_fulladder_tb();

    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;
    
    fourbit_fulladder dut(
    .sum(sum), 
    .cout(cout), 
    .a(a), 
    .b(b), 
    .cin(cin));
    
    initial
        begin
            //max condition
            #50 a = 4'b1111 ; b = 4'b1111 ; cin = 1;
            #50 a = 4'b1111 ; b = 4'b1111 ; cin = 0;
            
            //min condition 
            #50 a = 4'b0000 ; b = 4'b0000 ; cin = 0;
            #50 a = 4'b0000 ; b = 4'b0000 ; cin = 1;
            
            //check additional ~15-20 cases to ensure ripple adder function
            #50 a = 4'b1111 ; b = 4'b0001 ; cin = 0;    
            #50 a = 4'b1111 ; b = 4'b0010 ; cin = 0;     
            #50 a = 4'b1111 ; b = 4'b0100 ; cin = 0;     
            #50 a = 4'b1111 ; b = 4'b1000 ; cin = 0;
            
            #50 a = 4'b0010 ; b = 4'b0001 ; cin = 0;
            #50 a = 4'b0100 ; b = 4'b0010 ; cin = 0;
            #50 a = 4'b1000 ; b = 4'b0100 ; cin = 0;
            #50 a = 4'b1100 ; b = 4'b0011 ; cin = 0;
            
            #50 a = 4'b0010 ; b = 4'b0001 ; cin = 1;
            #50 a = 4'b0100 ; b = 4'b0010 ; cin = 1;
            #50 a = 4'b1000 ; b = 4'b0100 ; cin = 1;
            #50 a = 4'b1100 ; b = 4'b0011 ; cin = 1;
            
            #50 a = 4'b1001 ; b = 4'b0110 ; cin = 0;
            #50 a = 4'b1011 ; b = 4'b0100 ; cin = 0;
            #50 a = 4'b1001 ; b = 4'b0110 ; cin = 1;
            #50 a = 4'b1011 ; b = 4'b0100 ; cin = 1;
        
        end

endmodule
