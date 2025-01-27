`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 18.01.2025 18:09:59
// Design Name:
// Module Name: fourBitFullAdder
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


module fourBitFullAdder(
    input logic [3:0] A,
    input logic [3:0] B,
    input logic Cin, // Elde girişi
    output logic [3:0] S,
    output logic Cout // final elde çıkışı
  );

  /* bugüne kadar hep 1 bitlik ifadelerle çalıştığımız için [x:0] şeklinde bit sayısını ifade eden gösterim kullanmadık.
  Çok bitli ifadelerle çalışmak istiyorsak [x:0] şeklinde bit sayısını ifade eden gösterim kullanmamız gerekmektedir.
  */

  logic [3:0] C; // Ara elde sinyali

  // LSB
  fulladder1 fulladder1_Inst0
            (
              .A(A[0]), //A bitinin LSB bitini çağırdık.
              .B(B[0]),
              .Cin(Cin),
              .S(S[0]),
              .Cout(C[0])
            );

  fulladder1 fulladder1_Inst1
            (
              .A(A[1]),
              .B(B[1]),
              .Cin(C[0]),
              .S(S[1]),
              .Cout(C[1])
            );

  fulladder1 fulladder1_Inst2
            (
              .A(A[2]),
              .B(B[2]),
              .Cin(C[1]),
              .S(S[2]),
              .Cout(C[2])
            );

  //MSB
  fulladder1 fulladder1_Inst3
            (
              .A(A[3]),
              .B(B[3]),
              .Cin(C[2]),
              .S(S[3]),
              .Cout(Cout)
            );


endmodule
