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
        if( y == 380)
            if(115 <= x && x <= 120)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
        else if( y == 379)
            if(115 <= x && x <= 120)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
        else if( y == 378)
            if(115 <= x && x <= 116)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
        else if( y == 377)
            if((115 <= x && x <= 116)||(125 <= x && x <= 130))
            begin
                rgb_reg = 12'he81;
                isGoose = 1;
            end
        else if( y == 376)
            if((115 <= x && x <= 116)||(125 <= x && x <= 130))
            begin
                rgb_reg = 12'he81;
                isGoose = 1;
            end
        else if( y == 375)
            if(115 <= x && x <= 118)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if(125 <= x && x <= 126)
            begin
                rgb_reg = 12'he81;
                isGoose = 1;
            end
        else if( y == 374)
            if(115 <= x && x <= 118)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if(125 <= x && x <= 126)
            begin
                rgb_reg = 12'he81;
                isGoose = 1;
            end
        else if( y == 373)
            if((113 <= x && x <= 114)||(125 <= x && x <= 128))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if(115 <= x && x <= 120)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        else if( y == 372)
            if((113 <= x && x <= 114)||(125 <= x && x <= 128))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if(115 <= x && x <= 120)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 371)
            if((113 <= x && x <= 114)||(125 <= x && x <= 128))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if(115 <= x && x <= 120)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 370)
            if((113 <= x && x <= 116)||(121 <= x && x <= 129))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if(117 <= x && x <= 120)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 369)
            if((113 <= x && x <= 116)||(121 <= x && x <= 129))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if(117 <= x && x <= 120)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 368)
            if((111 <= x && x <= 120)||(128 <= x && x <= 131))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if(121 <= x && x <= 127)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 367)
            if((111 <= x && x <= 120)||(128 <= x && x <= 131))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if(121 <= x && x <= 127)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 366)
            if((109 <= x && x <= 110)||(117 <= x && x <= 118)||(130 <= x && x <= 132))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((111 <= x && x <= 116)||(119 <= x && x <= 129))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 365)
            if((109 <= x && x <= 110)||(117 <= x && x <= 118)||(130 <= x && x <= 133))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((111 <= x && x <= 116)||(119 <= x && x <= 129))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 364)
            if((109 <= x && x <= 110)||(117 <= x && x <= 118)||(130 <= x && x <= 134))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((111 <= x && x <= 116)||(119 <= x && x <= 129))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 363)
            if((107 <= x && x <= 108)||(119 <= x && x <= 120)||(132 <= x && x <= 135))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((109 <= x && x <= 118)||(121 <= x && x <= 131))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 362)
            if((107 <= x && x <= 108)||(119 <= x && x <= 120)||(132 <= x && x <= 135))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((109 <= x && x <= 118)||(121 <= x && x <= 131))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 361)
            if((105 <= x && x <= 110)||(121 <= x && x <= 122)||(134 <= x && x <= 135))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((111 <= x && x <= 120)||(123 <= x && x <= 133))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 360)
            if((105 <= x && x <= 110)||(121 <= x && x <= 122)||(134 <= x && x <= 136))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((111 <= x && x <= 120)||(123 <= x && x <= 133))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 359)
            if((103 <= x && x <= 106)||(135 <= x && x <= 136))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((107 <= x && x <= 134))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 358)
            if((103 <= x && x <= 106)||(135 <= x && x <= 136))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((107 <= x && x <= 134))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 357)
            if((102 <= x && x <= 103)||(105 <= x && x <= 106)||(135 <= x && x <= 136))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((x == 104)||(107 <= x && x <= 134))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 356)
            if((102 <= x && x <= 103)||(105 <= x && x <= 106)||(135 <= x && x <= 136))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((x == 104)||(107 <= x && x <= 134))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
       else if( y == 355)
            if((102 <= x && x <= 103)||(105 <= x && x <= 106)||(135 <= x && x <= 136))
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((x == 104)||(107 <= x && x <= 134))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        else if( y == 354)
            if(136 <= x && x <= 137)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if(100 <= x && x <= 135)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        else if( y == 353)
            if(x == 137)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if(100 <= x && x <= 136)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        else if( y == 352)
            if(x == 138)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((100 <= x && x <= 104)||(109 <= x && x <= 137))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        else if( y == 351)
            if(x == 139)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((100 <= x && x <= 104)||(109 <= x && x <= 138))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        else if( y == 350)
            if(x == 140)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((100 <= x && x <= 101)||(113 <= x && x <= 139))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        else if( y == 349)
            if(140 <= x && x <= 142)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((100 <= x && x <= 101)||(113 <= x && x <= 139))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        else if( y == 348)
            if(141 <= x && x <= 143)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if((100 <= x && x <= 101)||(113 <= x && x <= 140))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        else if( y == 347)
            if(142 <= x && x <= 147)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if(117 <= x && x <= 141)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if(148 <= x && x <= 157)
            begin
                rgb_reg = 12'he81;
                isGoose = 1;
            end
        else if( y == 346)
            if(144 <= x && x <= 147)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if(136 <= x && x <= 143)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if(148 <= x && x <= 157)
            begin
                rgb_reg = 12'he81;
                isGoose = 1;
            end
        else if( y == 345)
            if(138 <= x && x <= 147)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if(148 <= x && x <= 155)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
        else if( y == 344)
            if(138 <= x && x <= 147)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if(148 <= x && x <= 155)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
        else if( y == 343)
            if(140 <= x && x <= 149)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if(150 <= x && x <= 153)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
        else if( y == 342)
            if(140 <= x && x <= 149)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if(150 <= x && x <= 153)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
        else if( y == 341)
            if((140 <= x && x <= 145)||(148 <= x && x <= 149))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if(146 <= x && x <= 147)
            begin
                rgb_reg = 12'h000;
                isGoose = 1;
            end
            else if(150 <= x && x <= 151)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
        else if( y == 340)
            if((140 <= x && x <= 145)||(148 <= x && x <= 149))
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if(146 <= x && x <= 147)
            begin
                rgb_reg = 12'h000;
                isGoose = 1;
            end
            else if(150 <= x && x <= 151)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
        else if( y == 339)
            if(140 <= x && x <= 149)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        else if( y == 338)
            if(142 <= x && x <= 149)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        else if( y == 337)
            if(142 <= x && x <= 149)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
    end
    
    assign isGoose_reg = isGoose;
endmodule
