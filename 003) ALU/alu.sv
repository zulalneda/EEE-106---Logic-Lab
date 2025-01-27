`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2025 15:43:46
// Design Name: 
// Module Name: alu
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


module alu
#(
      parameter N = 4 //giriş-çıkışlarının kaç bitlik olacağını dinamik olarak ayarlamayı sağlar
 )
 (
   input logic [N-1:0] A,
   input logic [N-1:0] B,
   input logic [2:0] opcode, //ALU'nun hangi işlemi gerçekleştireceğini belirten bir kontrol sinyalidir.
   output logic [N-1:0] Y

 );

 always_comb
 begin
      case(opcode)
          0: Y = A + B; // toplama
          1: Y = A - B; // çıkarma
          2: Y = A + 1; // increase (artırma)
          3: Y = A - 1; // decrease (azaltma)
          4: Y = ~A; // tersi (invert)
          5: Y = A & B; // ve
          6: Y = A | B; // veya
          7: Y = A ^ B; // xor
          default: Y = '0; //case yapısında belirtilmeyen bir opcode değeri geldiğinde devrenin nasıl davranacağını tanımlar.
      endcase
 end
endmodule
