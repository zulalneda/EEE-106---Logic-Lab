`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2025 18:40:06
// Design Name: 
// Module Name: tb_calisma2
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


module tb_calisma2();
    logic A; // reg
    logic B; // reg
    logic C; // reg
    logic F; // wire

    calisma2 calisma2_Inst(.*); //hepsini bağladık.

    initial begin
        A = 1'b0; B = 1'b0; C = 1'b0; #10; 
        A = 1'b0; B = 1'b0; C = 1'b1; #10;
        A = 1'b0; B = 1'b1; C = 1'b0; #10;
        A = 1'b0; B = 1'b1; C = 1'b1; #10;
        A = 1'b1; B = 1'b0; C = 1'b0; #10;
        A = 1'b1; B = 1'b0; C = 1'b1; #10;
        A = 1'b1; B = 1'b1; C = 1'b0; #10;
        A = 1'b1; B = 1'b1; C = 1'b1; #10;

        // 1 -> 1 bit, b -> binary, 0,1 -> değer
        // #10 -> 10ns bekle
        $stop; // simülasyonu durdurur, olası hataları görmek için işlevlidir.
    end

endmodule
