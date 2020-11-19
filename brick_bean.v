`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2020 02:34:35 PM
// Design Name: 
// Module Name: brick_bean
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


module brick_bean(
    input x, y,
    output [11:0] rgb,
    output isBean_reg
    );
    
    reg [11:0] rgb_reg;
    reg isBean;
    wire [9:0] b;
    
    always @(*) begin
        assign isBean = 0;
        if (y == 328) begin
            if (b-36 <= x & x <= b-32) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
        end
        else if (y == 327) begin
            if (x == b-36) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-35 <= x & x <= b-33) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            if (x == b-32) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
        end
        else if (y == 326) begin
            if (b-37 <= x & x <= b-36) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-35 <= x & x <= b-34) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            if (b-33 <= x & x <= b-32) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
        end
        else if (y == 325) begin
            if (b-37 <= x & x <= b-33) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
        end
        else if (y == 324) begin
            if (x == b-36) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
        end
        else if (y == 323) begin
            if (b-44 <= x & x <= b-37) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-36) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-35 <= x & x <= b-31) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-30) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-29 <= x & x <= b-8) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-7) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-6 <= x & x <= b) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end    
        end
        else if (y == 322) begin
            if (b-44 <= x & x <= b-39) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-38 <= x & x <= b-37) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (b-36 <= x & x <= b-35) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-34 <= x & x <= b-31) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-30) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-29 <= x & x <= b-8) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-7) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-6 <= x & x <= b) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end    
        end
        else if (y == 321) begin
            if (x == b-44) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-43 <= x & x <= b-40) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (x == b-39) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-38 <= x & x <= b-36) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x <= b-35) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-34 <= x & x <= b-31) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-30) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-29 <= x & x <= b-8) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-7) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-6 <= x & x <= b) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end    
        end
        else if (y == 320) begin
            if (x == b-44) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-43 <= x & x <= b-40) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (b-39 <= x & x <= b-37) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (x == b-36) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x <= b-35) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-34 <= x & x <= b-31) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-30) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-29 <= x & x <= b-8) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-7) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-6 <= x & x <= b) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end    
        end
        else if (y == 319) begin
            if (x == b-44) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-43 <= x & x <= b-38) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (x <= b-37) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (x == b-36) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x <= b-35) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-34 <= x & x <= b-31) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-30) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-29 <= x & x <= b-8) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-7) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-6 <= x & x <= b) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end    
        end
        else if (y == 318) begin
            if (b-44 <= x & x <= b-42) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-41 <= x & x <= b-40) begin
                rgb_reg = 12'h8e0;
                isBean = 1;
            end
            else if (b-39 <= x & x <= b-38) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (x == b-37) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (x == b-36) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-35) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-34 <= x & x <= b-31) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-30) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-29 <= x & x <= b-8) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-7) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-6 <= x & x <= b) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end    
        end
        else if (y == 317) begin
            if (b-44 <= x & x <= b-43) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end   
            else if (x == b-42) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-41 <= x & x <= b-38) begin
                rgb_reg = 12'h8e0;
                isBean = 1;
            end
            else if (b-37 <= x & x <= b-35) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-34 <= x & x <= b-31) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-30) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-29 <= x & x <= b-8) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-7) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-6 <= x & x <= b) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end    
        end
        else if (y == 316) begin
            if (b-44 <= x & x <= b-43) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-42 <= x & x <= b-38) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            if (b-37 <= x & x <= b) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
        end
        else if (y == 315) begin
            if (b-44 <= x & x <= b-40) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-39) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (x == b-38) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-37 <= x & x <= b-19) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-18) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-17 <= x & x <= b-2) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-1) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (x == b) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
        end
        else if (y == 314) begin
            if (b-44 <= x & x <= b-41) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-40) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (x == b-39) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-38) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-37 <= x & x <= b-19) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-18) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-17 <= x & x <= b-2) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-1) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (x == b) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
        end
        else if (y == 313) begin
            if (b-44 <= x & x <= b-41) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-40) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (x == b-39) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-38) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-37 <= x & x <= b-19) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-18) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-17 <= x & x <= b-2) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-1) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (x == b) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
        end
        else if (y == 312) begin
            if (b-44 <= x & x <= b-41) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (b-40 <= x & x <= b-32) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-31 <= x & x <= b-19) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-18) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-17 <= x & x <= b-2) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-1) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (x == b) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
        end
        else if (y == 311) begin
            if (b-44 <= x & x <= b-41) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (b-40 <= x & x <= b-38) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-37 <= x & x <= b-33) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (x == b-32) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-31 <= x & x <= b-19) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-18) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-17 <= x & x <= b-2) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-1) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (x == b) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
        end
        else if (y == 310) begin
            if (b-44 <= x & x <= b-41) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (b-40 <= x & x <= b-38) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-37 <= x & x <= b-33) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (x == b-32) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-31 <= x & x <= b-19) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-18) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-17 <= x & x <= b-2) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-1) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (x == b) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
        end
        else if (y == 309) begin
            if (b-44 <= x & x <= b-41) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-40) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-39 <= x & x <= b-37) begin
                rgb_reg = 12'h8e0;
                isBean = 1;
            end
            else if (b-36 <= x & x <= b-34) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (b-33 <= x & x <= b-32) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-31 <= x & x <= b-19) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-18) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-17 <= x & x <= b-2) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-1) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (x == b) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
        end
        else if (y == 308) begin
            if (b-44 <= x & x <= b-41) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (x == b-40) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-39 <= x & x <= b-34) begin
                rgb_reg = 12'h8e0;
                isBean = 1;
            end
            else if (x == b-33) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-32 <= x & x <= b) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
        end
        else if (y == 307) begin
            if (x == b-44) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-43 <= x & x <= b-41) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (b-40 <= x & x <= b-37) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-36 <= x & x <= b-34) begin
                rgb_reg = 12'h8e0;
                isBean = 1;
            end
            else if (x == b-33) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-32 <= x & x <= b-25) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-24) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-23 <= x & x <= b-19) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-18) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-17 <= x & x <= b) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
        end
        else if (y == 306) begin
            if (x == b-44) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (x == b-43) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-42 <= x & x <= b-38) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (b-37 <= x & x <= b-33) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-32 <= x & x <= b-25) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-24) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-23 <= x & x <= b-20) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-19) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (x == b-18) begin
                rgb_reg = 12'h8e0;
                isBean = 1;
            end
            else if (x == b-17) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-16 <= x & x <= b) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
        end
        else if (y == 305) begin
            if (x == b-44) begin
                rgb_reg = 12'h8e0;
                isBean = 1;
            end
            else if (x == b-43) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (x == b-42) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-41 <= x & x <= b-38) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (b-37 <= x & x <= b-36) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-35 <= x & x <= b-25) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-24) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-23 <= x & x <= b-21) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-20) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (x == b-19) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (b-18 <= x & x <= b-17) begin
                rgb_reg = 12'h8e0;
                isBean = 1;
            end
            else if (x == b-16) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-15 <= x & x <= b) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
        end
        else if (y == 304) begin
            if (b-44 <= x & x <= b-43) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (x == b-42) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-41 <= x & x <= b-37) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (b-36 <= x & x <= b-34) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-33 <= x & x <= b-25) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-24) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-23 <= x & x <= b-21) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-20) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-19 <= x & x <= b-18) begin
                rgb_reg = 12'h8e0;
                isBean = 1;
            end
            else if (x == b-17) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (x == b-16) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-15 <= x & x <= b-11) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (b-10 <= x & x <= b-7) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-6 <= x & x <= b) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
        end
        else if (y == 303) begin
            if (b-44 <= x & x <= b-43) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-42 <= x & x <= b-34) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-33) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-32 <= x & x <= b-25) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-24) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-23 <= x & x <= b-21) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-20) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-19 <= x & x <= b-18) begin
                rgb_reg = 12'h8e0;
                isBean = 1;
            end
            else if (x == b-17) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (x == b-16) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-15 <= x & x <= b-11) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-10) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (x == b-9) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (x == b-8) begin
                rgb_reg = 12'h8e0;
                isBean = 1;
            end
            else if (x == b-7) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-6 <= x & x <= b) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
        end
        else if (y == 302) begin
            if (b-44 <= x & x <= b-43) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (b-42 <= x & x <= b-38) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-37 <= x & x <= b-34) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-33) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-32 <= x & x <= b-25) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-24) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-23 <= x & x <= b-21) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-20) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (x == b-19) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (x == b-18) begin
                rgb_reg = 12'h8e0;
                isBean = 1;
            end
            else if (x == b-17) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (x == b-16) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-15 <= x & x <= b-12) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-11) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (x == b-10) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (b-9 <= x & x <= b-8) begin
                rgb_reg = 12'h8e0;
                isBean = 1;
            end
            else if (x == b-7) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-6 <= x & x <= b) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
        end
        else if (y == 301) begin
            if (x == b-44) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (b-43 <= x & x <= b-42) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-41 <= x & x <= b-39) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (b-38 <= x & x <= b-36) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-35 <= x & x <= b-33) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-32) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-31 <= x & x <= b-29) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (b-28 <= x & x <= b-26) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (x == b-25) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-24) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-23 <= x & x <= b-20) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-19) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (x == b-18) begin
                rgb_reg = 12'h8e0;
                isBean = 1;
            end
            else if (x == b-17) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-16 <= x & x <= b-13) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-12) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (x == b-11) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (b-10 <= x & x <= b-9) begin
                rgb_reg = 12'h8e0;
                isBean = 1;
            end
            else if (x == b-8) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (x == b-7) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-6 <= x & x <= b) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
        end
        else if (y == 300) begin
            if (b-44 <= x & x <= b-38) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-37 <= x & x <= b-36) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (b-35 <= x & x <= b-34) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (x == b-33) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-32) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-31 <= x & x <= b-29) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-28) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (x == b-27) begin
                rgb_reg = 12'h8e0;
                isBean = 1;
            end
            else if (x == b-26) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (x == b-25) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (x == b-24) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-23 <= x & x <= b-19) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-18) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-17 <= x & x <= b-13) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-12) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-11 <= x & x <= b-9) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (x == b-8) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-7 <= x & x <= b) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
        end
        else if (y == 299) begin
            if (x == b-44) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (x == b-43) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-42 <= x & x <= b-38) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (b-37 <= x & x <= b-32) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-31 <= x & x <= b-29) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (x == b-28) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (x == b-27) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (x == b-26) begin
                rgb_reg = 12'h8e0;
                isBean = 1;
            end
            else if (x == b-25) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (x == b-24) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-23 <= x & x <= b-18) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (x == b-17) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-16 <= x & x <= b-13) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-12 <= x & x <= b-9) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-8 <= x & x <= b-4) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-3 <= x & x <= b) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
        end
        else if (y == 298) begin
            if (x == b-44) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-43) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-42 <= x & x <= b-36) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (b-35 <= x & x <= b-32) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-31 <= x & x <= b-28) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-27) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (x == b-26) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (x == b-25) begin
                rgb_reg = 12'h8e0;
                isBean = 1;
            end
            else if (x == b-24) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-23 <= x & x <= b-19) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (b-18 <= x & x <= b-13) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-12 <= x & x <= b-8) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-7) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-6 <= x & x <= b-5) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (b-4 <= x & x <= b-3) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-2 <= x & x <= b) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
        end
        else if (y == 297) begin
            if (x == b-44) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-43) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-42 <= x & x <= b-36) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (b-35 <= x & x <= b-34) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (x == b-33) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (b-32 <= x & x <= b-31) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-30 <= x & x <= b-27) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (b-26 <= x & x <= b-24) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-23 <= x & x <= b-21) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (b-20 <= x & x <= b-18) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-17 <= x & x <= b-14) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (b-13 <= x & x <= b-10) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-9 <= x & x <= b-8) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-7) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-6 <= x & x <= b-5) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (x == b-4) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (b-3 <= x & x <= b-1) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (x == b) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
        end
        else if (y == 296) begin
            if (x == b-44) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (b-43 <= x & x <= b-40) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-39 <= x & x <= b-37) begin
                rgb_reg = 12'h8e0;
                isBean = 1;
            end
            else if (x == b-36) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (x == b-35) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (x == b-34) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-33 <= x & x <= b-32) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (b-31 <= x & x <= b-29) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-28 <= x & x <= b-24) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (b-23 <= x & x <= b-20) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-19 <= x & x <= b-17) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (b-16 <= x & x <= b-14) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-13 <= x & x <= b-11) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (b-10 <= x & x <= b-6) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-5 <= x & x <= b-4) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-3) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-2 <= x & x <= b-1) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (x == b) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
        end
        else if (y == 295) begin
            if (b-44 <= x & x <= b-41) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-40) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-39 <= x & x <= b-37) begin
                rgb_reg = 12'h8e0;
                isBean = 1;
            end
            else if (x == b-36) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (x == b-35) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (x == b-34) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-33 <= x & x <= b-30) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (b-29 <= x & x <= b-23) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-22 <= x & x <= b-18) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-17) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-16 <= x & x <= b-15) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (x == b-14) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-13 <= x & x <= b-8) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-7) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-6 <= x & x <= b-4) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-3) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-2 <= x & x <= b-1) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (x == b) begin
                rgb_reg = 12'h8e0;
                isBean = 1;
            end
        end
        else if (y == 294) begin
            if (b-44 <= x & x <= b-41) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (b-40 <= x & x <= b-35) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (x == b-34) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-33 <= x & x <= b-19) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-18) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-17 <= x & x <= b-15) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
            else if (x == b-14) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-13 <= x & x <= b-8) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-7) begin
                rgb_reg = 12'h742;
                isBean = 1;
            end
            else if (b-6 <= x & x <= b-3) begin
                rgb_reg = 12'hda6;
                isBean = 1;
            end
            else if (x == b-2) begin
                rgb_reg = 12'h273;
                isBean = 1;
            end
            else if (b-1 <= x & x <= b) begin
                rgb_reg = 12'h0a0;
                isBean = 1;
            end
        end
    end
    
    assign isBean_reg = isBean;
    
endmodule
