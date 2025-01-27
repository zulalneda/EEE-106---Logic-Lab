`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2025 08:33:16
// Design Name: 
// Module Name: shift_operations
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


module shift_operations(
    
    input logic signed [7:0] d_in,  // MSB in 1 olursa negatif olmasını sağlar.
    input logic [2:0] sel,
    input logic [2:0] shift_count,
    output logic signed [7:0] d_out
  );

  logic [15:0] temp;
  logic [15:0] temp_vio;

  always_comb
  begin
    case (sel)
      3'b000:
        d_out = d_in; //no shift
      3'b001:
        d_out = d_in << shift_count; // logical left shift
      3'b010:
        d_out = d_in <<< shift_count; // arithmetic left shift
      3'b011:
        d_out = d_in >> shift_count; // logical right shift
      3'b100:
        d_out = d_in >>> shift_count; // arithmetic right shift
      3'b101: // circular (rotate) left shift
      begin
        temp = {d_in, d_in} << shift_count;
        d_out = temp[15:8];
      end
      3'b110:// circular (rotate) right shift
      begin
        temp = {d_in, d_in} >> shift_count;
        d_out = temp[7:0];
      end
      3'b111:
        d_out = d_in;// reserved
      default:
        d_out = d_in;
    endcase
  end


endmodule

// {} bitleri birleştirmek veya dizileri oluşturmak için kullanılır.
// temp = {d_in, d_in} demek d_in bitini iki kere arka arkaya koyup 16 bitlik sayı elde etmek demektir.
