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
    input clk,
    input btnL,
    input btnR,
    output goose
    );
    
    reg isGoose;
    reg [8:0] height = 80;
    reg [8:0] width = 60;   
    reg [8:0] posx = 100;
    reg [8:0] posy = 380;
    reg isJump = 0;
    reg isSlide = 0;
    reg [5:0] count = 0;
    integer jumpList [0:30];
    reg [11:0] color = 12'hf99;
    
    initial
    begin
     jumpList[0] = 15;
     jumpList[1] = 12;
     jumpList[2] = 9;
     jumpList[3] = 7;
     jumpList[4] = 5;
     jumpList[5] = 4;
     jumpList[6] = 3;
     jumpList[7] = 3;
     jumpList[8] = 2;
     jumpList[9] = 2;
     jumpList[10] = 2;
     jumpList[11] = 1;
     jumpList[12] = 1;
     jumpList[13] = 1;
     jumpList[14] = 1;
     jumpList[15] = 0;
     jumpList[16] = -1;
     jumpList[17] = -1;
     jumpList[18] = -1;
     jumpList[19] = -1;
     jumpList[20] = -2;
     jumpList[21] = -2;
     jumpList[22] = -2;
     jumpList[23] = -3;
     jumpList[24] = -3;
     jumpList[25] = -4;
     jumpList[26] = -5;
     jumpList[27] = -7;
     jumpList[28] = -9;
     jumpList[29] = -12;
     jumpList[30] = -15;
    end
    
    //jumpList = {15, 13, 10, 6, 3, 0, -3, -6, -10, -13, -15};
    
    always @(posedge clk)
    begin
        if (btnL) isJump = 1;
        //else color = 12'hf99;
        else if (btnR) isSlide = 1;
        else if (~btnR) isSlide = 0;
        
        if (count == 31)
            begin
                count = 0;
                isJump = 0;
            end 
        if (isJump)
            begin
                posy = posy - jumpList[count];
                count = count + 1;
            end
    end
    
    always @(*)
    begin
        if (isJump) begin
            if ((posx <= x && x <= posx + width) && (posy >= y && y >= posy - height + 40)) isGoose = 1;
            else isGoose = 0;
        end
        else if (isSlide) begin
            if ((posx <= x && x <= posx + width) && (posy >= y && y >= posy - height + 20)) isGoose = 1;
            else isGoose = 0;
        end
        else begin
            if ((posx <= x && x <= posx + width) && (posy >= y && y >= posy - height)) isGoose = 1;
            else isGoose = 0;
        end
    end
    
    assign goose = isGoose;
    //assign goose_rgb = color;
    
endmodule
