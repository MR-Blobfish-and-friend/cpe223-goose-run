`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2020 09:34:54 AM
// Design Name: 
// Module Name: ground1
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


module ground1(
    input x, y,
    input p,
    output [11:0] rgb,
    output isGround_reg
    );
    
    reg [11:0] rgb_reg;
    reg isGround;
    
    always @(*) begin
        assign isGround = 0;
            if (385 <= y && y <= 397) begin
                if (p-127 <= x && x <= p) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
                end
            end
            else if (398 <= y &&y <= 401) begin
                if (p-127 <= x && x <= p-122) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (p-121 <= x && x <= p-93) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
                end
                else if (p-92 <= x && x <= p-58) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (p-57 <= x && x <= p-28) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
                end
                else if (p-27 <= x && x <= p) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (402 <= y &&y <= 404) begin
                if (p-127 <= x && x <= p-119) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (p-118 <= x && x <= p-107) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
                end
                else if (p-106 <= x && x <= p-49) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (p-48 <= x && x <= p-37) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
                end
                else if (p-36 <= x && x <= p) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (405 <= y && y <= 406) begin
                if (p-127 <= x && x <= p) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (407 <= y && y <= 409) begin
                if (p-127 <= x && x <= p-102) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (p-101 <= x && x <= p-99) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (p-98 <= x && x <= p-63) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (p-62 <= x && x <= p-60) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (p-59 <= x && x <= p-25) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (p-24 <= x && x <= p-22) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (p-21 <= x && x <= p) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (410 <= y && y <= 412) begin
                if (p-127 <= x && x <= p-118) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (p-117 <= x && x <= p-113) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (p-112 <= x && x <= p-79) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (p-78 <= x && x <= p-74) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (p-73 <= x && x <= p-41) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (p-40 <= x && x <= p-36) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (p-35 <= x && x <= p) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (413 <= y && y <= 414) begin
                if (p-127 <= x && x <= p-118) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (p-117 <= x && x <= p-110) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (p-109 <= x && x <= p-79) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (p-78 <= x && x <= p-71) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (p-70 <= x && x <= p-41) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (p-40 <= x && x <= p-33) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (p-32 <= x && x <= p) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (415 <= y && y <= 419) begin
                if (p-127 <= x && x <= p-115) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (p-114 <= x && x <= p-110) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (p-109 <= x && x <= p-76) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (p-75 <= x && x <= p-71) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (p-70 <= x && x <= p-38) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (p-37 <= x && x <= p-33) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (p-32 <= x && x <= p) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (420 <= y && y <= 480) begin
                if (p-127 <= x && x <= p) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
        
    end
    
    assign isGround_reg = isGround;
    
endmodule
