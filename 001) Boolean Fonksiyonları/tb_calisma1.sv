`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2025 16:56:27
// Design Name: 
// Module Name: tb_calisma1
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


module tb_calisma1();

    logic A; // reg
    logic B; // reg
    logic C; // reg
    logic F; // wire

    /*
    System Verilog'un güzel taraflarından birisi de reg - wire ayrımına 
    gerek duymamasıdır. Verilog diliyle kodlama yapmamız gerekseydi inputlar için reg,
    outputlar için wire kullanmamız gerekecekti. Her ne kadar bu tip basit projelerde
    kafa karışıklığı yaratmasa da işler komplikeleştikçe bu durum karışıklığa yol açabilir.
    */

    calisma1 calisma1_Inst(
        .A(A),
        .B(B),
        .C(C),
        .F(F)
    );

    // design kodunu testbanch kodunda kullanmak için bu modülün çağrılması gerekir.
    // .A(A) -> giriş veya çıkış portlarını üst seviyedeki modüllere bağlamak için kullanılır.

    /*
    NOT: Tüm modülleri kullanacaksak (bağlayacaksak),
       calisma1 calisma1_Inst(.*);
    şeklinde de yazabiliriz.
    (Aynı şekilde sadece System Verilog'a özgü bir özelliktir.
    Verilogta hepsini üstteki gibi teker teker bağlamak zorundasınız.)
    */

    initial begin
        A = 1'b0; B = 1'b0; C = 1'b0; #10; 
        A = 1'b0; B = 1'b0; C = 1'b1; #10;
        A = 1'b0; B = 1'b1; C = 1'b0; #10;
        A = 1'b0; B = 1'b1; C = 1'b1; #10;
        A = 1'b1; B = 1'b0; C = 1'b0; #10;
        A = 1'b1; B = 1'b0; C = 1'b1; #10;
        A = 1'b1; B = 1'b1; C = 1'b0; #10;
        A = 1'b1; B = 1'b1; C = 1'b1; #10;

        // 1 -> 1 bit, b -> binary, 0,1 -> değer
        // #10 -> 10ns bekle
        $stop; // simülasyonu durdurur, olası hataları görmek için işlevlidir.
    end

endmodule
