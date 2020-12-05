`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2020 13:56:49
// Design Name: 
// Module Name: draw_ground
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


task draw_ground1(
    input [9:0] x,
    input [9:0] y,
    input integer g,
    output reg [11:0] rgb_reg,    
    output reg isGround);
    begin
        isGround = 0;
        if (385 <= y && y <= 397) begin
            if (g-39 <= x && x <= g) begin
                rgb_reg = 12'h0a0;
                isGround = 1;
            end
        end
        else if (398 <= y &&y <= 401) begin
            if ((g-39 <= x && x <= g-34) || (g-5 <= x && x <= g)) begin
                rgb_reg = 12'h742;
                isGround = 1;
            end
            else if (g-33 <= x && x <= g-6) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
            end
        end
        else if (402 <= y &&y <= 404) begin
            if ((g-39 <= x && x <= g-28) || (g-11 <= x && x <= g)) begin
                rgb_reg = 12'h742;
                isGround = 1;
            end
            else if (g-27 <= x && x <= g-12) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
            end
        end
        else if (405 <= y && y <= 406) begin
            if (g-39 <= x && x <= g) begin
                rgb_reg = 12'h742;
                isGround = 1;
            end
        end
        else if (407 <= y && y <= 409) begin
            if ((g-39 <= x && x <= g-14) || (g-10 <= x && x <= g)) begin
                rgb_reg = 12'h742;
                isGround = 1;
            end
            else if (g-13 <= x && x <= g-11) begin
                rgb_reg = 12'hda6;
                isGround = 1;
            end
        end
        else if (410 <= y && y <= 412) begin
            if ((g-39 <= x && x <= g-30) || (g-24 <= x && x <= g)) begin
                rgb_reg = 12'h742;
                isGround = 1;
            end
            else if (g-29 <= x && x <= g-25) begin
                rgb_reg = 12'hda6;
                isGround = 1;
            end
        end
        else if (413 <= y && y <= 414) begin
            if ((g-39 <= x && x <= g-30) || (g-21 <= x && x <= g)) begin
                rgb_reg = 12'h742;
                isGround = 1;
            end
            else if (g-29 <= x && x <= g-22) begin
                rgb_reg = 12'hda6;
                isGround = 1;
            end           
        end
        else if (415 <= y && y <= 419) begin
            if ((g-39 <= x && x <= g-27) || (g-21 <= x && x <= g)) begin
                rgb_reg = 12'h742;
                isGround = 1;
            end
            else if (g-26 <= x && x <= g-22) begin
                rgb_reg = 12'hda6;
                isGround = 1;
            end           
        end
        else if (420 <= y && y <= 480) begin
            if (g-39 <= x && x <= g) begin
                rgb_reg = 12'h742;
                isGround = 1;
            end           
        end
    end
endtask


task draw_ground2(
    input [9:0] x,
    input [9:0] y,
    input integer g,
    output reg [11:0] rgb_reg,    
    output reg isGround);
    begin
        isGround = 0;
        if (385 <= y && y <= 397) begin
            if (g-39 <= x && x <= g) begin
                rgb_reg = 12'h0a0;
                isGround = 1;
            end
        end
        else if (398 <= y && y <= 407) begin
            if (g-39 <= x && x <= g) begin
                rgb_reg = 12'h742;
                isGround = 1;
            end
        end
        else if ((y == 408) || (y == 412)) begin
            if ((g-39 <= x && x <= g-21) || (g-19 <= x && x <= g)) begin
                rgb_reg = 12'h742;
                isGround = 1;
            end
            else if (x == g-20) begin
                rgb_reg = 12'hda6;
                isGround = 1;
            end
        end
        else if ((y == 409) || (y == 411)) begin
            if ((g-39 <= x && x <= g-22) || (g-18 <= x && x <= g)) begin
                rgb_reg = 12'h742;
                isGround = 1;
            end
            else if (g-21 <= x && x <= g-19) begin
                rgb_reg = 12'hda6;
                isGround = 1;
            end
        end
        else if (y == 410) begin
            if ((g-39 <= x && x <= g-23) || (g-17 <= x && x <= g)) begin
                rgb_reg = 12'h742;
                isGround = 1;
            end
            else if (g-22 <= x && x <= g-18) begin
                rgb_reg = 12'hda6;
                isGround = 1;
            end
        end
        else if (413 <= y && y <= 480) begin
            if (g-39 <= x && x <= g) begin
                rgb_reg = 12'h742;
                isGround = 1;
            end
        end
    end
endtask
