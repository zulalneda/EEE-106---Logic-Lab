`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 24.01.2025 19:47:16
// Design Name:
// Module Name: devre_tasarimi_mux
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


module devre_tasarimi_mux
  #(
     parameter N = 2
   )
   (
     input logic [N-1:0] C,
     input logic [N-1:0] D,
     input logic [1:0] opcode,
     output logic [N-1:0] F

   );

    always_comb 
    begin : mux
        case(opcode)
            0: F = ~C & D; 
            1: F = ~C | D;
            2: F = ~C & D;
            3: F = ~C;
            default: F = '0;
        endcase
    end
endmodule
