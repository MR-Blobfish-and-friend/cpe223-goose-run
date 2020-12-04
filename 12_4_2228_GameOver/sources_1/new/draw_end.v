`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2020 17:43:35
// Design Name: 
// Module Name: draw_end
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


module draw_end(
    input [9:0] x, y,
    input hit,
    output isEnd
    );
    wire isG, isA, isM, isE1, isO, isV, isR, isE2, arrow, check;
    assign check = hit;
    
    alphabet g(.x(x), .y(y), .posx(260), .posy(160), .select_char(0), .char(isG));
    alphabet a(.x(x), .y(y), .posx(275), .posy(160), .select_char(1), .char(isA));
    alphabet m(.x(x), .y(y), .posx(290), .posy(160), .select_char(2), .char(isM));
    alphabet e1(.x(x), .y(y), .posx(305), .posy(160), .select_char(8), .char(isE1));
    alphabet o(.x(x), .y(y), .posx(325), .posy(160), .select_char(5), .char(isO));
    alphabet v(.x(x), .y(y), .posx(340), .posy(160), .select_char(6), .char(isV));
    alphabet r(.x(x), .y(y), .posx(355), .posy(160), .select_char(8), .char(isR));
    alphabet e2(.x(x), .y(y), .posx(370), .posy(160), .select_char(7), .char(isE2));
    Arrow ar(.x(x), .y(y), .arrow(arrow));
        
    assign isEnd = (isG || isA || isM || isE1 || isO || isV || isR || isE2 || arrow) && check;    
//    assign check = isG || isA || isM || isE1 || isO || isV || isR || isE2 || arrow;
//    assign isEnd = check && hit;
endmodule
