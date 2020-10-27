`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2020 12:30:09 PM
// Design Name: 
// Module Name: node1
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

module node1(
    output vert_cout, horiz_cout,
    input vert_cin, horiz_cin, a, b
);

    wire w0;
    
    assign w0 = a&b;
    fulladder fa0(vert_cout , horiz_cout,vert_cin , w0 , horiz_cin);




endmodule