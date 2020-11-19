`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2020 07:19:38 PM
// Design Name: 
// Module Name: draw_bean_graphic
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

task draw_one_floor_bean(
    input [9:0] x,
    input [9:0] y,
    input integer b,
    output reg [11:0] rgb_reg,    
    output reg isB);
    begin
        isB = 0;
        if(y == 380) begin
            if(((b-24) <= x && x <= (b-23)) || (b-6) <= x && x <= (b-5)) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
            else if(((b-22) <= x && x <= (b-21)) || (b-9) <= x && x <= (b-7)) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
            else if((b-20) <= x && x <= (b-10)) begin
                rgb_reg = 12'hdf0;
                isB = 1;
            end
        end
        else if(y == 379) begin
            if(((b-25) <= x && x <= (b-24)) || (b-5) <= x && x <= (b-4)) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
            else if(((b-23) <= x && x <= (b-21)) || (b-8) <= x && x <= (b-6)) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
            else if((b-20) <= x && x <= (b-9)) begin
                rgb_reg = 12'hdf0;
                isB = 1;
            end
        end
        else if(y == 378) begin
            if(((b-25) <= x && x <= (b-24)) || (b-4) <= x && x <= (b-3)) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
            else if(((b-23) <= x && x <= (b-22)) || (b-7) <= x && x <= (b-5)) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
            else if((b-21) <= x && x <= (b-8)) begin
                rgb_reg = 12'hdf0;
                isB = 1;
            end
        end
        else if(y == 377) begin
            if(((b-26) <= x && x <= (b-25)) || (b-3) <= x && x <= (b-2)) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
            else if(((b-24) <= x && x <= (b-23)) || (b-6) <= x && x <= (b-4)) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
            else if((b-22) <= x && x <= (b-7)) begin
                rgb_reg = 12'hdf0;
                isB = 1;
            end
        end
        else if(y == 376) begin
            if(x == (b-26) || x == (b-2)) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
            else if(((b-25) <= x && x <= (b-23)) || (b-5) <= x && x <= (b-3)) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
            else if((b-22) <= x && x <= (b-6)) begin
                rgb_reg = 12'hdf0;
                isB = 1;
            end
        end
        else if(y == 375) begin
            if(x == (b-26) || x == (b-2)) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
            else if(((b-25) <= x && x <= (b-23)) || (b-5) <= x && x <= (b-3)) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
            else if((b-22) <= x && x <= (b-6)) begin
                rgb_reg = 12'hdf0;
                isB = 1;
            end
        end
        else if(y == 374) begin
            if(x == (b-26) || x == (b-2)) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
            else if(((b-25) <= x && x <= (b-23)) || (b-5) <= x && x <= (b-3)) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
            else if((b-22) <= x && x <= (b-6)) begin
                rgb_reg = 12'hdf0;
                isB = 1;
            end
        end
        else if(y == 373) begin
            if(x == (b-26) || x == (b-2)) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
            else if(((b-25) <= x && x <= (b-23)) || (b-5) <= x && x <= (b-3)) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
            else if((b-22) <= x && x <= (b-6)) begin
                rgb_reg = 12'hdf0;
                isB = 1;
            end
        end
        else if(y == 372) begin
            if(x == (b-26) || x == (b-2)) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
            else if(((b-25) <= x && x <= (b-23)) || (b-5) <= x && x <= (b-3)) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
            else if((b-22) <= x && x <= (b-6)) begin
                rgb_reg = 12'hdf0;
                isB = 1;
            end
        end
        else if(y == 371) begin
            if(x == (b-26) || (b-1) <= x && x <= b) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
            else if(((b-25) <= x && x <= (b-23)) || (b-5) <= x && x <= (b-2)) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
            else if((b-22) <= x && x <= (b-6)) begin
                rgb_reg = 12'hdf0;
                isB = 1;
            end
        end
        else if(y == 370) begin
            if(x == (b-26) || (b-1) <= x && x <= b) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
            else if(((b-25) <= x && x <= (b-23)) || (b-5) <= x && x <= (b-2)) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
            else if((b-22) <= x && x <= (b-6)) begin
                rgb_reg = 12'hdf0;
                isB = 1;
            end
        end
        else if(y == 369) begin
            if(x == (b-26) || (b-1) <= x && x <= b) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
            else if(((b-25) <= x && x <= (b-23)) || (b-5) <= x && x <= (b-2)) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
            else if((b-22) <= x && x <= (b-6)) begin
                rgb_reg = 12'hdf0;
                isB = 1;
            end
        end
        else if(y == 368) begin
            if(((b-25) <= x && x <= (b-24)) || (b-1) <= x && x <= b) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
            else if(((b-23) <= x && x <= (b-21)) || (b-6) <= x && x <= (b-2)) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
            else if((b-20) <= x && x <= (b-7)) begin
                rgb_reg = 12'hdf0;
                isB = 1;
            end
        end
        else if(y == 367) begin
            if(((b-25) <= x && x <= (b-24)) || (b-1) <= x && x <= b) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
            else if(((b-23) <= x && x <= (b-21)) || (b-6) <= x && x <= (b-2)) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
            else if((b-20) <= x && x <= (b-7)) begin
                rgb_reg = 12'hdf0;
                isB = 1;
            end
        end
        else if(y == 366) begin
            if(((b-25) <= x && x <= (b-24)) || (b-1) <= x && x <= b) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
            else if(((b-23) <= x && x <= (b-18)) || (b-9) <= x && x <= (b-2)) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
            else if((b-17) <= x && x <= (b-10)) begin
                rgb_reg = 12'hdf0;
                isB = 1;
            end
        end
        else if(y == 365) begin
            if(((b-25) <= x && x <= (b-22)) || (b-1) <= x && x <= b) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
            else if(((b-21) <= x && x <= (b-18)) || (b-9) <= x && x <= (b-2)) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
            else if((b-17) <= x && x <= (b-10)) begin
                rgb_reg = 12'hdf0;
                isB = 1;
            end
        end
        else if(y == 364) begin
            if(((b-23) <= x && x <= (b-22)) || (b-1) <= x && x <= b) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
            else if((b-21) <= x && x <= (b-2)) begin
                rgb_reg = 12'hdf0;
                isB = 1;
            end
        end
        else if(y == 363) begin
            if(((b-23) <= x && x <= (b-22)) || (b-1) <= x && x <= b) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
            else if(((b-21) <= x && x <= (b-18)) || (b-12) <= x && x <= (b-2)) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
            else if((b-17) <= x && x <= (b-13)) begin
                rgb_reg = 12'h406;
                isB = 1;
            end
        end
        else if(y == 362) begin
            if(((b-23) <= x && x <= (b-22)) || (b-1) <= x && x <= b) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
            else if(((b-21) <= x && x <= (b-18)) || (b-12) <= x && x <= (b-2)) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
            else if((b-17) <= x && x <= (b-13)) begin
                rgb_reg = 12'h406;
                isB = 1;
            end
        end
        else if(y == 361) begin
            if(((b-25) <= x && x <= (b-24)) || (b-1) <= x && x <= b) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
            else if(((b-23) <= x && x <= (b-21)) || (b-7) <= x && x <= (b-3)) begin
                rgb_reg = 12'hdf0;
                isB = 1;
            end
            else if(((b-20) <= x && x <= (b-18)) || x == (b-15) || (b-12) <= x && x <= (b-8)) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
            else if((b-17) <= x && x <= (b-16) || (b-14) <= x && x <= (b-13)) begin
                rgb_reg = 12'h406;
                isB = 1;
            end
        end
        else if(y == 360) begin
            if(((b-25) <= x && x <= (b-24)) || (b-1) <= x && x <= b) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
            else if(((b-23) <= x && x <= (b-21)) || (b-7) <= x && x <= (b-3)) begin
                rgb_reg = 12'hdf0;
                isB = 1;
            end
            else if(((b-20) <= x && x <= (b-18)) || x == (b-15) || (b-12) <= x && x <= (b-8)) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
            else if((b-17) <= x && x <= (b-16) || (b-14) <= x && x <= (b-13)) begin
                rgb_reg = 12'h406;
                isB = 1;
            end
        end
        else if(y == 359) begin
            if(((b-25) <= x && x <= (b-24)) || (b-21) <= x && x <= (b-20) || x == (b-11) || (b-8) <= x && x <= (b-6)) begin
                rgb_reg = 12'h406;
                isB = 1;
            end
            else if(((b-23) <= x && x <= (b-22)) || (b-10) <= x && x <= (b-9)) begin
                rgb_reg = 12'hd6f;
                isB = 1;
            end
            else if(((b-19) <= x && x <= (b-12)) || (b-5) <= x && x <= (b-2)) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
            else if((b-1) <= x && x <= b) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
        end
        else if(y == 358) begin
            if((b-25) == x || (b-23) <= x && x <= (b-18)|| x == (b-12) || (b-10) <= x && x <= (b-6)) begin
                rgb_reg = 12'h406;
                isB = 1;
            end
            else if(x == (b-24) || x == (b-11)) begin
                rgb_reg = 12'hd6f;
                isB = 1;
            end
            else if(((b-17) <= x && x <= (b-13)) || (b-5) <= x && x <= (b-2)) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
            else if((b-1) <= x && x <= b) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
        end
        else if(y == 357) begin
            if((b-25) == x || (b-23) <= x && x <= (b-18)|| x == (b-12) || (b-10) <= x && x <= (b-6)) begin
                rgb_reg = 12'h406;
                isB = 1;
            end
            else if(x == (b-24) || x == (b-11)) begin
                rgb_reg = 12'hd6f;
                isB = 1;
            end
            else if(((b-17) <= x && x <= (b-13)) || (b-5) <= x && x <= (b-2)) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
            else if((b-1) <= x && x <= b) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
        end
        else if(y == 356) begin
            if((b-24) <= x && x <= (b-18)|| (b-11) <= x && x <= (b-5)) begin
                rgb_reg = 12'h406;
                isB = 1;
            end
            else if(x == (b-25) || x == (b-12)) begin
                rgb_reg = 12'hd6f;
                isB = 1;
            end
            else if(((b-17) <= x && x <= (b-13)) || (b-5) <= x && x <= (b-2)) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
            else if((b-1) <= x && x <= b) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
        end
        else if(y == 355) begin
            if((b-24) <= x && x <= (b-18)|| (b-11) <= x && x <= (b-5)) begin
                rgb_reg = 12'h406;
                isB = 1;
            end
            else if(x == (b-25) || x == (b-12)) begin
                rgb_reg = 12'hd6f;
                isB = 1;
            end
            else if(((b-17) <= x && x <= (b-13)) || (b-5) <= x && x <= (b-2)) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
            else if((b-1) <= x && x <= b) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
        end
        else if(y == 354) begin
            if(x == (b-27) || x == (b-14) || (b-24) <= x && x <= (b-17)|| (b-11) <= x && x <= (b-3)) begin
                rgb_reg = 12'h406;
                isB = 1;
            end
            else if((b-26) <= x && x <= (b-25)|| (b-13) <= x && x <= (b-12)) begin
                rgb_reg = 12'hd6f;
                isB = 1;
            end
            else if(((b-16) <= x && x <= (b-15))) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
            else if((b-2) <= x && x <= (b-1)) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
        end
        else if(y == 353) begin
            if(x == (b-27) || x == (b-14) || (b-24) <= x && x <= (b-17)|| (b-11) <= x && x <= (b-3)) begin
                rgb_reg = 12'h406;
                isB = 1;
            end
            else if((b-26) <= x && x <= (b-25)|| (b-13) <= x && x <= (b-12)) begin
                rgb_reg = 12'hd6f;
                isB = 1;
            end
            else if(((b-16) <= x && x <= (b-15))) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
            else if((b-2) == x) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
        end
        else if(y == 352) begin
            if(x == (b-27) || x == (b-14) || (b-24) <= x && x <= (b-17)|| (b-11) <= x && x <= (b-3)) begin
                rgb_reg = 12'h406;
                isB = 1;
            end
            else if((b-26) <= x && x <= (b-25)|| (b-13) <= x && x <= (b-12)) begin
                rgb_reg = 12'hd6f;
                isB = 1;
            end
            else if(((b-16) <= x && x <= (b-15))) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
            else if((b-2) == x) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
        end
        else if(y == 351) begin
            if(x == (b-27) || (b-24) <= x && x <= (b-14)|| (b-11) <= x && x <= (b-1)) begin
                rgb_reg = 12'h406;
                isB = 1;
            end
            else if((b-26) <= x && x <= (b-25)|| (b-13) <= x && x <= (b-12)) begin
                rgb_reg = 12'hd6f;
                isB = 1;
            end
        end
        else if(y == 350) begin
            if(x == (b-27) || (b-24) <= x && x <= (b-14)|| (b-11) <= x && x <= (b-1)) begin
                rgb_reg = 12'h406;
                isB = 1;
            end
            else if((b-26) <= x && x <= (b-25)|| (b-13) <= x && x <= (b-12)) begin
                rgb_reg = 12'hd6f;
                isB = 1;
            end
        end
        else if(y == 349) begin
            if((b-25) <= x && x <= (b-24)|| (b-4) <= x && x <= (b-3)) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
            else if((b-23) <= x && x <= (b-5)) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
        end
        else if(y == 348) begin
            if((b-25) <= x && x <= (b-24)|| (b-4) <= x && x <= (b-3)) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
            else if((b-23) <= x && x <= (b-5)) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
        end
        else if(y == 347) begin
            if((b-25) <= x && x <= (b-24)|| (b-4) <= x && x <= (b-3)) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
            else if((b-23) <= x && x <= (b-5)) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
        end
        else if(y == 346) begin
            if((b-25) <= x && x <= (b-22)|| (b-6) <= x && x <= (b-5)) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
            else if((b-21) <= x && x <= (b-7)) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
        end
        else if(y == 345) begin
            if((b-25) <= x && x <= (b-22)|| (b-7) <= x && x <= (b-5)) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
            else if((b-21) <= x && x <= (b-7)) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
        end
        else if(y == 344) begin
            if((b-22) <= x && x <= (b-19)|| (b-9) <= x && x <= (b-7)) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
            else if((b-18) <= x && x <= (b-10)) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
        end
        else if(y == 343) begin
            if((b-22) <= x && x <= (b-19)|| (b-10) <= x && x <= (b-8)) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
            else if((b-18) <= x && x <= (b-10)) begin
                rgb_reg = 12'h8e0;
                isB = 1;
            end
        end
        else if(y == 342) begin
            if((b-19) <= x && x <= (b-10)) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
        end
        else if(y == 341) begin
            if((b-18) <= x && x <= (b-11)) begin
                rgb_reg = 12'h0a0;
                isB = 1;
            end
        end
    end
endtask