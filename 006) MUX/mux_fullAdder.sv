`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 25.01.2025 00:09:48
// Design Name:
// Module Name: mux_fullAdder
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


module mux_fullAdder

  (
    input logic A,B,
    input logic Cin,
    output logic Sum,
    output logic C
  );

  logic [1:0] opcode;
  assign opcode = {A,B}; //opcode [1] = A, opcode [0] = B

  always_comb 
  begin : toplam
     case (opcode)
        2'b00: Sum = Cin;
        2'b01: Sum = ~Cin;
        2'b10: Sum = ~Cin;
        2'b11: Sum = Cin;
        default: Sum = '0;
     endcase   
  end

  always_comb
  begin : elde
        case(opcode)
            2'b00: C = 0;
            2'b01: C = Cin;
            2'b10: C = Cin;
            2'b11: C = 1;
            default: C = 0;
        endcase
  end
endmodule
