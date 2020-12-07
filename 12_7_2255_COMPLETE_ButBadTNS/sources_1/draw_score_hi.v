`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2020 10:34:22 AM
// Design Name: 
// Module Name: draw_score_hi
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

module draw_score_hi(
    input [9:0] x, y,
    input [31:0] score_hi,
    output isScore,
    output [11:0] score_rgb
    );    
    wire isUnit_hi, isTen_hi, isHund_hi, isThou_hi, isH, isI;
    integer unit_hi, ten_hi, hund_hi, thou_hi;
    
    initial begin
        unit_hi = 0;
        ten_hi = 0;
        hund_hi = 0;
        thou_hi = 0;
    end
    
    always @(score_hi) begin
        unit_hi = score_hi%10;
        ten_hi = (score_hi%100)/10;
        hund_hi = (score_hi%1000)/100;
        thou_hi = score_hi/1000;
    end
    
    //hi score
    segment unit1__hi(.x(x), .y(y), .segx(535), .segy(20), .num(unit_hi), .isSeg(isUnit_hi));
    segment ten1_hi(.x(x), .y(y), .segx(520), .segy(20), .num(ten_hi), .isSeg(isTen_hi));
    segment hund1_hi(.x(x), .y(y), .segx(505), .segy(20), .num(hund_hi), .isSeg(isHund_hi));
    segment thou1_hi(.x(x), .y(y), .segx(490), .segy(20), .num(thou_hi), .isSeg(isThou_hi));
    
    //text
    alphabet char_H(.x(x), .y(y), .posx(455), .posy(20), .select_char(3), .char(isH));
    alphabet char_I(.x(x), .y(y), .posx(470), .posy(20), .select_char(4), .char(isI));
    
    assign isScore = isUnit_hi || isTen_hi || isHund_hi || isThou_hi || isH || isI;    
    assign score_rgb = 12'haaa;    
endmodule