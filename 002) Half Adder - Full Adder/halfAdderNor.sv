`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 18.01.2025 16:30:54
// Design Name:
// Module Name: halfAdderNor
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


module halfAdderNor(
    input logic A,
    input logic B,
    output logic S,
    output logic Cout
  );

  // Ara sinyaller
  logic w1, w2, w3;

  //Cout için:
  nor (w1, A, A); // A'
  nor (w2, B, B); // B'
  nor (Cout, w1, w2);

  // S için:
  nor (w3, A, B);
  nor (S, Cout, w3);

endmodule
