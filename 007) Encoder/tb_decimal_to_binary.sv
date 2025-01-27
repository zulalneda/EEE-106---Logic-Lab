`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.01.2025 03:06:57
// Design Name: 
// Module Name: tb_decimal_to_binary
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


module tb_decimal_to_binary();
    logic [9:0] I;
    logic [3:0] Y;

    decimal_to_binary decimal_to_binary(.*);

    initial begin
        for (int i = 0; i < 10; i++) begin
            I = 1 << i;  // Sadece bir biti 1 yap
            #10;
            $display("I = %b --> Y = %d", I, Y);
        end
        $finish;
    end
    
endmodule
