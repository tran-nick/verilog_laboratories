`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:  Nick Tran 014682694
// Create Date: 10/12/2020 08:01:22 PM
// Module Name: seven_multiplier
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module seven_multiplier(
    input [6:0] a, b,
    output [13:0] product
);

    wire ground;
    wire h0,h1,h2,h3,h4,h5,h6;
    wire v0,v1,v2,v3,v4,v5,v6;
    
    assign ground = 0;
    
     //first row
    //input order - vin, hin
    node n0(v0,h0,ground,ground,a[0],b[0]);
    node n1(v1,h1,ground,h0,a[1],b[0]);
    node n2(v2,h2,ground,h1,a[2],b[0]);
    node n3(v3,h3,ground,h2,a[3],b[0]);
    node n4(v4,h4,ground,h3,a[4],b[0]);
    node n5(v5,h5,ground,h4,a[5],b[0]);
    node n6(v6,h6,ground,h5,a[6],b[0]);
    
    wire h7,h8,h9,h10,h11,h12,h13;
    wire v7,v8,v9,v10,v11,v12,v13;
    
    node n7(v7,h7,v1,ground,a[0],b[1]);
    node n8(v8,h8,v2,h7,a[1],b[1]);
    node n9(v9,h9,v3,h8,a[2],b[1]);
    node n10(v10,h10,v4,h9,a[3],b[1]);
    node n11(v11,h11,v5,h10,a[4],b[1]);
    node n12(v12,h12,v6,h11,a[5],b[1]);
    node n13(v13,h13,h6,h12,a[6],b[1]);
    
    wire h14,h15,h16,h17,h18,h19,h20;
    wire v14,v15,v16,v17,v18,v19,v20;
    
    node n14(v14,h14,v8,ground,a[0],b[2]);
    node n15(v15,h15,v9,h14,a[1],b[2]);
    node n16(v16,h16,v10,h15,a[2],b[2]);
    node n17(v17,h17,v11,h16,a[3],b[2]);
    node n18(v18,h18,v12,h17,a[4],b[2]);
    node n19(v19,h19,v13,h18,a[5],b[2]);
    node n20(v20,h20,h13,h19,a[6],b[2]);
    
    wire h21,h22,h23,h24,h25,h26,h27;
    wire v21,v22,v23,v24,v25,v26,v27;
    
    node n21(v21,h21,v15,ground,a[0],b[3]);
    node n22(v22,h22,v16,h21,a[1],b[3]);
    node n23(v23,h23,v17,h22,a[2],b[3]);
    node n24(v24,h24,v18,h23,a[3],b[3]);
    node n25(v25,h25,v19,h24,a[4],b[3]);
    node n26(v26,h26,v20,h25,a[5],b[3]);
    node n27(v27,h27,h20,h26,a[6],b[3]);
    
    wire h28,h29,h30,h31,h32,h33,h34;
    wire v28,v29,v30,v31,v32,v33,v34;
    
    node n28(v28,h28,v22,ground,a[0],b[4]);
    node n29(v29,h29,v23,h28,a[1],b[4]);
    node n30(v30,h30,v24,h29,a[2],b[4]);
    node n31(v31,h31,v25,h30,a[3],b[4]);
    node n32(v32,h32,v26,h31,a[4],b[4]);
    node n33(v33,h33,v27,h32,a[5],b[4]);
    node n34(v34,h34,h27,h33,a[6],b[4]);
    
    wire h35,h36,h37,h38,h39,h40,h41;
    wire v35,v36,v37,v38,v39,v40,v41;
    
    node n35(v35,h35,v29,ground,a[0],b[5]);
    node n36(v36,h36,v30,h35,a[1],b[5]);
    node n37(v37,h37,v31,h36,a[2],b[5]);
    node n38(v38,h38,v32,h37,a[3],b[5]);
    node n39(v39,h39,v33,h38,a[4],b[5]);
    node n40(v40,h40,v34,h39,a[5],b[5]);
    node n41(v41,h41,h34,h40,a[6],b[5]);
    
    wire h42,h43,h44,h45,h46,h47,h48;
    wire v42,v43,v44,v45,v46,v47,v48;
    
    node n42(v42,h42,v36,ground,a[0],b[6]);
    node n43(v43,h43,v37,h42,a[1],b[6]);
    node n44(v44,h44,v38,h43,a[2],b[6]);
    node n45(v45,h45,v39,h44,a[3],b[6]);
    node n46(v46,h46,v40,h45,a[4],b[6]);
    node n47(v47,h47,v41,h46,a[5],b[6]);
    node n48(v48,h48,h41,h47,a[6],b[6]);
    
    assign product[0] = v0;
    assign product[1] = v7;
    assign product[2] = v14;
    assign product[3] = v21;
    assign product[4] = v28;
    assign product[5] = v35;
    assign product[6] = v42;
    assign product[7] = v43;
    assign product[8] = v44;
    assign product[9] = v45;
    assign product[10] = v46;
    assign product[11] = v47;
    assign product[12] = v48;
    assign product[13] = h48;
  
endmodule
