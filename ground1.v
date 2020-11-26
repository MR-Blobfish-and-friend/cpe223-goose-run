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
    input phase,
    output [11:0] rgb,
    output isGround_reg
    );
    
    reg [11:0] rgb_reg;
    reg isGround;
    
    always @(*) begin
        assign isGround = 0;
        if (phase==1) begin
            if (385 <= y && y <= 397) begin
                if (0 <= x && x <= 127) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
                end
            end
            else if (398 <= y &&y <= 401) begin
                if (0 <= x && x <= 5) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (6 <= x && x <= 34) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
                end
                else if (35 <= x && x <= 69) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (70 <= x && x <= 99) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
                end
                else if (100 <= x && x <= 127) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (402 <= y &&y <= 404) begin
                if (0 <= x && x <= 8) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (9 <= x && x <= 20) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
                end
                else if (21 <= x && x <= 78) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (79 <= x && x <= 90) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
                end
                else if (91 <= x && x <= 127) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (405 <= y && y <= 406) begin
                if (0 <= x && x <= 127) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (407 <= y && y <= 409) begin
                if (0 <= x && x <= 25) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (26 <= x && x <= 28) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (29 <= x && x <= 64) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (65 <= x && x <= 67) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (68 <= x && x <= 102) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (103 <= x && x <= 105) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (106 <= x && x <= 127) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (410 <= y && y <= 412) begin
                if (0 <= x && x <= 9) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (10 <= x && x <= 14) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (15 <= x && x <= 48) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (49 <= x && x <= 53) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (54 <= x && x <= 86) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (87 <= x && x <= 91) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (92 <= x && x <= 127) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (413 <= y && y <= 414) begin
                if (0 <= x && x <= 9) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (10 <= x && x <= 17) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (18 <= x && x <= 48) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (49 <= x && x <= 56) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (57 <= x && x <= 86) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (87 <= x && x <= 94) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (95 <= x && x <= 127) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (415 <= y && y <= 419) begin
                if (0 <= x && x <= 12) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (13 <= x && x <= 17) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (18 <= x && x <= 51) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (52 <= x && x <= 56) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (57 <= x && x <= 89) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (90 <= x && x <= 94) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (95 <= x && x <= 127) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (420 <= y && y <= 480) begin
                if (0 <= x && x <= 127) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
        end
        
        if (phase==2) begin
            if (385 <= y && y <= 397) begin
                if (128 <= x && x <= 255) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
                end
            end
            else if (398 <= y &&y <= 401) begin
                if (128 <= x && x <= 144) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (145 <= x && x <= 174) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
                end
                else if (175 <= x && x <= 233) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (234 <= x && x <= 255) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
                end
            end
            else if (402 <= y &&y <= 404) begin
                if (128 <= x && x <= 158) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (159 <= x && x <= 170) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
                end
                else if (171 <= x && x <= 240) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (241 <= x && x <= 252) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
                end
                else if (253 <= x && x <= 255) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (405 <= y && y <= 406) begin
                if (128 <= x && x <= 255) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (407 <= y && y <= 409) begin
                if (128 <= x && x <= 143) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (144 <= x && x <= 146) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (147 <= x && x <= 181) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (182 <= x && x <= 184) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (185 <= x && x <= 220) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (221 <= x && x <= 223) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (224 <= x && x <= 255) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (410 <= y && y <= 412) begin
                if (128 <= x && x <= 132) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (133 <= x && x <= 165) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (166 <= x && x <= 170) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (171 <= x && x <= 204) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (205 <= x && x <= 209) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (210 <= x && x <= 243) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (244 <= x && x <= 248) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (249 <= x && x <= 255) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (413 <= y && y <= 414) begin
                if (128 <= x && x <= 135) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (136 <= x && x <= 165) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (166 <= x && x <= 173) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (174 <= x && x <= 204) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (205 <= x && x <= 212) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (213 <= x && x <= 243) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (244 <= x && x <= 251) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (252 <= x && x <= 255) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (415 <= y && y <= 419) begin
                if (128 <= x && x <= 130) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (131 <= x && x <= 135) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (136 <= x && x <= 168) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (169 <= x && x <= 173) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (174 <= x && x <= 207) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (208 <= x && x <= 212) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (213 <= x && x <= 246) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (247 <= x && x <= 251) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (252 <= x && x <= 255) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                
            end
            else if (420 <= y && y <= 480) begin
                if (128 <= x && x <= 255) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
        end
        
        if (phase==3) begin
            if (385 <= y && y <= 397) begin
                if (256 <= x && x <= 384) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
                end
            end
            else if (398 <= y &&y <= 401) begin
                if (256 <= x && x <= 263) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
                end
                else if (264 <= x && x <= 319) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (320 <= x && x <= 349) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
                end
                else if (350 <= x && x <= 384) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (402 <= y &&y <= 404) begin
                if (256 <= x && x <= 335) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (336 <= x && x <= 347) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
                end
                else if (348 <= x && x <= 384) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (405 <= y && y <= 406) begin
                if (256 <= x && x <= 384) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (407 <= y && y <= 409) begin
                if (256 <= x && x <= 257) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (258 <= x && x <= 260) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (261 <= x && x <= 295) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (296 <= x && x <= 298) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (299 <= x && x <= 334) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (335 <= x && x <= 337) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (338 <= x && x <= 373) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (374 <= x && x <= 376) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (377 <= x && x <= 384) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (410 <= y && y <= 412) begin
                if (256 <= x && x <= 279) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (280 <= x && x <= 284) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (285 <= x && x <= 318) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (319 <= x && x <= 323) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (324 <= x && x <= 357) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (358 <= x && x <= 362) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (363 <= x && x <= 384) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (413 <= y && y <= 414) begin
                if (256 <= x && x <= 279) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (280 <= x && x <= 287) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (288 <= x && x <= 318) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (319 <= x && x <= 326) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (327 <= x && x <= 357) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (358 <= x && x <= 365) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (366 <= x && x <= 384) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (415 <= y && y <= 419) begin
                if (256 <= x && x <= 282) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (283 <= x && x <= 287) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (288 <= x && x <= 321) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (322 <= x && x <= 326) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (327 <= x && x <= 360) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (361 <= x && x <= 365) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (366 <= x && x <= 384) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (420 <= y && y <= 480) begin
                if (256 <= x && x <= 384) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
        end
        
        if (phase==4) begin
            if (385 <= y && y <= 397) begin
                if (385 <= x && x <= 511) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
                end
            end
            else if (398 <= y &&y <= 401) begin
                if (385 <= x && x <= 403) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (404 <= x && x <= 433) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
                end
                else if (434 <= x && x <= 499) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (500 <= x && x <= 511) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
                end
            end
            else if (402 <= y &&y <= 404) begin
                if (385 <= x && x <= 414) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (415 <= x && x <= 426) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
                end
                else if (427 <= x && x <= 506) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (507 <= x && x <= 511) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
                end
            end
            else if (405 <= y && y <= 406) begin
                if (385 <= x && x <= 511) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (407 <= y && y <= 409) begin
                if (385 <= x && x <= 411) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (412 <= x && x <= 414) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (415 <= x && x <= 450) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (451 <= x && x <= 453) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (454 <= x && x <= 489) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (490 <= x && x <= 492) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (493 <= x && x <= 511) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (410 <= y && y <= 412) begin
                if (385 <= x && x <= 395) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (396 <= x && x <= 400) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (401 <= x && x <= 434) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (435 <= x && x <= 439) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (440 <= x && x <= 473) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (474 <= x && x <= 478) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (479 <= x && x <= 511) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (413 <= y && y <= 414) begin
                if (385 <= x && x <= 395) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (396 <= x && x <= 403) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (404 <= x && x <= 434) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (435 <= x && x <= 442) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (443 <= x && x <= 473) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (474 <= x && x <= 481) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (482 <= x && x <= 511) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (415 <= y && y <= 419) begin
                if (385 <= x && x <= 398) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (399 <= x && x <= 403) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (404 <= x && x <= 437) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (438 <= x && x <= 442) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (443 <= x && x <= 476) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (477 <= x && x <= 481) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (482 <= x && x <= 511) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (420 <= y && y <= 480) begin
                if (385 <= x && x <= 511) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
        end
        
        if (phase==5) begin
            if (385 <= y && y <= 397) begin
                if (512 <= x && x <= 640) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
                end
            end
            else if (398 <= y &&y <= 401) begin
                if (512 <= x && x <= 529) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
                end
                else if (530 <= x && x <= 554) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (555 <= x && x <= 584) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
                end
                else if (585 <= x && x <= 615) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (616 <= x && x <= 640) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
                end
            end
            else if (402 <= y &&y <= 404) begin
                if (512 <= x && x <= 518) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
                end
                else if (519 <= x && x <= 558) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (559 <= x && x <= 570) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
                end
                else if (571 <= x && x <= 622) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (623 <= x && x <= 634) begin
                    rgb_reg = 12'h0a0;
                    isGround = 1;
                end
                else if (635 <= x && x <= 640) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (405 <= y && y <= 406) begin
                if (512 <= x && x <= 640) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (407 <= y && y <= 409) begin
                if (512 <= x && x <= 528) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (529 <= x && x <= 531) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (532 <= x && x <= 566) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (567 <= x && x <= 569) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (570 <= x && x <= 604) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (605 <= x && x <= 607) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (608 <= x && x <= 640) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (410 <= y && y <= 412) begin
                if (x == 512) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (513 <= x && x <= 517) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (518 <= x && x <= 550) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (551 <= x && x <= 555) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (555 <= x && x <= 588) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (589 <= x && x <= 593) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (594 <= x && x <= 626) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (627 <= x && x <= 631) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (632 <= x && x <= 640) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (413 <= y && y <= 414) begin
                if (x == 512) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (513 <= x && x <= 520) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (521 <= x && x <= 550) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (551 <= x && x <= 558) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (559 <= x && x <= 588) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (589 <= x && x <= 596) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (597 <= x && x <= 626) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (627 <= x && x <= 634) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (635 <= x && x <= 640) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (415 <= y && y <= 419) begin
                if (512 <= x && x <= 515) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (516 <= x && x <= 520) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (521 <= x && x <= 553) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (554 <= x && x <= 558) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (559 <= x && x <= 591) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (592 <= x && x <= 596) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (597 <= x && x <= 629) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
                else if (630 <= x && x <= 634) begin
                    rgb_reg = 12'hda6;
                    isGround = 1;
                end
                else if (635 <= x && x <= 640) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
            else if (420 <= y && y <= 480) begin
                if (512 <= x && x <= 640) begin
                    rgb_reg = 12'h742;
                    isGround = 1;
                end
            end
        end
    end
    
    assign isGround_reg = isGround;
    
endmodule
