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
     
    reg isBean, inQueue;
    integer beans [0:2];
    reg beans_type [0:2];
    reg isB[0:2];
    integer furthest;
    integer height = 40;
    integer width = 30;
    integer pos_shift = 5;
    integer i;
    reg [11:0] rgb_reg;
    reg hit_ctrl;
    
    reg [9:0] count_rand;
    integer rand_pos;
    reg rand_type = 0;
    
    initial begin 
        beans[0] = 750;
        beans[1] = 0;
        beans[2] = 0;
        beans_type[0] = 0;
        beans_type[1] = 1;
        beans_type[2] = 0;
        furthest = 750;
        hit_ctrl = 0;
        inQueue = 0;
    end
    
    //draw all bean
    always @(x or y) begin
        if (check_hit) hit_ctrl = 1;
        if (reset) hit_ctrl = 0;
        for (i = 0; i <= 2; i=i+1) begin
            if (beans_type[i] == 0) draw_one_floor_bean(x, y, beans[i], rgb_reg, isB[i]);
            else if (beans_type[i] == 1) draw_one_flying_bean(x, y, beans[i], rgb_reg, isB[i]);
        end
        isBean = isB[0] || isB[1] || isB[2];
    end
    
    //pseudo random
    always @(posedge clk_rand)
    begin
        if (count_rand == 790) count_rand = 639;
        else count_rand = count_rand + 1;
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
            beans[1] = 0;
            beans[2] = 0;
            furthest = 750;
        end        
        if (~hit_ctrl) begin
            furthest = furthest - pos_shift;
            rand_type = ~rand_type;
            for(i = 0; i < 3; i=i+1) begin
                if (beans[i] > 0) beans[i] = beans[i] - pos_shift;
                else begin
                    if (~inQueue) inQueue = 1;
                    if (inQueue && (639 - furthest >= 200)) begin
                        beans[i] = rand_pos;
                        beans_type[i] = rand_type;
                        furthest = rand_pos;
                        inQueue = 0;
                    end
                end
            end
        end
    end
    
    assign bean = isBean;
    assign bean_rgb = rgb_reg;
    
endmodule