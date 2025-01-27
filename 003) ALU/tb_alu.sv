`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2025 15:51:09
// Design Name: 
// Module Name: tb_alu
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


module tb_alu
#(
    parameter N = 8
);

logic [N-1:0] A;
logic [N-1:0] B;
logic [2:0] opcode;
logic [N-1:0] Y;

alu
#(
    .N(N)
)

alu_Inst
(
    .A(A),
    .B(B),
    .opcode(opcode),
    .Y(Y)
);

initial begin
    #5;
    A = 73;
    B = 42;

    for(int i = 0; i < 8; i++)
    begin
        opcode = i;
        #10;
    end
end
endmodule
