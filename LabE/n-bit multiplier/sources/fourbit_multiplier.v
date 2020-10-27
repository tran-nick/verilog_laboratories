`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2020 12:42:18 PM
// Design Name: 
// Module Name: fourbit_multiplier
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

module fourbit_multiplier(
    output [7:0] product,
    output [7:0] led,
    input [3:0] a, b
    );
    
    wire ground;
    wire h0,v0,h1,v1,h2,v2,h3,v3;
    wire h4,v4,h5,v5,h6,v6,h7,v7;
    wire h8,v8,h9,v9,h10,v10,h11,v11;
    wire h12,v12,h13,v13,h14,v14,h15,v15;
    
    assign ground = 0;
    swt2led dec0(led[7:4],a);
    swt2led dec1(led[3:0],b);

    //first row
    //input order - vin, hin
    node1 n0(v0,h0,ground,ground,a[0],b[0]);
    node1 n1(v1,h1,ground,h0,a[1],b[0]);
    node1 n2(v2,h2,ground,h1,a[2],b[0]);
    node1 n3(v3,h3,ground,h2,a[3],b[0]);
    
    assign product[0] = v0;
    
    //second row
    node1 n4(v4,h4,v1,ground,a[0],b[1]);
    node1 n5(v5,h5,v2,h4,a[1],b[1]);
    node1 n6(v6,h6,v3,h5,a[2],b[1]);
    node1 n7(v7,h7,h3,h6,a[3],b[1]);
    
    assign product[1] = v4;
    
    //third row
    node1 n8(v8,h8,v5,ground,a[0],b[2]);
    node1 n9(v9,h9,v6,h8,a[1],b[2]);
    node1 n10(v10,h10,v7,h9,a[2],b[2]);
    node1 n11(v11,h11,h7,h10,a[3],b[2]);
    
    assign product[2] = v8;
    
    //fourth row
    node1 n12(v12,h12,v9,ground,a[0],b[3]);
    node1 n13(v13,h13,v10,h12,a[1],b[3]);
    node1 n14(v14,h14,v11,h13,a[2],b[3]);
    node1 n15(v15,h15,h11,h14,a[3],b[3]);
    
    assign product[3] = v12;
    assign product[4] = v13;
    assign product[5] = v14;
    assign product[6] = v15;
    assign product[7] = h15;
    
    
endmodule
