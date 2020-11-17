`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2020 11:27:43
// Design Name: 
// Module Name: Gslide
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


module Gslide(
    input x, y,
    output [11:0] rgb,
    output isGoose_reg
    );
    
    reg [11:0] rgb_reg;
    reg isGoose;
    
    always @(*)
    begin
        assign isGoose = 0;
        if( y == 80)
            if(17 <= x && x <= 22)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
        else if( y == 79)
            if(17 <= x && x <= 22)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
        else if( y == 78)
            if(17 <= x && x <= 18)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
        else if( y == 77)
            if((17 <= x && x <= 18)||(27 <= x && x <= 32))
            begin
                rgb_reg = 12'he81;
                isGoose = 1;
            end
        else if( y == 76)
            if((17 <= x && x <= 18)||(27 <= x && x <= 32))
            begin
                rgb_reg = 12'he81;
                isGoose = 1;
            end
        else if( y == 75)
            if(17 <= x && x <= 20)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if(27 <= x && x <= 28)
            begin
                rgb_reg = 12'he81;
                isGoose = 1;
            end
        else if( y == 74)
            if(17 <= x && x <= 20)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if(27 <= x && x <= 28)
            begin
                rgb_reg = 12'he81;
                isGoose = 1;
            end
        else if( y == 73)
            if((15 <= x && x <= 16)||(27 <= x && x <= 30))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if(17 <= x && x <= 22)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        else if( y == 72)
            if((15 <= x && x <= 16)||(27 <= x && x <= 30))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if(17 <= x && x <= 22)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 71)
            if((15 <= x && x <= 16)||(27 <= x && x <= 30))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if(17 <= x && x <= 22)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 70)
            if((15 <= x && x <= 18)||(23 <= x && x <= 31))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if(19 <= x && x <= 22)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 69)
            if((15 <= x && x <= 18)||(23 <= x && x <= 31))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if(19 <= x && x <= 22)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 68)
            if((13 <= x && x <= 22)||(30 <= x && x <= 33))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if(23 <= x && x <= 29)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 67)
            if((13 <= x && x <= 22)||(30 <= x && x <= 33))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if(23 <= x && x <= 29)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 66)
            if((11 <= x && x <= 12)||(19 <= x && x <= 20)||(32 <= x && x <= 34))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((13 <= x && x <= 18)||(21 <= x && x <= 31))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 65)
            if((11 <= x && x <= 12)||(19 <= x && x <= 20)||(32 <= x && x <= 35))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((13 <= x && x <= 18)||(21 <= x && x <= 31))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 64)
            if((11 <= x && x <= 12)||(19 <= x && x <= 20)||(32 <= x && x <= 36))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((13 <= x && x <= 18)||(21 <= x && x <= 31))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 63)
            if((9 <= x && x <= 10)||(21 <= x && x <= 22)||(34 <= x && x <= 37))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((11 <= x && x <= 20)||(23 <= x && x <= 33))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 62)
            if((9 <= x && x <= 10)||(21 <= x && x <= 22)||(34 <= x && x <= 37))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((11 <= x && x <= 20)||(23 <= x && x <= 33))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 61)
            if((7 <= x && x <= 12)||(23 <= x && x <= 24)||(36 <= x && x <= 37))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((13 <= x && x <= 22)||(25 <= x && x <= 35))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 60)
            if((7 <= x && x <= 12)||(23 <= x && x <= 24)||(36 <= x && x <= 38))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((13 <= x && x <= 22)||(25 <= x && x <= 35))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 59)
            if((5 <= x && x <= 8)||(37 <= x && x <= 38))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((9 <= x && x <= 36))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 58)
            if((5 <= x && x <= 8)||(37 <= x && x <= 38))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((9 <= x && x <= 36))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 57)
            if((4 <= x && x <= 5)||(7 <= x && x <= 8)||(37 <= x && x <= 38))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((x == 6)||(9 <= x && x <= 36))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 56)
            if((4 <= x && x <= 5)||(7 <= x && x <= 8)||(38 <= x && x <= 39))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((x == 6)||(9 <= x && x <= 37))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 55)
            if((4 <= x && x <= 5)||(7 <= x && x <= 8)||(38 <= x && x <= 39))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((x == 6)||(9 <= x && x <= 37))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        else if( y == 54)
            if(38 <= x && x <= 39)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if(2 <= x && x <= 37)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        else if( y == 53)
            if(x == 39)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if(2 <= x && x <= 38)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        else if( y == 52)
            if(x == 40)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((2 <= x && x <= 6)||(11 <= x && x <= 39))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        else if( y == 51)
            if(x == 41)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((2 <= x && x <= 6)||(11 <= x && x <= 40))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        else if( y == 50)
            if(x == 42)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((2 <= x && x <= 3)||(15 <= x && x <= 41))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        else if( y == 49)
            if(42 <= x && x <= 44)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((2 <= x && x <= 3)||(15 <= x && x <= 41))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        else if( y == 48)
            if(43 <= x && x <= 45)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((2 <= x && x <= 3)||(15 <= x && x <= 42))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        else if( y == 47)
            if(44 <= x && x <= 49)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if(19 <= x && x <= 43)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if(50 <= x && x <= 59)
            begin
                rgb_reg = 12'he81;
                isGoose = 1;
            end
        else if( y == 46)
            if(46 <= x && x <= 49)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if(38 <= x && x <= 45)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if(50 <= x && x <= 59)
            begin
                rgb_reg = 12'he81;
                isGoose = 1;
            end
        else if( y == 45)
            if(40 <= x && x <= 49)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if(50 <= x && x <= 57)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
        else if( y == 44)
            if(40 <= x && x <= 49)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if(50 <= x && x <= 57)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
        else if( y == 43)
            if(42 <= x && x <= 51)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if(52 <= x && x <= 55)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
        else if( y == 42)
            if(42 <= x && x <= 51)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if(52 <= x && x <= 55)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
        else if( y == 41)
            if((42 <= x && x <= 47)||(50 <= x && x <= 51))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if(52 <= x && x <= 53)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
            else if(48 <= x && x <= 49)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
        else if( y == 40)
            if((42 <= x && x <= 47)||(50 <= x && x <= 51))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if(52 <= x && x <= 53)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
            else if(48 <= x && x <= 49)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
        else if( y == 39)
            if(42 <= x && x <= 51)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        else if( y == 38)
            if(44 <= x && x <= 51)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        else if( y == 37)
            if(44 <= x && x <= 51)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
    end
    
    assign isGoose_reg = isGoose;
endmodule
