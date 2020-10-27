`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:  Nick Tran 014682694
// Create Date: 10/12/2020 07:46:25 PM
// Module Name: ALU
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module ALU(
    input [6:0] A, B,
    input [1:0] opcode,
    output reg [7:0] AN,
    output CA,CB,CC,CD,CE,CF,CG,
    output reg [13:0] result
    );
    
    wire [7:0] add_out;
    wire [13:0] product_out;
    wire [13:0] sub_out; 
    wire [7:0] AN_out;
    wire [7:0] ca,cb,cc,cd,ce,cf,cg;
    
    
    //Instantiating modules
    seven_fulladder adder0(A,B,add_out);                       
    seven_multiplier multi0(A,B,product_out);
    seven_comparator comp0(A,B,AN_out,CA,CB,CC,CD,CE,CF,CG);
    seven_subtractor subt0(A,B,sub_out);
    
    //ALU case statment based on opcode input
    always @(*)
        begin
            case(opcode)
                2'b00 : //Seven bit ripple adder
                        begin
                            result = 14'b0;         //reset led display
                            result = add_out;       //display adder to LED's
                            AN = 8'b11111111;       //reset segement display
                        end
                2'b01 : //Seven bit subtractor
                        begin
                            result = 14'b0;         //reset led display
                            AN = 8'b11111111;       //reset segement display
                            result = sub_out;       //display subtractor to LED's
                        end                    
                2'b10 : //Seven bit comparator
                        begin
                            result = 14'b0;         //reset led display
                            AN = AN_out;            //turn on anode to set display 
                        end
                2'b11 : //Seven bit multiplier
                        begin
                            result = 14'b0;         //reset led display
                            AN = 8'b11111111;       //reset segement display
                            result = product_out;   //display multiplier to LED's
                        end                        
                default : 
                        result = 0;    
            endcase
        end
endmodule
