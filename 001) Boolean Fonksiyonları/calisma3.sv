`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2025 21:29:31
// Design Name: 
// Module Name: calisma3
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


module calisma3(
    input A, // kapı sensörü
    input B, // hareket sensörü
    output Alarm_out, // şirket kapısı önünde hareketin algılanıp kapının açılma durumu
    output Error_out // olası sensör hataları
    );

    assign Alarm_out = A && B; //alarm için and kapısı
    assign Error_out = A ^ B; //hata için xor kapısı

endmodule
