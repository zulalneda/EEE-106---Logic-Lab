`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2025 21:59:00
// Design Name: 
// Module Name: two_bit_comparator
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


module two_bit_comparator(
    input logic [1:0] musteri1, // A1A0
    input logic [1:0] musteri2, // B1B0
    output logic kirmizi,
    output logic yesil,
    output logic sari
    );

    //Ara sinyaller
    logic w1, w2, w3; //müşteri 1 < müşteri 2 / yeşil
    logic w4, w5; //müşteri 1 = müşteri 2 / sarı
    logic w6, w7, w8; //müşteri 1 > müşteri 2 / kırmızı

    //Kırmızı
    assign w6 = (musteri1[1] && !musteri2[1]);
    assign w7 = (musteri1[0] && !musteri2[1] && !musteri2[0]);
    assign w8 = (musteri1[1] && musteri1[0] && !musteri2[0]);
    assign kirmizi = w6 || w7 || w8;

    // Sarı
    assign w4 = !(musteri1[0] ^ musteri2[0]);
    assign w5 = !(musteri1[1] ^ musteri2[1]);
    assign sari = w4 && w5;
    
    //Yeşil
    assign w1 = (!musteri1[1] && musteri2[1]);
    assign w2 = (!musteri1[1] && !musteri1[0] && musteri2[0]);
    assign w3 = (!musteri1[0] && musteri1[1] && musteri2[0]);
    assign yesil = w1 || w2 || w3;
endmodule
