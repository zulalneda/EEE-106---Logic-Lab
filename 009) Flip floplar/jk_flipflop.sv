`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2025 03:32:47
// Design Name: 
// Module Name: jk_flipflop
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


module jk_flipflop(
    input logic clk,
    input logic reset, // Reset sinyali
    input logic J,     // J girişi
    input logic K,     // K girişi
    output logic q
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            q <= 1'b0;  // Reset durumunda Q sıfırlanır
        end else begin
            case ({J, K})
                2'b10: q <= 1'b1;       // Set durumu
                2'b01: q <= 1'b0;       // Reset durumu
                2'b11: q <= ~q;         // Toggle durumu
                default: q <= q;        // Q değişmez
            endcase
        end
    end
endmodule
    

