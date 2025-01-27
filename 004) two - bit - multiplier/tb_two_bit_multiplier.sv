`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2025 18:34:41
// Design Name: 
// Module Name: tb_two_bit_multiplier
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


module tb_two_bit_multiplier();
    logic [1:0] A;
    logic [1:0] B;
    logic [3:0] P;

    two_bit_multiplier two_bit_multiplier_Inst(.*);

    initial begin
        A = 2'b00;
        B = 2'b00;
        #10;

        for (int i = 0; i < 4; i++) 
        begin
            for (int j = 0; j < 4; j++) 
            begin
                A = i;
                B = j;
                #10;
                $display("A = %b . B = %b = P = %b", A, B, P);
            end
        end

        $stop;
    end
endmodule
