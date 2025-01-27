`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2025 03:42:28
// Design Name: 
// Module Name: tb_jk_flipflop
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


module tb_jk_flipflop();
logic clk, reset, J, K, q;

jk_flipflop jk_flipflop_Inst(.*); 

always #5 clk <= ~clk; 

initial begin
    clk = 0; 
    reset <= 1; 
    J <= 0;
    K <= 0;

    #20
    reset <= 0; #10; // Reset kaldırılır.
    J <= 1; K <= 0; #10; // Set durumu
    J <= 0; K <= 1; #10; // Reset durumu
    J <= 1; K <= 1; #10; // Toggle durumu
    J <= 0; K <= 0; #10; // No change durumu
    J <= 1; K <= 1; #10; // Toggle durumu
    J <= 1; K <= 0; #10; // Set durumu
    J <= 0; K <= 1; #10; // Reset durumu

    #50
    $stop; 
end
endmodule

