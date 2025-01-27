`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2025 04:03:30
// Design Name: 
// Module Name: prority_encoder
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


module prority_encoder
#(
    parameter N = 4
)
(
    input logic [N-1:0] A,
    output logic [$clog2(N)-1:0] Y //bildiğimiz 2 tabanlı logaritmadır. Özellikle büyük bitlerle çalışırken sayıyı hesaplamamıza gerek kalmaz.
    );

    always_comb 
    begin
        priority case (A)
            4'b1000 : Y = 2'b11; // A[3]
            4'b0100 : Y = 2'b10; // A[2]
            4'b0010 : Y = 2'b01; // A[1]
            4'b0001 : Y = 2'b00; // A[0]
            default : Y = 2'b00;
        endcase
    end
endmodule
