`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2020 09:11:39 PM
// Design Name: 
// Module Name: sky
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


module sky(
    input x, y,
    output [11:0] rgb,
    output isSky_reg
    );
    
    reg [11:0] rgb_reg;
    reg isSky;
    
    always @(*) begin
        assign isSky = 0;
        if (0 <= y && y  <= 20) begin
            rgb_reg = 12'h138;
            isSky = 1;
        end
        else if (21 <= y && y  <= 60) begin
            rgb_reg = 12'h04d;
            isSky = 1;
        end
        else if (61 <= y && y  <= 135) begin
            rgb_reg = 12'h0af;
            isSky = 1;
        end
        else if (136 <= y && y  <= 235) begin
            rgb_reg = 12'h3df;
            isSky = 1;
        end
        else if (236 <= y && y  <= 384) begin
            rgb_reg = 12'haff;
            isSky = 1;
        end             
    end
    
    assign isSky_reg = isSky;
    
endmodule
