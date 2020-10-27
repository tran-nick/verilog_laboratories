`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:  Nick Tran 014682694
// Create Date: 10/12/2020 08:45:53 PM
// Module Name: seg_display
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module seg_display(
    input [2:0] GEL,
    output [7:0] AN,
    output CA,CB,CC,CD,CE,CF,CG
    );
    
    wire [6:0] led_out;
    
    assign AN = 0;
    //instantaite decode to handle actual LED assertions
    GEL2LED decod0(GEL,led_out);
    assign {CA,CB,CC,CD,CE,CF,CG} = led_out;
endmodule
