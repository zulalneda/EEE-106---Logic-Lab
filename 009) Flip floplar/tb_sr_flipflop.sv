`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2025 04:01:49
// Design Name: 
// Module Name: tb_sr_flipflop
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


module tb_sr_flipflop();
logic clk, reset, S, R, q;

// SR flip-flop instance
sr_flipflop sr_flipflop_Inst(.*);

always #5 clk <= ~clk; // 5 ns'de bir clk sinyalini değiştir.

initial begin
    clk = 0; // clk sinyalini başlangıçta 0 yapar.
    reset <= 1;
    S <= 0;
    R <= 0;

    #20
    reset <= 0; #10; // Reset kaldırılır.
    S <= 1; R <= 0; #10; // Set durumu
    S <= 0; R <= 1; #10; // Reset durumu
    S <= 0; R <= 0; #10; // No change durumu
    S <= 1; R <= 1; #10; // Invalid durumu (SR flip-flop için geçersizdir.)
    S <= 1; R <= 0; #10; // Set durumu
    S <= 0; R <= 1; #10; // Reset durumu

    #50
    $stop; // Simülasyonu sonlandır.
end
endmodule

