`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2020 02:42:04 PM
// Design Name: 
// Module Name: draw goose
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


module draw_goose(
    input [9:0] x,
    input [9:0] y,
    output goose
    );
    
    reg isGoose;
    reg height = 80, width = 60;   
    reg posx = 100, posy = 380;
    
    always @(*)
    begin
        if ((posx <= x && x <= posx + width) && (posy >= y && y >= posy - height)) isGoose = 1;
        else isGoose = 0;
    end
    
    assign goose = isGoose;
    
endmodule
