`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2025 02:59:41
// Design Name: 
// Module Name: tb_d_flipflop
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


module tb_d_flipflop();
logic clk, reset, d, q;

d_flipflop d_flipflop_Inst(.*);

    always #5 clk <= ~clk; // Her 5ns de bir clk sinyalini değiştirir (tersini alır).

    initial begin
        clk = 0; // clk sinyalini başlangıçta 0 yapar.
        reset <= 1;
        d <= 0;

        #20
        reset <= 0; #10;
        d <= 1; #10;
        d <= 0; #10;
        d <= 1; #10;
        d <= 0; #10;
        d <= 1; #10;
        d <= 0;

        #50
        $stop;
    end
endmodule
