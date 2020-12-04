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

`include "draw_bean_graphic.vh"
//task: draw_one_floor_bean
//task: draw_one_flying_bean

module draw_bean(
    input [9:0] x, y,
    input clk, check_hit, reset,
    output bean,
    output [11:0] bean_rgb
    );
     
    reg isBean;
    integer beans [0:2];
    reg beans_type [0:2];
    reg isB[0:2];
    integer furthest, minVal, maxVal, ran;
    integer height = 40;
    integer width = 30;
    integer pos_shift = 5;
    integer i;
    reg [11:0] rgb_reg;
    reg hit_ctrl;
    
    initial begin 
        beans[0] = 250;
        beans[1] = 450;
        beans[2] = 750;
        beans_type[0] = 0;
        beans_type[1] = 1;
        beans_type[2] = 0;
        furthest = 750;
        minVal = 400;
        maxVal = 700;
        hit_ctrl = 0;
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
    
    //position shift
    always @(posedge clk)
    begin
        if (reset) begin
            beans[0] = 250;
            beans[1] = 450;
            beans[2] = 750;
        end
        if (~hit_ctrl) begin
            //furthest = furthest - pos_shift;
            for(i = 0; i < 3; i=i+1) begin
                beans[i] = beans[i] - pos_shift;
                if (beans[i] <= 0) begin
                    beans[i] = 700;
    //                ran = $urandom_range(400, 700);
    //                beans[i] = furthest + ran;
    //                furthest = furthest + ran;
                end
            end
        end
    end
    
    assign bean = isBean;
    assign bean_rgb = rgb_reg;
    
endmodule