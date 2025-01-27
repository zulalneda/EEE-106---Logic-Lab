`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 18.01.2025 16:09:46
// Design Name:
// Module Name: halfAdderNand
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


module halfAdderNand(
    input logic A,
    input logic B,
    output logic S,
    output logic Cout
  );
  // Ara Sinyaller
  logic w1, w2, w3, w4, w1c;
  nand(w1,A,A); // A'
  nand(w2,B,B); // B'
  nand(w3,w1,B); // (A + B')
  nand(w4,w2,A); // (B + A')
  nand(S,w3,w4); // S = ((A + B') . (B + A'))'

  nand(w1c,A,B);
  nand(Cout,w1c);

endmodule
