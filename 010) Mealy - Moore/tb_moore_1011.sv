`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 27.01.2025 06:17:38
// Design Name:
// Module Name: tb_moore_1011
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


module tb_moore_1011();
  logic clk = 0;
  logic rstn;
  logic din;
  logic dout_moore;

  moore_1011 moore_1011_Inst(.*);

  always #5 clk <= ~clk; // non-blocking yapılarda küçüktürü unutma!

  initial
  begin
    rstn <= 1'b0;
    @(negedge clk);
    @(negedge clk);
    rstn <= 1'b1;
  end

  always_ff @(posedge clk)
  begin
    if(!rstn)
    begin
      din <= 0;
    end
    else
    begin
      din = $random(); // rastgele 0 veya 1 üretir.
    end
  end

  logic [3:0] seq;

  always_ff @(posedge clk)
  begin
    if (!rstn)
    begin
      seq <= 4'b0;
    end
    else
    begin
      seq <= {seq[2:0], din};
      $display("din = %b, seq: %b, dout_moore: %b", din, seq, dout_moore);
    end
  end
endmodule
