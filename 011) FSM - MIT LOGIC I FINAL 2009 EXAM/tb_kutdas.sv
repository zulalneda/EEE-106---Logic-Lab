`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2025 07:50:40
// Design Name: 
// Module Name: tb_kutdas
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


module tb_kutdas();

logic clk = 0;
logic rstn;
logic din;
logic dout;
logic [2:0] current_state_tb;

integer counter = 0;  

kutdas kutdas_Inst(.*);


always #5 clk <= ~clk; 


initial begin
  rstn <= 1'b0;  
  @(negedge clk);
  @(negedge clk);
  rstn <= 1'b1;  
end


always_ff @(posedge clk)
begin
  if (!rstn)
    din <= 0;
  else
    din <= $random();  
end


logic [3:0] seq;

always_ff @(posedge clk) begin
  if (!rstn)
    seq <= 4'b0;
  else begin
   
    seq <= {seq[2:0], din};  
    
    
    $display("clk: %b, rstn: %b, din: %b, seq: %b, dout: %b, current_state: %b",clk, rstn, din, seq, dout, current_state_tb);

    counter = counter + 1;
    if (counter == 16) begin
      $stop;  // 16 clock döngüsü sonra simülasyonu durdur
    end
  end
end
endmodule

