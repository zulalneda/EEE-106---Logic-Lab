`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2025 01:01:26
// Design Name: 
// Module Name: tb_mux_fullAdder
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


module tb_mux_fullAdder();
    logic A;
    logic B;
    logic Cin;
    logic Sum;
    logic C;

    mux_fullAdder mux_fullAdder_Inst(.*);

    initial begin
        for(int i = 0; i < 8; i++)
        begin
            {A,B,Cin} = i; // toplu yazımlar için "{}"
            #10;
            $display("A = %b, B = %b, Cin = %b --> Sum = %b, Carry out = %b", A, B, Cin, Sum, C);
        end

        $finish;
    end
endmodule
