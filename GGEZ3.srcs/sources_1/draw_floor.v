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

`include"draw_floor_graphic.v"
//task: draw_one_phase_floor
//`include"draw_goose_graphic.v"

module draw_floor(
    input [9:0] x, y,
    input clk, check_hit, reset,
    output floor,
    output [11:0] floor_rgb
    );
    
    reg isFloor, hit_ctrl;
    integer phase [0:5];
    reg isF [0:5];
    integer i;
    integer pos_shift = 5;
    reg [11:0] rgb_reg;
      
    initial begin
        hit_ctrl = 0;
        phase[0] = 127;
        phase[1] = phase[0] + 128;
        phase[2] = phase[1] + 128;
        phase[3] = phase[2] + 128;
        phase[4] = phase[3] + 128;
        phase[5] = phase[4] + 128;
    end
    
    always @(posedge clk)
    begin
        if (reset) begin
            phase[0] = 127;
            phase[1] = phase[0] + 128;
            phase[2] = phase[1] + 128;
            phase[3] = phase[2] + 128;
            phase[4] = phase[3] + 128;
            phase[5] = phase[4] + 128;
        end
        if (~hit_ctrl) begin
            for(i = 0; i <= 5; i = i + 1) begin
                phase[i] = phase[i] - pos_shift;
                if(phase[i] <= 0) phase[i] = 639 + 128;
            end
        end
    end
    
    always @(x or y)
    begin
        if (check_hit) hit_ctrl = 1;
        if (reset) hit_ctrl = 0;
        for (i = 0; i <= 5; i = i + 1) begin
            draw_one_phase_floor(x, y, phase[i], isF[i], rgb_reg);
        end
        isFloor = isF[0] || isF[1] || isF[2] || isF[3] || isF[4] || isF[5];
    end
    
    assign floor = isFloor;
    assign floor_rgb = rgb_reg;
    
endmodule
