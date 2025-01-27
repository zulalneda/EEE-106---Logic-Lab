`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2025 16:22:29
// Design Name: 
// Module Name: tb_halfAdderNand
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


module tb_halfAdderNand();
    logic A;
    logic B;
    logic S;
    logic Cout;

    halfAdderNand halfAdderNand_Inst(.*);
    initial begin
        A = 1'b0; B = 1'b0; #10;
        A = 1'b0; B = 1'b1; #10;
        A = 1'b1; B = 1'b0; #10;
        A = 1'b1; B = 1'b1; #10;

        $stop;
    end
endmodule
