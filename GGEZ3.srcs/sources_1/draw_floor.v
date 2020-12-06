`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2020 03:15:44 PM
// Design Name: 
// Module Name: draw_floor
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

//`include "draw_floor_graphic.vh"
//task: draw_one_phase_floor

module draw_floor(
    input [9:0] x, y,
    output floor,
//    output grass
    output [11:0] floor_rgb
    );    
    reg isFloor = 0;
    reg isGrass = 0;
    reg [11:0] rgb_reg;
    
    always @(x or y)
    begin
        if ((0 <= x && x <= 640) && (375 <= y && y <= 390)) isGrass <= 1;
        else isGrass <= 0;
        if ((0 <= x && x <= 640) && (391 <= y && y <= 480)) isFloor <= 1;
        else isFloor <= 0;
        if (isGrass) rgb_reg = 12'h2a2;
        else if (isFloor) rgb_reg = 12'h940;
    end
    
    assign floor = isFloor || isGrass;
//    assign grass = isGrass;
    assign floor_rgb = rgb_reg;
endmodule