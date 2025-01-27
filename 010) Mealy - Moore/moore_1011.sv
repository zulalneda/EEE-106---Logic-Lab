`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2025 06:05:59
// Design Name: 
// Module Name: moore_1011
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


module moore_1011(
    input logic clk,
    input logic rstn,
    input logic din,
    output logic dout_moore
    );

    typedef enum logic [2:0]
    {
        S0_moore, //000
        S1_moore, //001
        S2_moore, //010
        S3_moore, //011
        S4_moore //100
    } states_moore;

    states_moore state_moore;

    always_ff @(posedge clk)
    begin
        if(!rstn)
        begin
            state_moore <= S0_moore;
            dout_moore <= 1'b0;
        end

        else
        begin
            case(state_moore)
            S0_moore:
            begin
                dout_moore <= 1'b0;
                if(din)
                begin
                    state_moore <= S1_moore;
                end
            end

            S1_moore:
            begin
                dout_moore <= 1'b0;
                if(!din)
                begin
                    state_moore <= S2_moore;
                end

                else
                begin
                    state_moore <= S1_moore;
                end
            end

            S2_moore:
            begin
                dout_moore <= 1'b0;
                if(din)
                begin
                    state_moore <= S3_moore;
                end

                else
                begin
                    state_moore <= S0_moore;
                end
            end

            S3_moore:
            begin
                dout_moore <= 1'b0;
                if(din)
                begin
                    state_moore <= S4_moore;
                end

                else
                begin
                    state_moore <= S2_moore;
                end
            end

            S4_moore:
            begin
                dout_moore <= 1'b1;
                if(din)
                begin
                    state_moore <= S1_moore;
                end

                else
                begin
                    state_moore <= S2_moore;
                end
            end

            default:
            begin
                state_moore <= S0_moore;
                dout_moore <= 1'b0;
            end
            endcase
        end
    end
endmodule
