`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 25.01.2025 04:46:30
// Design Name:
// Module Name: tb_prority_encoder
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


module tb_prority_encoder
  #(
     parameter N = 4
   );


  logic [N-1:0] A;
  logic [$clog2(N)-1:0] Y;

    prority_encoder 
    #(
        .N(N)
    ) 

    priority_encoder_Inst
    (
        .A(A),
        .Y(Y)
    );
  initial begin

    A = 4'b1000; #10; $display("A : %b , Y : %b", A, Y); // Y = 2'b11
    A = 4'b0100; #10; $display("A : %b , Y : %b", A, Y); // Y = 2'b10
    A = 4'b0010; #10; $display("A : %b , Y : %b", A, Y); // Y = 2'b01
    A = 4'b0001; #10; $display("A : %b , Y : %b", A, Y); // Y = 2'b00
    A = 4'b0000; #10; $display("A : %b , Y : %b", A, Y); // Y = 2'b00 (default)

    $finish;
  end

endmodule

