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
//    input clk, check_hit, reset,
    output floor,
    output grass
//    output floor_rgb
    );
    
    reg isFloor = 0;
    reg isGrass = 0;
//    integer phase [0:5];
//    reg [2:0] i;
//    reg [2:0] pos_shift = 0;
    
//    initial begin
//        hit_ctrl = 0;
//        phase[0] = 127;
//        phase[1] = phase[0] + 128;
//        phase[2] = phase[1] + 128;
//        phase[3] = phase[2] + 128;
//        phase[4] = phase[3] + 128;
//        phase[5] = phase[4] + 128;
//    end
    
//    always @(posedge clk)
//    begin
//        if (reset) begin
//            hit_ctrl = 0;
//            phase[0] = 127;
//            phase[1] = phase[0] + 128;
//            phase[2] = phase[1] + 128;
//            phase[3] = phase[2] + 128;
//            phase[4] = phase[3] + 128;
//            phase[5] = phase[4] + 128;
//        end
//        if (~hit_ctrl) begin
//            for(i = 0; i <= 5; i = i + 1) begin
//                phase[i] = phase[i] + pos_shift;
//                if(phase[i] <= 0) phase[i] = 639 + 128;
//            end
//        end
//    end
    
    always @(x or y)
    begin
//        if (check_hit) hit_ctrl = 1;
//        if (reset) hit_ctrl = 0;
//        for (i = 0; i <= 5; i = i + 1) begin
            
//        end
        if ((0 <= x && x <= 640) && (375 <= y && y <= 390)) isGrass = 1;
        else isGrass = 0;
        if ((0 <= x && x <= 640) && (391 <= y && y <= 480)) isFloor = 1;
        else isFloor = 0;
    end
    
    assign floor = isFloor;
    assign grass = isGrass;
    
endmodule
