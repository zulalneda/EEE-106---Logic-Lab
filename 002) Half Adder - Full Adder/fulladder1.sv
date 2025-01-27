`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2025 18:57:18
// Design Name: 
// Module Name: fulladder1
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


module fulladder1(
    input logic A,
    input logic B,
    input logic Cin,    
    output logic S,    
    output logic Cout   
    );

    logic S1, C1, C2;

    // İlk Half Adder
    halfAdder halfAdder_Inst0 (
        .A(A),
        .B(B),
        .S(S1),
        .Cout(C1)
    );

    // İkinci Half Adder
    halfAdder halfAdder_Inst1 (
        .A(S1),
        .B(Cin),
        .S(S),
        .Cout(C2)
    );

    // Toplam elde
    assign Cout = C1 || C2; // Carry-out = Carry1 OR Carry2
endmodule
