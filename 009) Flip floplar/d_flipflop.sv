`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2025 02:40:24
// Design Name: 
// Module Name: d_flipflop
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


module d_flipflop(
    input clk,
    input reset,
    input d,
    output reg q // reg ifadesi çıkış değerinin bir değer tutabileceğini belirtir. sequential logic için ve always blokları için kullanılır.

    );

    // always@() yapısı sequrntial logic için kullanılır.
    // sequential yapılarda = değil <= kullanılır. Bunun sebebi tüm ifadeleri eş zamanlı çalıştırmasıdır. 
    always @(posedge clk or posedge reset) begin // yükselen kenarda çallışır.
        if(reset) begin
            q <= 1'b0; 
        end
        else begin
            q <= d;
        end
    end
 
endmodule
