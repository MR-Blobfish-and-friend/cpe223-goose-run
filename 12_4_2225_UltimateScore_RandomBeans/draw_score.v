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
    input [31:0] score,
    output isScore,
    output [11:0] score_rgb
    );
    
    wire isUnit, isTen, isHund, isThou;
    integer unit, ten, hund, thou;
    
    initial begin
        unit = 0;
        ten = 0;
        hund = 0;
        thou = 0;
    end
    
    always @(score) begin
        unit = score%10;
        ten = (score%100 - unit)/10;
        hund = (score%1000 - ten - unit)/100;
        thou = (score - hund - ten - unit)/1000;
    end
    
    //current score
    segment unit1(.x(x), .y(y), .segx(610), .segy(20), .num(unit), .isSeg(isUnit));
    segment ten1(.x(x), .y(y), .segx(595), .segy(20), .num(ten), .isSeg(isTen));
    segment hund1(.x(x), .y(y), .segx(580), .segy(20), .num(hund), .isSeg(isHund));
    segment thou1(.x(x), .y(y), .segx(565), .segy(20), .num(thou), .isSeg(isThou));
    
    assign isScore = isUnit || isTen || isHund || isThou;    
    assign score_rgb = 12'hfff;
    
endmodule