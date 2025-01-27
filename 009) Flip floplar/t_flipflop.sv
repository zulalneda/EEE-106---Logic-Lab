`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2025 03:12:22
// Design Name: 
// Module Name: t_flipflop
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


module t_flipflop(
    input logic clk,
    input logic reset, // Reset sinyali
    input logic T,     // Toggle sinyali
    output reg q
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            q <= 1'b0;  // Reset durumunda Q sıfırlanır
        end else begin
            if (T) begin
                q <= ~q;  // Toggle durumu
            end
            //T = 0 ise Q değişmez
        end
    end
endmodule
