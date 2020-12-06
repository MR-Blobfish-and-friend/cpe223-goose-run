`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2020 08:44:42 PM
// Design Name: 
// Module Name: draw_sky
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


module draw_sky(
    input [9:0] x, y,
    output sky,
    output [11:0] sky_rgb
    );    
    reg isSky;
    reg [11:0] rgb_reg;
    
    always @(x or y) begin
        isSky = 0;
        if (0 <= x && x <= 639) begin
            if (0 <= y && y  <= 20) begin
                rgb_reg <= 12'h168;
                isSky <= 1;
            end
            else if (21 <= y && y  <= 60) begin
                rgb_reg <= 12'h28a;
                isSky <= 1;
            end
            else if (61 <= y && y  <= 135) begin
                rgb_reg <= 12'h29c;
                isSky <= 1;
            end
            else if (136 <= y && y  <= 235) begin
                rgb_reg <= 12'h2ad;
                isSky <= 1;
            end
            else if (236 <= y && y  <= 374) begin
                rgb_reg <= 12'h3be;
                isSky <= 1;
            end
        end
    end
    
    assign sky = isSky;
    assign sky_rgb = rgb_reg;        
endmodule
