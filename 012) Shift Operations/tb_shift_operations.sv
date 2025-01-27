`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 27.01.2025 08:42:28
// Design Name:
// Module Name: tb_shift_operations
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


module tb_shift_operations();

  logic signed [7:0] d_in;
  logic [2:0] sel;
  logic [2:0] shift_count;
  logic signed [7:0] d_out;

  shift_operations shift_operations_Inst
                   (
                     .d_in(d_in),
                     .sel(sel),
                     .shift_count(shift_count),
                     .d_out(d_out)
                   );

  logic [7:0] result_vector [0:7] = // ilk [7:0] dizideki elemanların bit sayısını verir.
        // ikinci [0:7] ise kaç tane eleman olduğunu belirtir.
        {
          8'b10011101,
          8'b01110100,
          8'b01110100,
          8'b00100111,
          8'b11100111,
          8'b01110110,
          8'b01100111,
          8'b10011101

        };

  initial
  begin
    d_in = 8'b10011101;
    shift_count = 2;

    for(int i = 0; i < 8; i++)
    begin
      sel = i;
      #5;

      assert(d_out == result_vector[i])
            begin
              $display("Test sonucu dogrudur,");
            end

            else
            begin
              $display("Test sonucu yanlistir.");
            end
          end

          #5;
    $stop;
  end

endmodule
