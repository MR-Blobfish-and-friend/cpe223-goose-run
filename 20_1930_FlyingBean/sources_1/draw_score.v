`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2020 03:43:44 PM
// Design Name: 
// Module Name: draw_score
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


module draw_score(
    input [9:0] x, y,
    input [13:0] score,
    output isScore,
    output [11:0] score_rgb
    );
    
    wire isUnit, isTen, isHund, isThou;
    reg [3:0] digit [3:0]; 
    reg isScore_reg;
    integer i;
    
    always @(*) begin
        digit[0] = score%10;
        digit[1] = (score%100 - digit[0])/10;
        digit[2] = (score%1000 - digit[1] - digit[0])/100;
        digit[3] = (score- digit[2] - digit[1] - digit[0])/1000;
//        if (isUnit) isScore_reg = 1;
//        else if (isTen) isScore_reg = 1;
//        else if (isHund) isScore_reg = 1;
//        else if (isThou) isScore_reg = 1;
//        else if ((555 <= x && x <= 610) && (20 <= y && y <= 40)) isScore_reg = 1;
//        else isScore_reg = 0;
    end
    
    segment unit(.x(x), .y(y), .segx(610), .segy(20), .num(digit[0]), .isSeg(isUnit));
    segment ten(.x(x), .y(y), .segx(595), .segy(20), .num(digit[1]), .isSeg(isTen));
    segment hund(.x(x), .y(y), .segx(580), .segy(20), .num(digit[2]), .isSeg(isHund));
    segment thou(.x(x), .y(y), .segx(565), .segy(20), .num(digit[3]), .isSeg(isThou));
    
    assign isScore = isUnit || isTen || isHund || isThou;
    assign score_rgb = 12'hfff;
    
endmodule
 