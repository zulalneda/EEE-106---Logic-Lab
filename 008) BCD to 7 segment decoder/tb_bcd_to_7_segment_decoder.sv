`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.01.2025 20:28:45
// Design Name: 
// Module Name: tb_bcd_to_7_segment_decoder
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


module tb_bcd_to_7_segment_decoder();
    logic [3:0] d_in;
    logic [6:0] d_out;

    bcd_to_7_segment_decoder bcd_to_7_segment_decoder(.*);

    initial begin
        for(int i = 0; i<10; i++)
        begin
            d_in = i;
            #10;
            $display("d_in: %d --> d_out: %b",d_in, d_out); // inputları decimal olarak görelim
        end
        $finish;
    end    
    
endmodule
