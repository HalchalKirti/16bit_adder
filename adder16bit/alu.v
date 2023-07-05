//behavioral modelling of alu
module alu (
    A,B,C,S,CY,ZE,OV,P
);
 input [15:0] A,B;
 output [15:0] C;
 output S,CY,ZE,OV,P;
 assign {CY,C}=A+B;
 assign S = C[15];
 assign ZE = ~|C;
 assign P = ~^C;
 assign OV = (A[15]&B[15]&~C[15])|(~A[15]&~B[15]&C[15]);

endmodule