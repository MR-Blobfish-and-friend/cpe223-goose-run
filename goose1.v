`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2020 07:34:02 PM
// Design Name: 
// Module Name: goose1
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


module goose1(
    input x, y,
    output [11:0] rgb,
    output isGoose_reg
    );
    
    reg [11:0] rgb_reg;
    reg isGoose;
    
    always @(*)
    begin
        assign isGoose = 0;
        if (y == 380)
            if (115 <= x <= 120)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
        else if (y == 379)
            if (115 <= x <= 120)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
        else if (y == 378)
            if (115 <= x <= 116)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
            else if (125 <= x <= 130)
            begin
                rgb_reg = 12'he81;
                isGoose = 1;
            end
        else if (y == 377)
            if (115 <= x <= 116)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
            else if (125 <= x <= 130)
            begin
                rgb_reg = 12'he81;
                isGoose = 1;
            end 
        else if (y == 376)
            if (115 <= x <= 116)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
            else if (125 <= x <= 130)
            begin
                rgb_reg = 12'he81;
                isGoose = 1;
            end
        else if (y == 375)
            if (115 <= x <= 116)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
            else if (125 <= x <= 126)
            begin
                rgb_reg = 12'he81;
                isGoose = 1;
            end
        else if (y == 374)
            if (115 <= x <= 116)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
            else if (125 <= x <= 126)
            begin
                rgb_reg = 12'he81;
                isGoose = 1;
            end
        else if (y == 373)
            if (115 <= x <= 116)
            begin
                rgb_reg = 12'he81;
                isGoose = 1;
            end
            else if (125 <= x <= 126)
            begin
                rgb_reg = 12'he81;
                isGoose = 1;
            end
        else if (y == 372)
            if (115 <= x <= 116)
            begin
                rgb_reg = 12'he81;
                isGoose = 1;
            end
            else if (125 <= x <= 126)
            begin
                rgb_reg = 12'he81;
                isGoose = 1;
            end
        else if (y == 371)
            if (115 <= x <= 118)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (125 <= x <= 126)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        else if (y == 370)
            if (115 <= x <= 118)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (125 <= x <= 126)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        else if (y == 369)
            if (113 <= x <= 114)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (115 <= x <= 120)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (125 <= x <= 128)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        else if (y == 368)
            if (113 <= x <= 114)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (115 <= x <= 120)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (125 <= x <= 128)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end      
        else if (y == 367)
            if (113 <= x <= 114)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (115 <= x <= 120)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (125 <= x <= 128)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end   
        else if (y == 366)
            if (113 <= x <= 116)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (117 <= x <= 120)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (120 <= x <= 129)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        else if (y == 365)
            if (113 <= x <= 116)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (117 <= x <= 120)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (120 <= x <= 129)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        else if (y == 364)
            if (111 <= x <= 120)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (121 <= x <= 127)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (128 <= x <= 133)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        else if (y == 363)
            if (111 <= x <= 120)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (121 <= x <= 127)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (128 <= x <= 133)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end  
        else if (y == 362)
            if (109 <= x <= 110)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (111 <= x <= 116)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (117 <= x <= 118)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end 
            else if (119 <= x <= 129)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (130 <= x <= 135)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end  
        else if (y == 361)
            if (109 <= x <= 110)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (111 <= x <= 116)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (117 <= x <= 118)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end 
            else if (119 <= x <= 129)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (130 <= x <= 135)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end  
        else if (y == 360)
            if (109 <= x <= 110)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (111 <= x <= 116)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (117 <= x <= 118)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end 
            else if (119 <= x <= 129)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (130 <= x <= 135)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        else if (y == 359)
            if (107 <= x <= 108)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (109 <= x <= 118)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (119 <= x <= 120)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end 
            else if (121 <= x <= 131)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (132 <= x <= 135)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end 
        else if (y == 358)
            if (107 <= x <= 108)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (109 <= x <= 118)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (119 <= x <= 120)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end 
            else if (121 <= x <= 131)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (132 <= x <= 135)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        else if (y == 357)
            if (105 <= x <= 110)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (111 <= x <= 120)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (121 <= x <= 122)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end 
            else if (123 <= x <= 133)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (134 <= x <= 137)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end          
        else if (y == 356)
            if (105 <= x <= 110)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (111 <= x <= 120)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (121 <= x <= 122)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end 
            else if (123 <= x <= 133)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (134 <= x <= 137)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end  
        else if (y == 355) 
            if (103 <= x <= 106)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (107 <= x <= 133)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (134 <= x <= 137)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        else if (y == 354) 
            if (103 <= x <= 106)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (107 <= x <= 133)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (134 <= x <= 137)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end 
        else if (y == 353)
            if (102 <= x <= 103)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (x == 104)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end         
            else if (105 <= x <= 106)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (107 <= x <= 133)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (134 <= x <= 137)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end 
        else if (y == 352)
            if (102 <= x <= 103)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (x == 104)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end         
            else if (105 <= x <= 106)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (107 <= x <= 133)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (134 <= x <= 137)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        else if (y == 351)
            if (102 <= x <= 103)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (x == 104)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end         
            else if (105 <= x <= 106)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (107 <= x <= 133)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (134 <= x <= 137)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        else if (y == 350)
            if (100 <= x <= 133)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (134 <= x <= 135)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        else if (y == 349)
            if (100 <= x <= 133)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (134 <= x <= 135)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        else if (y == 348)
            if (100 <= x <= 104)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (109 <= x <= 131)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (132 <= x <= 133)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        else if (y == 347)
            if (100 <= x <= 104)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (109 <= x <= 131)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (132 <= x <= 133)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end                                              
        else if (y == 346)
            if (100 <= x <= 101)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (113 <= x <= 131)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (132 <= x <= 133)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        else if (y == 345)
            if (100 <= x <= 101)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (113 <= x <= 131)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (132 <= x <= 133)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        else if (y == 344)
            if (100 <= x <= 101)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (113 <= x <= 131)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (132 <= x <= 133)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end                   
        else if (y == 343)
            if (117 <= x <= 129)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (130 <= x <= 131)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        else if (y == 342)
            if (117 <= x <= 129)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (130 <= x <= 131)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        else if (y == 341)
            if (124 <= x <= 129)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (130 <= x <= 131)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        else if (y == 340)
            if (124 <= x <= 129)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (130 <= x <= 131)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        else if (y == 339)
            if (126 <= x <= 129)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (130 <= x <= 131)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        else if (y == 338)
            if (126 <= x <= 129)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (130 <= x <= 131)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end                          
        else if (y == 337)
            if (126 <= x <= 129)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (130 <= x <= 131)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        else if (y == 336)
            if (126 <= x <= 129)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (130 <= x <= 131)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        else if (y == 335)
            if (126 <= x <= 129)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (130 <= x <= 131)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        else if (y == 334)
            if (126 <= x <= 131)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (132 <= x <= 133)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end   
        else if (y == 333)
            if (126 <= x <= 131)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (132 <= x <= 133)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        else if (y == 332)
            if (128 <= x <= 133)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (134 <= x <= 135)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        else if (y == 331)
            if (128 <= x <= 133)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (134 <= x <= 135)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        else if (y == 330)
            if (128 <= x <= 134)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (x == 135)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        else if (y == 329)
            if (128 <= x <= 135)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (136 <= x <= 139)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (140 <= x <= 149)
            begin
                rgb_reg = 12'he81;
                isGoose = 1;
            end
        else if (y == 328)
            if (128 <= x <= 135)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (136 <= x <= 139)
            begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (140 <= x <= 149)
            begin
                rgb_reg = 12'he81;
                isGoose = 1;
            end
        else if (y == 327)
            if (130 <= x <= 139)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (140 <= x <= 147)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end                                                                  
        else if (y == 326)
            if (130 <= x <= 139)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (140 <= x <= 147)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
        else if (y == 325)
            if (132 <= x <= 141)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (142 <= x <= 145)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
        else if (y == 324)
            if (132 <= x <= 141)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (142 <= x <= 145)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
        else if (y == 323)
            if (132 <= x <= 137)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (138 <= x <= 139)
            begin
                rgb_reg = 12'h000;
                isGoose = 1;
            end
            else if (140 <= x <= 141)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end 
            else if (142 <= x <= 143)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
        else if (y == 322)
            if (132 <= x <= 137)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (138 <= x <= 139)
            begin
                rgb_reg = 12'h000;
                isGoose = 1;
            end
            else if (140 <= x <= 141)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end 
            else if (142 <= x <= 143)
            begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
        else if (y == 321)
            if (132 <= x <= 141)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        else if (y == 320)
            if (134 <= x <= 141)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        else if (y == 319)
            if (134 <= x <= 141)
            begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end                                                                          
    end
    
    assign isGoose_reg = isGoose;    
    
endmodule
