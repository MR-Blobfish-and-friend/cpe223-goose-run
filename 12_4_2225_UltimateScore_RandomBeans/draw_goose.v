`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2020 02:42:04 PM
// Design Name: 
// Module Name: draw goose
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

`include"draw_goose_graphic.v"
//include these task:
//  draw_goose_run
//  draw_goose_slide
//  draw_goose_jump

module draw_goose(
    input [9:0] x,
    input [9:0] y,
    input clk,
    input btnL,
    input btnR,
    input check_hit,
    input reset,
    output goose,
    output [11:0] goose_rgb
    );
    
    reg isGoose;
    integer posy = 380;
    reg isJump = 0;
    reg isSlide = 0;
    integer jumpCount = 0;
    integer jumpList [0:30];
    reg [11:0] rgb_reg;
    reg hit_ctrl;
    wire clk_leg;
    reg goose_leg = 0;
    
    //initiate jumpList
    initial
    begin
        jumpList[0] = 15;
        jumpList[1] = 12;
        jumpList[2] = 9;
        jumpList[3] = 7;
        jumpList[4] = 5;
        jumpList[5] = 4;
        jumpList[6] = 3;
        jumpList[7] = 3;
        jumpList[8] = 2;
        jumpList[9] = 2;
        jumpList[10] = 2;
        jumpList[11] = 1;
        jumpList[12] = 1;
        jumpList[13] = 1;
        jumpList[14] = 1;
        jumpList[15] = 0;
        jumpList[16] = -1;
        jumpList[17] = -1;
        jumpList[18] = -1;
        jumpList[19] = -1;
        jumpList[20] = -2;
        jumpList[21] = -2;
        jumpList[22] = -2;
        jumpList[23] = -3;
        jumpList[24] = -3;
        jumpList[25] = -4;
        jumpList[26] = -5;
        jumpList[27] = -7;
        jumpList[28] = -9;
        jumpList[29] = -12;
        jumpList[30] = -15;
        hit_ctrl = 0;
    end  
     
    divider_leg l1(clk, clk_leg);    
    always @(posedge clk_leg) begin
        if (~check_hit) goose_leg = ~goose_leg;
    end    
    
    //shift position of jumping goose
    always @(posedge clk)
    begin
        if (~hit_ctrl) begin
            if (btnL) isJump = 1;
            else if (btnR) isSlide = 1;
            else if (~btnR) isSlide = 0;      
        end
        if (reset) begin
            isJump = 0;
            isSlide = 0;
            jumpCount = 0;
            posy = 380;
        end          
        if (jumpCount == 31) begin
                jumpCount = 0;
                isJump = 0;
        end 
        if (isJump && ~check_hit) begin
                posy = posy - jumpList[jumpCount];
                jumpCount = jumpCount + 1;
        end
    end
    
    //control goose mode
    always @(x or y or reset) begin
        if (check_hit) hit_ctrl = 1;
        if (reset) hit_ctrl = 0;
        if (isJump) draw_goose_jump(x, y, posy, isGoose, rgb_reg);
        else if (isSlide) draw_goose_slide(x, y, goose_leg, isGoose, rgb_reg);
        else draw_goose_run(x, y, goose_leg, isGoose, rgb_reg);
    end
    
    assign goose = isGoose;
    assign goose_rgb = rgb_reg;
    
endmodule