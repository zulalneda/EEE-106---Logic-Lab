`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.01.2025 20:08:38
// Design Name: 
// Module Name: bcd_to_7_segment_decoder
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


module bcd_to_7_segment_decoder(
    input logic [3:0] d_in,
    output logic [6:0] d_out
    );

    always_comb
    begin
        case(d_in)
            4'b0000: d_out = 7'b1111110; //0
            4'b0001: d_out = 7'b0110000; //1
            4'b0010: d_out = 7'b1101101; //2
            4'b0011: d_out = 7'b1111001; //3
            4'b0100: d_out = 7'b0110011; //4
            4'b0101: d_out = 7'b1011011; //5
            4'b0110: d_out = 7'b1011111; //6
            4'b0111: d_out = 7'b1110000; //7
            4'b1000: d_out = 7'b1111111; //8
            4'b1001: d_out = 7'b1111011; //9
            default: d_out = 7'b0000000; 
        endcase
    end
endmodule
