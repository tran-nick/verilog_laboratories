`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:  Nick Tran 014682694
// Create Date: 10/12/2020 08:00:03 PM
// Module Name: node
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module node(
    output vert_cout, horiz_cout,
    input vert_cin, horiz_cin, a, b
);

    wire w0;
    
    assign w0 = a&b;
    fulladder fa0(vert_cout , horiz_cout,vert_cin , w0 , horiz_cin);
endmodule
