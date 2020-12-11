`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2020 07:02:14 PM
// Design Name: 
// Module Name: labH_part2
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


module labH_part2(
    input clk,
    output ca, cb, cc, cd, ce, cf, cg, dp,
    output [7:0] an 
    );
    
    reg [25:0] cnt; //26 bit counter
    
    always @(posedge clk)
        cnt<=cnt+26'h1;
        wire cntovrfl = &cnt;
        
    //Initial condition to display "HELLO"
    reg [8*4-1:0] BCL;
    initial
        begin
            BCL[ 3: 0] = 4'h3;  //0
            BCL[ 7: 4] = 4'h2;  //L
            BCL[11: 8] = 4'h2;  //L
            BCL[15:12] = 4'h1;  //E
            BCL[19:16] = 4'h0;  //H
            BCL[23:20] = 4'h4;  //
            BCL[27:24] = 4'h4;  //
            BCL[31:28] = 4'h4;  //
        end
        
     //Move letters through display
     /*
     Width of counter changes frequency of count overflow. 
     Wider width updates values slower. 
     */
     always @(posedge cntovrfl)
        begin
            BCL[ 3: 0] <= BCL[31:28];  
            BCL[ 7: 4] <= BCL[ 3: 0]; 
            BCL[11: 8] <= BCL[ 7: 4];  
            BCL[15:12] <= BCL[11: 8];  
            BCL[19:16] <= BCL[15:12];  
            BCL[23:20] <= BCL[19:16];  
            BCL[27:24] <= BCL[23:20];  
            BCL[31:28] <= BCL[27:24];  
        end
    
      // anode driver
      /*
      So where you wire digitScan to counter changes how fast the anode driver
      cycles through each anode. More significant bits means anodes are cycled through slower.
      Less significant bits means anode cycle through faster. Note - if you set too fast, anode 
      will cycle through faster than values can be updated so display will behave incorrectly.
      */
    wire [2:0] digitScan = cnt[16:14]; //changing this timing changes the display behavior
    
    assign an[0] = ~(digitScan==3'h0); 
    assign an[1] = ~(digitScan==3'h1);
    assign an[2] = ~(digitScan==3'h2);
    assign an[3] = ~(digitScan==3'h3);
    assign an[4] = ~(digitScan==3'h4);
    assign an[5] = ~(digitScan==3'h5);
    assign an[6] = ~(digitScan==3'h6);
    assign an[7] = ~(digitScan==3'h7);
    
    //multiplexer
    reg [3:0] BCLdigit;
    always @(*)
        case(digitScan)
            3'd0: BCLdigit = BCL[ 3: 0];
            3'd1: BCLdigit = BCL[ 7: 4];
            3'd2: BCLdigit = BCL[11: 8];
            3'd3: BCLdigit = BCL[15:12];
            3'd4: BCLdigit = BCL[19:16];
            3'd5: BCLdigit = BCL[23:20];
            3'd6: BCLdigit = BCL[27:24];
            3'd7: BCLdigit = BCL[31:28];
        endcase
        
    //7-segment decoder to letter
    reg [7:0] sevenseg;
    always@(*)
        case(BCLdigit)
            4'h0: sevenseg = 8'b01101110;   //"H"
            4'h1: sevenseg = 8'b10011110;   //"E"
            4'h2: sevenseg = 8'b00011100;   //"L"
            4'h3: sevenseg = 8'b11111100;   //"0"
            4'h4: sevenseg = 8'b00000000;   //""
            default: sevenseg = 8'b00000000;       //""
        endcase
    
    assign {ca, cb, cc, cd, ce, cf, cg, dp} = ~sevenseg;
    
endmodule
