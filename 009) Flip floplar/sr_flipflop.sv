`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2025 03:55:15
// Design Name: 
// Module Name: sr_flipflop
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


module sr_flipflop(
    input wire clk,
    input wire reset,
    input wire S,     
    input wire R,     
    output reg q
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            q <= 1'b0;  
        end else begin
            if (S && R) 
            begin
                // INVALID durumu: S ve R aynı anda 1
                q <= 1'b0; //INVALID durumu için tanımlı bir durum atayalım (0 verelim) ve tcl console'da hata mesajını yazsın.
                $display("ERROR: Invalid state (S = 1, R = 1) at time %t", $time);
            end 
            else if (S && !R) 
            begin
                q <= 1'b1;  // Set durumu
            end 
            else if (!S && R) 
            begin
                q <= 1'b0;  // Reset durumu
            end
            // S = 0 R = 0 ise Q değişmez
        end
    end
endmodule

