`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2025 19:17:20
// Design Name: 
// Module Name: tb_fourBitFullAdder
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


module tb_fourBitFullAdder();
    logic [3:0] A;
    logic [3:0] B;
    logic Cin;
    logic [3:0] S;
    logic Cout;

    fourBitFullAdder fourBitFullAdder_Inst(.*);

    initial begin

        A = 4'b0000;
        B = 4'b0000;
        Cin = 1'b0;
        
        /*
        Soruda istenilen toplam ifadeleri:
        a)	A = 0000 , B = 0000
        b)	A = 1010 , B = 0101
        c)	A = 1111  , B = 1111
        d)	A = 1001 , B = 0110
        */

        A = 4'b0000;
        B = 4'b0000;
        Cin = 1'b0;
        #100;
        $display("A = %b, B = %b, Cin = %b, S = %b, Cout = %b", A, B, Cin, S, Cout);
        // display ifadesi ile Tcl console aracılığıyla istenen çıktıları ekrana yazdırma işlemi gerçekleştirilir.

        A = 4'b1010;
        B = 4'b0101;
        Cin = 1'b0;
        #100;
        $display("A = %b, B = %b, Cin = %b, S = %b, Cout = %b", A, B, Cin, S, Cout);

        A = 4'b1111;
        B = 4'b1111;
        Cin = 1'b0;
        #100;
        $display("A = %b, B = %b, Cin = %b, S = %b, Cout = %b", A, B, Cin, S, Cout);

        A = 4'b1001;
        B = 4'b0110;
        Cin = 1'b0;
        #100;
        $display("A = %b, B = %b, Cin = %b, S = %b, Cout = %b", A, B, Cin, S, Cout);

        $stop;
    end
endmodule
