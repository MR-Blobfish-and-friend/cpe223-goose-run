`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2020 02:08:22 PM
// Design Name: 
// Module Name: start
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


module start(
    input [9:0] x, y,
    output [11:0] rgb,
    output isStart_reg
    );
    
    reg [11:0] rgb_reg;
    reg isStart;
    
    always @(*) begin
        isStart = 0;
        if (106 <= y && y <= 107) begin
            if (286 <= x && x <= 301) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (108 <= y && y <= 109) begin
            if (284 <= x && x <= 301) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (110 <= y && y <= 111) begin
            if ((282 <= x && x <= 292) || (298 <= x && x <= 301)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if (293 <= x && x <= 297) begin
                rgb_reg = 12'h000;
                isStart = 1;
            end
            else if (302 <= x && x <= 306) begin
                rgb_reg = 12'heb7;
                isStart = 1;
            end
        end
        else if (y == 112) begin
            if ((279 <= x && x <= 292) || (298 <= x && x <= 301)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if (293 <= x && x <= 297) begin
                rgb_reg = 12'h000;
                isStart = 1;
            end
            else if (302 <= x && x <= 306) begin
                rgb_reg = 12'heb7;
                isStart = 1;
            end
        end
        else if (y == 113) begin
            if ((236 <= x && x <= 292) || (298 <= x && x <= 301)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if (293 <= x && x <= 297) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if (302 <= x && x <= 306) begin
                rgb_reg = 12'heb7;
                isStart = 1;
            end
        end
        else if (y == 114) begin
            if (235 <= x && x <= 301) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if (302 <= x && x <= 311) begin
                rgb_reg = 12'heb7;
                isStart = 1;
            end
        end
        else if (y == 115) begin
            if (234 <= x && x <= 301) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if (302 <= x && x <= 311) begin
                rgb_reg = 12'heb7;
                isStart = 1;
            end
        end
        else if (y == 116) begin
            if (233 <= x && x <= 301) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if (302 <= x && x <= 311) begin
                rgb_reg = 12'heb7;
                isStart = 1;
            end
        end
        else if (117 <= y && y <= 118) begin
            if (232 <= x && x <= 301) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if (302 <= x && x <= 311) begin
                rgb_reg = 12'heb7;
                isStart = 1;
            end
        end
        else if (119 <= y && y <= 122) begin
            if (232 <= x && x <= 297) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if (298 <= x && x <= 316) begin
                rgb_reg = 12'heb7;
                isStart = 1;
            end
        end
        else if (y == 123) begin
            if (232 <= x && x <= 248) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if (249 <= x && x <= 297) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if (298 <= x && x <= 320) begin
                rgb_reg = 12'he81;
                isStart = 1;
            end
        end
        else if (y == 124) begin
            if (232 <= x && x <= 247) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if (248 <= x && x <= 297) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if (298 <= x && x <= 320) begin
                rgb_reg = 12'he81;
                isStart = 1;
            end
        end
        else if (y == 125) begin
            if (232 <= x && x <= 246) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if (247 <= x && x <= 297) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if (298 <= x && x <= 320) begin
                rgb_reg = 12'he81;
                isStart = 1;
            end
        end
        else if (y == 126) begin
            if (232 <= x && x <= 245) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if (246 <= x && x <= 297) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if (298 <= x && x <= 320) begin
                rgb_reg = 12'he81;
                isStart = 1;
            end
        end
        else if (y == 127) begin
            if (232 <= x && x <= 244) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if (245 <= x && x <= 297) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if (298 <= x && x <= 320) begin
                rgb_reg = 12'he81;
                isStart = 1;
            end
        end
        else if (y == 128) begin
            if (232 <= x && x <= 244) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if (245 <= x && x <= 253) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
        end
        else if (y == 129) begin
            if (232 <= x && x <= 244) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if (245 <= x && x <= 252) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
        end
        else if (y == 130) begin
            if (232 <= x && x <= 244) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if (245 <= x && x <= 251) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
        end
        else if (y == 131) begin
            if (232 <= x && x <= 244) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if (245 <= x && x <= 250) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
        end
        else if (132 <= y && y <= 167) begin
            if (232 <= x && x <= 244) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if (245 <= x && x <= 249) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
        end
        else if (y == 168) begin
            if (232 <= x && x <= 244) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((245 <= x && x <= 249) || (x == 333)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if ((342 <= x && x <= 350) || (360 <= x && x <= 368) || 
                    (378 <= x && x <= 386) || (393 <= x && x <= 407)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (y == 169) begin
            if ((232 <= x && x <= 244) || (271 <= x && x <= 286)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((245 <= x && x <= 249) || (332 <= x && x <= 333)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if ((342 <= x && x <= 350) || (360 <= x && x <= 368) ||
                    (378 <= x && x <= 386) || (393 <= x && x <= 407)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (y == 170) begin
            if ((232 <= x && x <= 244) || (265 <= x && x <= 295) ||
                (x == 330)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((245 <= x && x <= 249) || (331 <= x && x <= 333)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if ((342 <= x && x <= 350) || (360 <= x && x <= 368) ||
                    (378 <= x && x <= 386) || (393 <= x && x <= 407)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (y == 171) begin
            if ((232 <= x && x <= 244) || (262 <= x && x <= 303) ||
                (329 <= x && x <= 330)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((245 <= x && x <= 249) || (331 <= x && x <= 333)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if ((339 <= x && x <= 341) || (351 <= x && x <= 353) ||
                (357 <= x && x <= 359) || (369 <= x && x <= 371) || 
                (375 <= x && x <= 377) || (387 <= x && x <= 389) || 
                (393 <= x && x <= 395)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (y == 172) begin
            if ((232 <= x && x <= 244) || (258 <= x && x <= 310) ||
                (328 <= x && x <= 330)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((245 <= x && x <= 249) || (331 <= x && x <= 333)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if ((339 <= x && x <= 341) || (351 <= x && x <= 353) ||
                (357 <= x && x <= 359) || (369 <= x && x <= 371) || 
                (375 <= x && x <= 377) || (387 <= x && x <= 389) ||
                (393 <= x && x <= 395)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (y == 173) begin
            if ((232 <= x && x <= 244) || (255 <= x && x <= 313) ||
                (328 <= x && x <= 330)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((245 <= x && x <= 249) || (331 <= x && x <= 333)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if ((339 <= x && x <= 341) || (351 <= x && x <= 353) ||
                (357 <= x && x <= 359) || (369 <= x && x <= 371) ||
                (375 <= x && x <= 377) || (387 <= x && x <= 389) ||
                (393 <= x && x <= 395)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (y == 174) begin
            if ((232 <= x && x <= 244) || (253 <= x && x <= 315) ||
                (326 <= x && x <= 330)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((245 <= x && x <= 249) || (331 <= x && x <= 333)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if ((339 <= x && x <= 341) || (351 <= x && x <= 353) ||
                (357 <= x && x <= 359) || (369 <= x && x <= 371) ||
                (375 <= x && x <= 377) || (387 <= x && x <= 389) ||
                (393 <= x && x <= 395)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (y == 175) begin
            if ((232 <= x && x <= 244) || (251 <= x && x <= 317) ||
                (324 <= x && x <= 330)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((245 <= x && x <= 249) || (331 <= x && x <= 333)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if ((339 <= x && x <= 341) || (351 <= x && x <= 353) ||
                (357 <= x && x <= 359) || (369 <= x && x <= 371) ||
                (375 <= x && x <= 377) || (387 <= x && x <= 389) ||
                (393 <= x && x <= 395)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (y == 176) begin
            if (232 <= x && x <= 330) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if (331 <= x && x <= 333) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if ((339 <= x && x <= 341) || (351 <= x && x <= 353) ||
                (357 <= x && x <= 359) || (369 <= x && x <= 371) ||
                (375 <= x && x <= 377) || (387 <= x && x <= 389) ||
                (393 <= x && x <= 395)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (177 <= y && y <= 180) begin
            if (232 <= x && x <= 330) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if (331 <= x && x <= 333) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if ((339 <= x && x <= 341) || (351 <= x && x <= 353) ||
                (357 <= x && x <= 359) || (369 <= x && x <= 371) ||
                (375 <= x && x <= 377) || (393 <= x && x <= 395)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (181 <= y && y <= 182) begin
            if (232 <= x && x <= 330) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if (331 <= x && x <= 333) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if ((339 <= x && x <= 341) || (351 <= x && x <= 353) ||
                (357 <= x && x <= 359) || (369 <= x && x <= 371) ||
                (378 <= x && x <= 386) || (393 <= x && x <= 407)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (y == 183) begin
            if ((232 <= x && x <= 269) || (304 <= x && x <= 330)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((270 <= x && x <= 303) || (331 <= x && x <= 333) ||
                (339 <= x && x <= 341) || (351 <= x && x <= 353) ||
                (357 <= x && x <= 359) || (369 <= x && x <= 371) ||
                (378 <= x && x <= 386) || (393 <= x && x <= 407)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
        end
        else if (y == 184) begin
            if ((232 <= x && x <= 266) || (305 <= x && x <= 330)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((267 <= x && x <= 304) || (331 <= x && x <= 333)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if ((339 <= x && x <= 341) || (351 <= x && x <= 353) ||
                (357 <= x && x <= 359) || (369 <= x && x <= 371) ||
                (387 <= x && x <= 389) || (393 <= x && x <= 395)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (185 <= y && y <= 188) begin
            if ((232 <= x && x <= 302) || (306 <= x && x <= 330)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((303 <= x && x <= 305) || (331 <= x && x <= 333)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if ((339 <= x && x <= 341) || (351 <= x && x <= 353) ||
                (357 <= x && x <= 359) || (369 <= x && x <= 371) ||
                (387 <= x && x <= 389) ||  (393 <= x && x <= 395)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (189 <= y && y <= 190) begin
            if ((232 <= x && x <= 301) || (305 <= x && x <= 330)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((302 <= x && x <= 304) || (331 <= x && x <= 333)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if ((339 <= x && x <= 341) || (351 <= x && x <= 353) ||
                (357 <= x && x <= 359) || (369 <= x && x <= 371) ||
                (375 <= x && x <= 377) || (387 <= x && x <= 389) ||
                (393 <= x && x <= 395)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (191 <= y && y <= 192) begin
            if ((232 <= x && x <= 299) || (303 <= x && x <= 330)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((300 <= x && x <= 302) || (331 <= x && x <= 333)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if ((339 <= x && x <= 341) || (351 <= x && x <= 353) ||
                (357 <= x && x <= 359) || (369 <= x && x <= 371) ||
                (375 <= x && x <= 377) || (387 <= x && x <= 389) ||
                (393 <= x && x <= 395)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (193 <= y && y <= 194) begin
            if ((232 <= x && x <= 298) || (302 <= x && x <= 330)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((299 <= x && x <= 301) || (331 <= x && x <= 333)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if ((339 <= x && x <= 341) || (351 <= x && x <= 353) ||
                (357 <= x && x <= 359) || (369 <= x && x <= 371) ||
                (375 <= x && x <= 377) || (387 <= x && x <= 389) ||
                (393 <= x && x <= 395)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (195 <= y && y <= 197) begin
            if ((232 <= x && x <= 297) || (301 <= x && x <= 330)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((298 <= x && x <= 300) || (331 <= x && x <= 333)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if ((342 <= x && x <= 350) || (360 <= x && x <= 368) ||
                (378 <= x && x <= 386) || (393 <= x && x <= 407)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (y == 198) begin
            if ((232 <= x && x <= 295) || (300 <= x && x <= 330)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((296 <= x && x <= 299) || (331 <= x && x <= 333)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
        end
        else if (y == 199) begin
            if ((232 <= x && x <= 294) || (299 <= x && x <= 330)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((295 <= x && x <= 298) || (331 <= x && x <= 333)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
        end
        else if (y == 200) begin
            if ((232 <= x && x <= 293) || (298 <= x && x <= 330)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((294 <= x && x <= 297) || (331 <= x && x <= 333)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
        end
        else if (y == 201) begin
            if ((232 <= x && x <= 292) || (297 <= x && x <= 330)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((293 <= x && x <= 296) || (331 <= x && x <= 333)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
        end
        else if (y == 202) begin
            if ((232 <= x && x <= 291) || (296 <= x && x <= 330)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((292 <= x && x <= 295) || (331 <= x && x <= 333)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
        end
        else if (y == 203) begin
            if ((232 <= x && x <= 290) || (295 <= x && x <= 330)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((291 <= x && x <= 294) || (331 <= x && x <= 333)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
        end
        else if (y == 204) begin
            if ((232 <= x && x <= 289) || (294 <= x && x <= 330)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((290 <= x && x <= 293) || (331 <= x && x <= 333)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
        end
        else if (y == 205) begin
            if ((232 <= x && x <= 288) || (293 <= x && x <= 330)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((289 <= x && x <= 292) || (331 <= x && x <= 333)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
        end
        else if (y == 206) begin
            if ((232 <= x && x <= 286) || (291 <= x && x <= 330)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((287 <= x && x <= 290) || (331 <= x && x <= 333)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
        end
        else if (y == 207) begin
            if ((232 <= x && x <= 286) || (291 <= x && x <= 330)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((285 <= x && x <= 290) || (331 <= x && x <= 333)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
        end
        else if (y == 208) begin
            if ((232 <= x && x <= 282) || (289 <= x && x <= 330)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((283 <= x && x <= 288) || (331 <= x && x <= 333)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
        end
        else if (209 <= y && y <= 210) begin
            if ((232 <= x && x <= 279) || (287 <= x && x <= 330)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((280 <= x && x <= 286) || (331 <= x && x <= 333)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
        end
        else if (211 <= y && y <= 212) begin
            if ((232 <= x && x <= 271) || (283 <= x && x <= 330)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((272 <= x && x <= 282) || (331 <= x && x <= 333)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if ((345 <= x && x <= 347) || (357 <= x && x <= 359) ||
                (369 <= x && x <= 371) || (375 <= x && x <= 389)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (y == 213) begin
            if ((232 <= x && x <= 263) || (278 <= x && x <= 330)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((264 <= x && x <= 277) || (331 <= x && x <= 333)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if ((345 <= x && x <= 347) || (357 <= x && x <= 359) ||
                (369 <= x && x <= 371) || (375 <= x && x <= 389)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (y == 214) begin
            if ((232 <= x && x <= 263) || (274 <= x && x <= 330)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((264 <= x && x <= 273) || (331 <= x && x <= 333)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if ((342 <= x && x <= 344) || (348 <= x && x <= 350) ||
                (357 <= x && x <= 359) || (369 <= x && x <= 371) ||
                (375 <= x && x <= 377)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (215 <= y && y <= 216) begin
            if (232 <= x && x <= 329) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if (330 <= x && x <= 333) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if ((342 <= x && x <= 344) || (348 <= x && x <= 350) ||
                (357 <= x && x <= 361) || (367 <= x && x <= 371) ||
                (375 <= x && x <= 377)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (217 <= y && y <= 218) begin
            if (232 <= x && x <= 327) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if (328 <= x && x <= 333) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if ((339 <= x && x <= 341) || (351 <= x && x <= 353) ||
                (357 <= x && x <= 361) || (367 <= x && x <= 371) ||
                (375 <= x && x <= 377)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (219 <= y && y <= 220) begin
            if (232 <= x && x <= 325) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if (326 <= x && x <= 332) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if ((339 <= x && x <= 341) || (351 <= x && x <= 353) ||
                (357 <= x && x <= 362) || (366 <= x && x <= 371) ||
                (375 <= x && x <= 377)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (y == 221) begin
            if (232 <= x && x <= 323) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if (324 <= x && x <= 331) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if ((339 <= x && x <= 341) || (351 <= x && x <= 353) ||
                (357 <= x && x <= 362) || (366 <= x && x <= 371) ||
                (375 <= x && x <= 377)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (y == 222) begin
            if (232 <= x && x <= 323) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if (324 <= x && x <= 329) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if ((339 <= x && x <= 341) || (351 <= x && x <= 353) ||
                (357 <= x && x <= 359) || (362 <= x && x <= 366) ||
                (369 <= x && x <= 371) || (375 <= x && x <= 377)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (y == 223) begin
            if (232 <= x && x <= 321) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if (322 <= x && x <= 327) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if ((339 <= x && x <= 341) || (351 <= x && x <= 353) ||
                (357 <= x && x <= 359) || (362 <= x && x <= 366) ||
                (369 <= x && x <= 371) || (375 <= x && x <= 377)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (y == 224) begin
            if (232 <= x && x <= 321) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if (321 <= x && x <= 325) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if ((339 <= x && x <= 353) || (357 <= x && x <= 359) ||
                (363 <= x && x <= 365) || (369 <= x && x <= 371) ||
                (375 <= x && x <= 389)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (y == 225) begin
            if (232 <= x && x <= 318) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if (319 <= x && x <= 323) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if ((339 <= x && x <= 353) || (357 <= x && x <= 359) ||
                (363 <= x && x <= 365) || (369 <= x && x <= 371) ||
                (375 <= x && x <= 389)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (y == 226) begin
            if (232 <= x && x <= 315) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if (316 <= x && x <= 321) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if ((339 <= x && x <= 353) || (357 <= x && x <= 359) ||
                (369 <= x && x <= 371) || (375 <= x && x <= 389)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (y == 227) begin
            if ((x == 232) || (314 <= x && x <= 319)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if (233 <= x && x <= 313) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((339 <= x && x <= 341) || (351 <= x && x <= 353) ||
                (357 <= x && x <= 359) || (369 <= x && x <= 371) ||
                (375 <= x && x <= 377)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (y == 228) begin
            if ((232 <= x && x <= 233) || (312 <= x && x <= 317)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if (234 <= x && x <= 311) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((339 <= x && x <= 341) || (351 <= x && x <= 353) ||
                (357 <= x && x <= 359) || (369 <= x && x <= 371) ||
                (375 <= x && x <= 377)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (y == 229) begin
            if ((232 <= x && x <= 233) || (311 <= x && x <= 315)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if (234 <= x && x <= 310) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((339 <= x && x <= 341) || (351 <= x && x <= 353) ||
                (357 <= x && x <= 359) || (369 <= x && x <= 371) ||
                (375 <= x && x <= 377)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (y == 230) begin
            if ((232 <= x && x <= 234) || (309 <= x && x <= 313)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if (235 <= x && x <= 308) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if (339 <= x && x <= 341) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((351 <= x && x <= 353) || (357 <= x && x <= 359) ||
                (369 <= x && x <= 371) || (375 <= x && x <= 377)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (y == 231) begin
            if ((232 <= x && x <= 235) || (307 <= x && x <= 311)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if (236 <= x && x <= 306) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((339 <= x && x <= 341) || (351 <= x && x <= 353) ||
                (357 <= x && x <= 359) || (369 <= x && x <= 371) ||
                (375 <= x && x <= 377)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (y == 232) begin
            if ((233 <= x && x <= 236) || (305 <= x && x <= 309)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if (237 <= x && x <= 304) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((339 <= x && x <= 341) || (351 <= x && x <= 353) ||
                (357 <= x && x <= 359) || (369 <= x && x <= 371) ||
                (375 <= x && x <= 377)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (y == 233) begin
            if ((233 <= x && x <= 238) || (303 <= x && x <= 307)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if (239 <= x && x <= 302) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((339 <= x && x <= 341) || (351 <= x && x <= 353) ||
                (357 <= x && x <= 359) || (369 <= x && x <= 371) ||
                (375 <= x && x <= 377)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (y == 234) begin
            if ((234 <= x && x <= 239) || (301 <= x && x <= 305)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if (240 <= x && x <= 300) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((339 <= x && x <= 341) || (351 <= x && x <= 353) ||
                (357 <= x && x <= 359) || (369 <= x && x <= 371) ||
                (375 <= x && x <= 377)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (y == 235) begin
            if ((236 <= x && x <= 240) || (299 <= x && x <= 303)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if (241 <= x && x <= 298) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((339 <= x && x <= 341) || (351 <= x && x <= 353) ||
                (357 <= x && x <= 359) || (369 <= x && x <= 371) ||
                (375 <= x && x <= 377)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (y == 236) begin
            if ((238 <= x && x <= 242) || (296 <= x && x <= 301)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if (243 <= x && x <= 295) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((339 <= x && x <= 341) || (351 <= x && x <= 353) ||
                (357 <= x && x <= 359) || (369 <= x && x <= 371) ||
                (375 <= x && x <= 377)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (y == 237) begin
            if ((240 <= x && x <= 245) || (292 <= x && x <= 299)) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if (246 <= x && x <= 291) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
            else if ((339 <= x && x <= 341) || (351 <= x && x <= 353) ||
                (357 <= x && x <= 359) || (369 <= x && x <= 371) ||
                (375 <= x && x <= 377)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (y == 238) begin
            if (242 <= x && x <= 297) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if ((339 <= x && x <= 341) || (351 <= x && x <= 353) ||
                (357 <= x && x <= 359) || (369 <= x && x <= 371) ||
                (375 <= x && x <= 389)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (y == 239) begin
            if (244 <= x && x <= 295) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if ((339 <= x && x <= 341) || (351 <= x && x <= 353) ||
                (357 <= x && x <= 359) || (369 <= x && x <= 371) ||
                (375 <= x && x <= 389)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
        else if (y == 240) begin
            if (246 <= x && x <= 291) begin
                rgb_reg = 12'hdef;
                isStart = 1;
            end
            else if ((339 <= x && x <= 341) || (351 <= x && x <= 353) ||
                (357 <= x && x <= 359) || (369 <= x && x <= 371) ||
                (375 <= x && x <= 389)) begin
                rgb_reg = 12'hfff;
                isStart = 1;
            end
        end
    end
    
    assign isStart_reg = isStart;
    assign rgb = rgb_reg;
    
endmodule
