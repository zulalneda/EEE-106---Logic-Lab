`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2025 17:37:05
// Design Name: 
// Module Name: calisma2
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


module calisma2(
    input logic A,
    input logic B,
    input logic C,
    output logic F
    );

    logic w1, w2; // ara sinyaller

    xnor(w1,A,B);
    and(w2,A,C);
    or(F,w1,w2);

    // assign F = (!A && !B) || (A && C) || (A && B);
    // assign F = (A !~ B) | (A & C);

endmodule
