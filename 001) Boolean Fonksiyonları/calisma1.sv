`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2025 16:31:34
// Design Name: 
// Module Name: calisma1
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

module calisma1(
    input logic A, //1 bit
    input logic B, //1 bit
    input logic C, //1 bit
    output logic F //1 bit
    );

    // Ara sinyaller
    logic Anot, Bnot, Cnot, w1, w2, w3, w4;
    
    not(Anot,A); // önce output(lar), ardından input(lar) yazılır.
    not(Bnot,B);
    not(Cnot,C);
    and(w1,Anot,Bnot); // A'B'
    and(w2,Bnot,Cnot); // B'C'
    and(w3,Anot,Cnot); // A'C'
    and(w4,A,B,C); // ABC
    or(F,w1,w2,w3,w4); // A'B' + B'C' + A'C' + ABC

    // assign F = ((!A && !B) || (!B && !C) || (!A && !C) || (A && B && C)); // A'B' + B'C' + A'C' + ABC
    // "assign" komutu kullanarak tek satırda da işi halledebiliriz.
endmodule