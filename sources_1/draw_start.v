`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2020 04:32:06 PM
// Design Name: 
// Module Name: draw_start
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

`include"draw_start_graphic.vh"

module draw_start(
    input [9:0] x, y,
    input enable,
    output reg start,
    output reg [11:0] start_rgb
    );    
    always @(x or y)
        if (enable) scene_start(x, y, start_rgb, start);
        else start = 0;
endmodule
