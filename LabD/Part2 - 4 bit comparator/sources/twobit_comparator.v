`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module twobit_comparator(G,E,L,A,B);
    input [1:0] A;
    input [1:0] B;
    output G, E, L;
    
    assign G = (A > B);
    assign E = (A == B);
    assign L = (A < B);
    
endmodule
