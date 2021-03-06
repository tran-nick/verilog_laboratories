`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2020 07:45:33 PM
// Design Name: 
// Module Name: labA2_tb
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

 
module labA2_tb;
    reg A , B , Cin;    //connects to inputs to circuit under test. "reg" to assign values to
    wire Cout , Sum;    //connects to outputs of circuit under test
    
    //design under test (dut)
    //wrapper that ties inputs / outputs of design source to reg / wire of testbench
    //syntax is .designsource_variable(testbench_variable) with comma between each 
    labA2 dut(
    .A(A), 
    .B(B), 
    .Cin(Cin), 
    .Co(Cout), 
    .S(Sum)
    );
    
    initial 
        begin
            //for 50 units time, set respective values
            #50 A = 0 ; B = 0; Cin = 0; //0
            #50 A = 0 ; B = 0; Cin = 1; //1
            #50 A = 0 ; B = 1; Cin = 0; //2
            #50 A = 0 ; B = 1; Cin = 1; //3
            #50 A = 1 ; B = 0; Cin = 0; //4
            #50 A = 1 ; B = 0; Cin = 1; //5
            #50 A = 1 ; B = 1; Cin = 0; //6
            #50 A = 1 ; B = 1; Cin = 1; //7
        
        end
    
endmodule
