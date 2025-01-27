`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 24.01.2025 20:49:45
// Design Name:
// Module Name: tb_devre_tasarimi_mux
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


module tb_devre_tasarimi_mux
#(
   parameter N = 2
 );

logic [N-1:0] C;
logic [N-1:0] D;
logic [1:0] opcode;
logic [N-1:0] F;

devre_tasarimi_mux
  #(
    .N(N)
  )
  devre_tasarimi_mux_Inst(.*);

initial begin
  for (int i = 0; i < 4; i++) begin // opcode için döngü (00, 01, 10, 11)
    opcode = i;
    case (opcode)
      2'b00: begin
        C = 2'b00; // I0
        D = 2'b11;
      end
      2'b01: begin
        C = 2'b01; // I1
        D = 2'b10;
      end
      2'b10: begin
        C = 2'b10; // I2
        D = 2'b01;
      end
      2'b11: begin
        C = 2'b11; // I3
        D = 2'b00;
      end
    endcase
    #10;
    $display("opcode : %b, C : %b, D : %b --> F : %b", opcode, C, D, F);
  end
end
endmodule
