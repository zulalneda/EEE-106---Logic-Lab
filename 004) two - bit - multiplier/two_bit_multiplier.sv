`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 20.01.2025 17:57:32
// Design Name:
// Module Name: two_bit_multiplier
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


module two_bit_multiplier(
    input logic [1:0] A,
    input logic [1:0] B,
    output logic [3:0] P
  );

  // Ara sinyaller
  logic A0B0, A0B1, A1B0, A1B1; // Ara sonuçlar
  logic R0, R1, R2, C1, C2; // Toplam ve elde bitleri

  assign A0B0 = A[0] && B[0];
  assign A0B1 = A[0] && B[1];
  assign A1B0 = A[1] && B[0];
  assign A1B1 = A[1] && B[1];

  assign R0 = A0B0;

  // R1 = A1B0 + A0B1 , ilk half adder

  halfAdder halfAdder_Inst1(
              .A(A1B0),
              .B(A0B1),
              .S(R1),
              .Cout(C1)
            );

  // R2 = A1B1 + C1 , ikinci half adder

  halfAdder halfAdder_Inst(
              .A(A1B1),
              .B(C1),
              .S(R2),
              .Cout(C2)
            );

  assign P[0] = R0;
  assign P[1] = R1;
  assign P[2] = R2;
  assign P[3] = C2; // R3 = C2



endmodule
