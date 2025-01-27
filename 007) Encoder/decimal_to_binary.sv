`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2025 22:27:43
// Design Name: 
// Module Name: decimal_to_binary
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


module decimal_to_binary (
    input  logic [9:0] I,
    output logic [3:0] Y
);

    always_comb begin
        case (I)
            10'b0000000001: Y = 4'd0;
            10'b0000000010: Y = 4'd1;
            10'b0000000100: Y = 4'd2;
            10'b0000001000: Y = 4'd3;
            10'b0000010000: Y = 4'd4;
            10'b0000100000: Y = 4'd5;
            10'b0001000000: Y = 4'd6;
            10'b0010000000: Y = 4'd7;
            10'b0100000000: Y = 4'd8;
            10'b1000000000: Y = 4'd9;
            default: Y = 4'd0;
        endcase

    end

endmodule

