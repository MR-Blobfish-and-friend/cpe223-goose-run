`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2020 09:23:54 PM
// Design Name: 
// Module Name: goose_fly
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


module goose_fly(
    input x, y,
    output [11:0] rgb,
    output isGoose_reg
    );
    
    reg [11:0] rgb_reg;
    reg isGoose;
    wire [9:0] posy;
    
    always @(*) begin
        assign isGoose = 0;
        if (y == posy) begin
            if (114 <= x & x <= 129) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        end
        else if (y == posy-1) begin
            if (114 <= x & x <= 129) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        end
        else if (y == posy-2) begin
            if (112 <= x & x <= 121) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (122 <= x & x <= 128) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (129 <= x & x <= 132) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        end
        else if (y == posy-3) begin
            if (112 <= x & x <= 121) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (122 <= x & x <= 128) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (129 <= x & x <= 132) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        end
        else if (y == posy-4) begin
            if (110 <= x & x <= 111) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (112 <= x & x <= 117) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (118 <= x & x <= 119) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (120 <= x & x <= 130) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (131 <= x & x <= 133) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end  
        end
        else if (y == posy-5) begin
            if (110 <= x & x <= 111) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (112 <= x & x <= 117) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (118 <= x & x <= 119) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (120 <= x & x <= 130) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (131 <= x & x <= 134) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end  
        end
        else if (y == posy-6) begin
            if (110 <= x & x <= 111) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (112 <= x & x <= 117) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (118 <= x & x <= 119) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (120 <= x & x <= 130) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (131 <= x & x <= 135) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end  
        end
        else if (y == posy-7) begin
            if (108 <= x & x <= 109) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (110 <= x & x <= 119) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (120 <= x & x <= 121) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (122 <= x & x <= 132) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (133 <= x & x <= 136) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end  
        end
        else if (y == posy-8) begin
            if (108 <= x & x <= 109) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (110 <= x & x <= 119) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (120 <= x & x <= 121) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (122 <= x & x <= 132) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (133 <= x & x <= 136) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end  
        end
        else if (y == posy-9) begin
            if (106 <= x & x <= 111) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (112 <= x & x <= 121) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (122 <= x & x <= 123) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (124 <= x & x <= 134) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (135 <= x & x <= 136) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end  
        end
        else if (y == posy-10) begin
            if (106 <= x & x <= 111) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (112 <= x & x <= 121) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (122 <= x & x <= 123) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (124 <= x & x <= 134) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (135 <= x & x <= 137) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end  
        end
        else if (y == posy-11) begin
            if (104 <= x & x <= 107) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (108 <= x & x <= 135) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (136 <= x & x <= 137) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        end
        else if (y == posy-12) begin
            if (x == 100) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (104 <= x & x <= 107) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (108 <= x & x <= 135) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (136 <= x & x <= 137) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        end
        else if (y == posy-13) begin
            if (x == 100) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (101 <= x & x <= 103) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (104 <= x & x <= 135) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (136 <= x & x <= 137) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        end
        else if (y == posy-14) begin
            if (100 <= x & x <= 136) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (137 <= x & x <= 138) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        end
        else if (y == posy-15) begin
            if (101 <= x & x <= 136) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (137 <= x & x <= 138) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        end
        else if (y == posy-16) begin
            if (102 <= x & x <= 119) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (120 <= x & x <= 121) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (122 <= x & x <= 136) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (137 <= x & x <= 138) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        end
        else if (y == posy-17) begin
            if (105 <= x & x <= 119) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (120 <= x & x <= 121) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (122 <= x & x <= 137) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (x == 138) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        end
        else if (y == posy-18) begin
            if (107 <= x & x <= 117) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (118 <= x & x <= 120) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (121 <= x & x <= 138) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (x == 139) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        end
        else if (y == posy-19) begin
            if (109 <= x & x <= 116) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (117 <= x & x <= 119) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (120 <= x & x <= 139) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (x == 140) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        end
        else if (y == posy-20) begin
            if (112 <= x & x <= 114) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (115 <= x & x <= 118) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (119 <= x & x <= 140) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (x == 141) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        end
        else if (y == posy-21) begin
            if (114 <= x & x <= 116) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (117 <= x & x <= 140) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (141 <= x & x <= 143) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        end
        else if (y == posy-22) begin
            if (113 <= x & x <= 115) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (116 <= x & x <= 141) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (142 <= x & x <= 144) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
        end
        else if (y == posy-23) begin
            if (111 <= x & x <= 114) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (115 <= x & x <= 142) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (143 <= x & x <= 148) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (149 <= x & x <= 158) begin
                rgb_reg = 12'he81;
                isGoose = 1;
            end
        end
        else if (y == posy-24) begin
            if (110 <= x & x <= 112) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (113 <= x & x <= 126) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (x == 127) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (128 <= x & x <= 135) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (137 <= x & x <= 144) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (145 <= x & x <= 148) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (149 <= x & x <= 158) begin
                rgb_reg = 12'he81;
                isGoose = 1;
            end
        end
        else if (y == posy-25) begin
            if (109 <= x & x <= 111) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (112 <= x & x <= 126) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (x == 127) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (128 <= x & x <= 135) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (139 <= x & x <= 148) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (149 <= x & x <= 156) begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
        end
        else if (y == posy-26) begin
            if (107 <= x & x <= 109) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (110 <= x & x <= 125) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (126 <= x & x <= 127) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (128 <= x & x <= 134) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (139 <= x & x <= 148) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (149 <= x & x <= 156) begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
        end
        else if (y == posy-27) begin
            if (105 <= x & x <= 108) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (109 <= x & x <= 123) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (124 <= x & x <= 126) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (127 <= x & x <= 133) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (141 <= x & x <= 150) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (151 <= x & x <= 154) begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
        end
        else if (y == posy-28) begin
            if (104 <= x & x <= 107) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (102 <= x & x <= 122) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (123 <= x & x <= 124) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (125 <= x & x <= 132) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (141 <= x & x <= 150) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (151 <= x & x <= 154) begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
        end
        else if (y == posy-29) begin
            if (102 <= x & x <= 105) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (106 <= x & x <= 121) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (122 <= x & x <= 123) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (124 <= x & x <= 132) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (141 <= x & x <= 146) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (147 <= x & x <= 148) begin
                rgb_reg = 12'h000;
                isGoose = 1;
            end
            else if (149 <= x & x <= 150) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (151 <= x & x <= 152) begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
        end
        else if (y == posy-30) begin
            if (101 <= x & x <= 103) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (104 <= x & x <= 120) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (x == 121) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (122 <= x & x <= 130) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (141 <= x & x <= 146) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (147 <= x & x <= 148) begin
                rgb_reg = 12'h000;
                isGoose = 1;
            end
            else if (149 <= x & x <= 150) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (151 <= x & x <= 152) begin
                rgb_reg = 12'heb7;
                isGoose = 1;
            end
        end
        else if (y == posy-31) begin
            if (x == 100) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (101 <= x & x <= 118) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (120 <= x & x <= 121) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (122 <= x & x <= 130) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (141 <= x & x <= 150) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        end
        else if (y == posy-32) begin
            if (100 <= x & x <= 115) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (x == 120) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (121 <= x & x <= 129) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (143 <= x & x <= 150) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        end
        else if (y == posy-33) begin
            if (101 <= x & x <= 114) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (x == 120) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (121 <= x & x <= 128) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (143 <= x & x <= 150) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        end
        else if (y == posy-34) begin
            if (102 <= x & x <= 113) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (119 <= x & x <= 120) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (121 <= x & x <= 128) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        end
        else if (y == posy-35) begin
            if (104 <= x & x <= 110) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
            else if (118 <= x & x <= 119) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (120 <= x & x <= 127) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        end
        else if (y == posy-36) begin
            if (118 <= x & x <= 119) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (120 <= x & x <= 127) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        end
        else if (y == posy-37) begin
            if (x == 117) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (118 <= x & x <= 126) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        end
        else if (y == posy-38) begin
            if (x == 117) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (118 <= x & x <= 125) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        end
        else if (y == posy-39) begin
            if (117 <= x & x <= 18) begin
                rgb_reg = 12'hdef;
                isGoose = 1;
            end
            else if (119 <= x & x <= 124) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        end
        else if (y == posy-40) begin
            if (116 <= x & x <= 123) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        end
        else if (y == posy-41) begin
            if (115 <= x & x <= 121) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        end
        else if (y == posy-42) begin
            if (115 <= x & x <= 120) begin
                rgb_reg = 12'hfff;
                isGoose = 1;
            end
        end
    end
    
    assign isGoose_reg = isGoose;
        
endmodule
