`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2025 22:25:24
// Design Name: 
// Module Name: tb_two_bit_comparator
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


module tb_two_bit_comparator();
logic [1:0] musteri1;
logic [1:0] musteri2;
logic kirmizi; 
logic yesil;   
logic sari;    


two_bit_comparator two_bit_comparator_Inst(.*);

initial begin
    musteri1 = 2'b00;
    musteri2 = 2'b00;
    #10;

    for (int i = 0; i < 4; i++) 
    begin
        for (int j = 0; j < 4; j++) 
        begin
            musteri1 = i;
            musteri2 = j;
            #10;
            $display("Musteri 1: %b, Musteri 2: %b, Kirmizi: %b, Yesil: %b, Sari: %b",musteri1, musteri2, kirmizi, yesil, sari);
        end
    end

    $stop;
end
endmodule

