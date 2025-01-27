`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 27.01.2025 05:09:13
// Design Name:
// Module Name: mealy_1011
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


module mealy_1011(
    input logic clk,
    input logic rstn,
    input logic din,
    output logic dout_mealy
  );

  integer counter;
  typedef enum logic [1:0]  //typedef enum, bir dizi sabit ismi bir araya getirerek numaralandırılmış bir veri tipi oluşturur.
          {
            S0_mealy, //00
            S1_mealy, //01
            S2_mealy, //10
            S3_mealy //11
          } states_mealy;  //numerated tipin adı

  states_mealy state_mealy;

  always_ff @(posedge clk)
  begin

    if(!rstn)
    begin
      state_mealy <= S0_mealy;
      dout_mealy <= 1'b0;
    end

    else
    begin // din = 1 ; !din = 0
      case (state_mealy)
        S0_mealy :
        begin
          if (din) // 1
          begin
            state_mealy <= S1_mealy; // 1 gelirse S1 e geç
            dout_mealy <= 1'b0; 
          end
          else
          begin
            state_mealy <= S0_mealy; //1 gelmezse kendisinde kalsın
            dout_mealy <= 1'b0;
          end
        end
        S1_mealy :
        begin
          if(!din) // 10 -> 0
          begin
            state_mealy <= S2_mealy; // 0 gelirse S2 ye geç
            dout_mealy <= 1'b0;
          end
          else
          begin
            state_mealy <= S1_mealy; // 0 gelmezse kendisinde kalsın
            dout_mealy <= 1'b0;
          end
        end

        S2_mealy:
        begin
          if(din) // 101 -> 1
          begin
            state_mealy <= S3_mealy; // 1 gelirse S3 e geç
            dout_mealy <= 1'b0;
          end
          else
          begin
            state_mealy <= S0_mealy; // 1 gelmezse S0 a geç --> "0" örüntünün hiçbir şekilde başı olamayacağı için başa dönüş yapılır.
            dout_mealy <= 1'b0;
          end
        end

        S3_mealy:
        begin
          if(din) // 1011 -> 1
          begin
            state_mealy <= S1_mealy; // 1 gelirse S1 e geç --> yeni oluşacak örüntünün başlangıç potansiyelini taşır.
            dout_mealy <= 1'b1;
          end
          else
          begin
            state_mealy <= S2_mealy; // 1 gelmezse S2 ye geç
            dout_mealy <= 1'b0;
          end
        end

        default :
        begin
          state_mealy <= S1_mealy;
          dout_mealy <= 1'b0;
        end
      endcase
    end
  end

    // S3 ün 1 gelmesi durumuna kadar olan bütün dout ların "0" olmasının sebebi dizinin henüz tamamlanmamış olmasıdır.
    // Dizi tamamlanınca dout 1 i döndürür.

endmodule
