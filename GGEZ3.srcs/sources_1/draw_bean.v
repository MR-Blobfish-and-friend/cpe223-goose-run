`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2020 03:24:17 PM
// Design Name: 
// Module Name: draw_bean
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

`include "draw_bean_graphic.v"
//task: draw_one_floor_bean
//task: draw_one_flying_bean

module draw_bean(
    input [9:0] x, y,
    input clk_shift, clk_rand, check_hit, reset,
    input [1:0] button,
    output bean,
    output [11:0] bean_rgb
    );     
    reg isBean, inQueue = 0, hit_ctrl = 0;
    reg [11:0] rgb_reg;
    integer beans [0:4];
    reg beans_type [0:4];
    reg isB[0:4];
    integer furthest, i;
    integer pos_shift = 5;
    
    integer count_rand, rand_pos;
    reg rand_type = 0;
    
    initial begin 
        beans[0] = 750;
        for (i = 1; i <= 4; i = i + 1) begin
            beans[i] = 0;
        end
        furthest = 750;
    end
    
    //pseudo random
    always @(posedge clk_rand)
    begin
        if (count_rand == 790) count_rand = 640;
        else count_rand = count_rand + 5;
    end
    
    always @(button)
    begin
        rand_pos = count_rand;
    end
    
    //position shift
    always @(posedge clk_shift)
    begin
        if (reset) begin
            beans[0] = 750;
            for (i = 1; i <= 4; i = i + 1) begin
                beans[i] = 0;
            end
            furthest = 750;
        end        
        if (~hit_ctrl) begin
            furthest = furthest - pos_shift;
            rand_type = ~rand_type;
            for(i = 0; i <= 4; i=i+1) begin
                if (beans[i] > 0) beans[i] = beans[i] - pos_shift;
                else begin
                    if (~inQueue) inQueue = 1;
                    if (inQueue && (furthest <= 440)) begin
                        beans[i] = rand_pos;
                        beans_type[i] = rand_type;
                        furthest = rand_pos;
                        inQueue = 0;
                    end
                end
            end
        end
    end
    
    //draw all bean
    always @(x or y) begin
        if (check_hit) hit_ctrl = 1;
        if (reset) hit_ctrl = 0;
        for (i = 0; i <= 4; i=i+1) begin
            if (beans_type[i] == 0) draw_one_floor_bean(x, y, beans[i], rgb_reg, isB[i]);
            else draw_one_flying_bean(x, y, beans[i], rgb_reg, isB[i]);
        end
        isBean = isB[0] || isB[1] || isB[2];
    end
    
    assign bean = isBean;
    assign bean_rgb = rgb_reg;    
endmodule