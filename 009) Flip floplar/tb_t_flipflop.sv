`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2025 03:24:15
// Design Name: 
// Module Name: tb_t_flipflop
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


module tb_t_flipflop();
logic clk, reset, T, q;

t_flipflop t_flipflop_Inst(.*);

    always #5 clk <= ~clk; // Her 5ns de bir clk sinyalini değiştirir (tersini alır).

    initial begin
        clk = 0; // clk sinyalini başlangıçta 0 yapar.
        reset <= 1;
        T <= 0;

        #20
        reset <= 0; #10;
        T <= 1; #10;
        T <= 0; #10;
        T <= 1; #10;
        T <= 0; #10;
        T <= 1; #10;
        T <= 0;

        #50
        $stop;
    end
endmodule
