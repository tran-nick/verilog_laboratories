`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2020 10:39:08 AM
// Design Name: 
// Module Name: processor
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


module processor(
    input [15:0] DIN,
    input Resetn, Clock, Run,
    output reg Done,
    output reg [15:0] BusWires
    );
    
//Declare Parameters//////////////////////////////////////////
parameter MV = 3'h0;
parameter MVI = 3'h1;
parameter ADD = 3'h2;
parameter SUB = 3'h3;
parameter T0 = 2'b00;
parameter T1 = 2'b01;
parameter T2 = 2'b10;
parameter T3 = 2'b11;
parameter TRUE = 1'b1;
parameter FALSE = 1'b0;
parameter CLEAR = 1'b0;
parameter DIN_OUT = 2'b00;
parameter GOUT = 2'b01;
parameter RXOUT = 2'b10;
parameter RYOUT = 2'b11;
parameter OP_ADD = 1'b0;
parameter OP_SUB = 1'b1;
parameter WRITE = TRUE;
parameter REG_RESET = 8'b11111111;

//Declare variables//////////////////////////////////////////
reg IRin, Ain, Gin;
reg [1:0] BUS;
reg [7:0] Rin;
reg AddSub;



//Once upcount help control unit step through instruction, 
//Done is asserted to reset counter for next instruction cycle
wire Clear = Done | ~Resetn | ~Run&~Tstep_Q[0]&~Tstep_Q[1];
//wire out from registers  
wire [7:0] Xreg, Yreg; 
wire [8:0] IR;
wire [15:0] R0,R1,R2,R3,R4,R5,R6,R7;    
wire [15:0] A, G, addsub_output;
wire [1:0] Tstep_Q;
wire [2:0] Instruction;

upcount Tstep(Clear,Clock,Tstep_Q);
assign Instruction = IR[8:6];
//Decode 3 bit IR value to 8 bit register address
dec3to8 decX(IR[5:3],1'b1,Xreg);   
dec3to8 decY(IR[2:0],1'b1,Yreg);

addsub mux0(A,BusWires,AddSub,addsub_output);

//Control Unit
always@(Tstep_Q or Instruction or Xreg or Yreg)
begin   
//Initial values
Done = FALSE;

//Empty registers
BUS = DIN_OUT;
Rin = 0;
IRin = CLEAR; 
Ain = CLEAR;
Gin = CLEAR;
AddSub = CLEAR;

    
//Refer to Table 2. Control signals asserted in each instruction/time step.
    case(Tstep_Q)
        T0 : //Store DIN in IR in time step 0
        begin
            IRin = WRITE;
        end 
        T1 : //Time step 1
        case(Instruction)
            MV : 
                begin
                    Rin = Xreg; 
                    BUS = RYOUT;
                    Done = TRUE;
                end
            MVI : 
                begin
                    Rin = Xreg;
                    BUS = DIN_OUT;
                    Done = TRUE;
                end
            ADD : 
                begin
                    BUS = RXOUT;
                    Ain = WRITE;
                end
            SUB : 
                begin
                    BUS = RXOUT;
                    Ain = WRITE;
                end
       endcase   
       T2 : //Time step 2
       case(Instruction)
            ADD : 
                begin
                    AddSub = OP_ADD;
                    BUS = RYOUT;
                    Gin = WRITE;
                end
            SUB : 
                begin
                    AddSub = OP_SUB;
                    BUS = RYOUT;
                    Gin = WRITE;
                end
      endcase                  
      T3 : //Time step 3
      case(Instruction)
            ADD : 
                begin
                    BUS = GOUT;
                    Rin = Xreg;
                    Done = TRUE;
                end
            SUB : 
                begin
                    BUS = GOUT;
                    Rin = Xreg;
                    Done = TRUE;
                end
      endcase 
    endcase
end  

//Instantiating the registers R0 - R7
regn reg_0(BusWires,Rin[0],Clock,R0);
regn reg_1(BusWires,Rin[1],Clock,R1);
regn reg_2(BusWires,Rin[2],Clock,R2);
regn reg_3(BusWires,Rin[3],Clock,R3);
regn reg_4(BusWires,Rin[4],Clock,R4);
regn reg_5(BusWires,Rin[5],Clock,R5);
regn reg_6(BusWires,Rin[6],Clock,R6);
regn reg_7(BusWires,Rin[7],Clock,R7);

//Instantiating the registers A & G
regn reg_A(BusWires,Ain,Clock,A);
regn reg_G(addsub_output,Gin,Clock,G);

//Instantiating the registers IR, 9 bit width
regn #(.n(9)) reg_IR(DIN[15:7],IRin,Clock,IR);  //IR connected to 9 MSB of DIN

//Define the bus - BUS signal controlled by CU
always@(*)
    case(BUS)
        DIN_OUT : BusWires <= DIN;  //Write DIN register to bus
        GOUT : BusWires <= G;       //Write G register to bus
        RXOUT :                     //Write X register to bus
        case(Xreg)
            8'b00000001 : BusWires = R0;
            8'b00000010 : BusWires = R1;
            8'b00000100 : BusWires = R2;
            8'b00001000 : BusWires = R3;
            8'b00010000 : BusWires = R4;
            8'b00100000 : BusWires = R5;
            8'b01000000 : BusWires = R6;
            8'b10000000 : BusWires = R7;
        endcase
        RYOUT : //Write Y register to bus
        case(Yreg)
            8'b00000001 : BusWires = R0;
            8'b00000010 : BusWires = R1;
            8'b00000100 : BusWires = R2;
            8'b00001000 : BusWires = R3;
            8'b00010000 : BusWires = R4;
            8'b00100000 : BusWires = R5;
            8'b01000000 : BusWires = R6;
            8'b10000000 : BusWires = R7;
        endcase    
    endcase
endmodule
