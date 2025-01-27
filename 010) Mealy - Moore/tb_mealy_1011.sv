`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 27.01.2025 05:33:40
// Design Name:
// Module Name: tb_mealy_1011
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


module tb_mealy_1011();
  logic clk = 0;
  logic rstn;
  logic din;
  logic dout_mealy;
  integer counter = 0;

  mealy_1011 mealy_1011_Inst(.*);

  always #5 clk <= ~clk; 

  initial begin
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

  logic [3:0] seq;  // giriş verilerinin (din sinyalinin) son 4 bitini kaydetmek için kullanılan bir kaydırma (shift) kaydı gibi davranır.

  always_ff @(posedge clk)
  begin
    if (!rstn)
    begin
      seq <= 4'b0;
    end
    else  // kaydırma işlemiyle son 4 sinyali kaydeder.
    begin
      seq <= {seq[2:0], din};
      $display("din = %b, seq: %b, dout_mealy: %b", din, seq, dout_mealy);
      counter = counter + 1;

      if(counter == 16)
      begin
        $stop;  // 16 tane sinyal üretildikten sonra dursun.
      end
    end
  end
endmodule

/*
kaydırma işlemi için örnek:

İlk durumda: seq = 4'b0000 (sıfırlanmış)
Eğer din = 1 ise: seq = 4'b0001
Bir sonraki din = 0 ise: seq = 4'b0010
Bir sonraki din = 1 ise: seq = 4'b0101
*/
