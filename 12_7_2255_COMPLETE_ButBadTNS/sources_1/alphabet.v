`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2020 01:52:33 PM
// Design Name: 
// Module Name: alphabet
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

module alphabet(
    input [9:0] x, y,
    input [31:0] posx, posy,
    input [4:0] select_char,
    output char
    );    
    reg isChar;
    //0 => G
    //1 => A
    //2 => M
    //3 => H
    //4 => I
    //5 => O
    //6 => V
    //7 => R
    //8 => E
    
    always @(x or y)
    begin
        isChar = 0;
        case(select_char)
            0: begin // G
                if(posy == y || (posy+1) == y || (posy+18) == y || (posy+19) == y) begin
                    if((posx+2) <= x && x <= (posx+7)) begin
                        isChar = 1;
                    end
                end 
                else if(((posy+2) <= y && y <= (posy+8))) begin
                    if(posx <= x && x <= (posx+1)) begin
                        isChar = 1;
                    end
                end
                else if(((posy+9) <= y && y <= (posy+10))) begin
                    if((posx <= x && x <= (posx+1)) || ((posx+5) <= x && x <= (posx+9))) begin
                        isChar = 1;
                    end
                end
                else if(((posy+11) <= y && y <= (posy+17))) begin
                    if((posx <= x && x <= (posx+1)) || ((posx+8) <= x && x <= (posx+9))) begin
                        isChar = 1;
                    end
                end
            end
            1: begin // A
                if(posx == x || (posx+1) == x || (posx+8) == x || (posx+9) == x) begin
                    if((posy+4) <= y && y <= (posy+19)) begin
                        isChar = 1;
                    end
                end
                else if((posx+2) <= x && x <= (posx+3) || (posx+6) <= x && x <= (posx+7)) begin
                    if(((posy+2) <= y && y <= (posy+3)) || ((posy+10) <= y && y <= (posy+11))) begin
                        isChar = 1;
                    end
                end
                else if((posx+4) <= x && x <= (posx+5)) begin
                    if(((posy) <= y && y <= (posy+1)) || ((posy+10) <= y && y <= (posy+11))) begin
                        isChar = 1;
                    end
                end
            end
            2: begin // M
                if(posx == x || (posx+1) == x || (posx+8) == x || (posx+9) == x) begin
                    if((posy) <= y && y <= (posy+19)) begin
                        isChar = 1;
                    end
                end
                else if((posx+2) == x || (posx+7) == x) begin
                    if((posy+3) <= y && y <= (posy+6)) begin
                        isChar = 1;
                    end
                end
                else if((posx+3) == x || (posx+6) == x) begin
                    if((posy+5) <= y && y <= (posy+8)) begin
                        isChar = 1;
                    end
                end
                else if((posx+4) <= x && x <= (posx+5)) begin
                    if((posy+7) <= y && y <= (posy+10)) begin
                        isChar = 1;
                    end
                end
            end
            3: begin // H
                if(posx == x || (posx+1) == x || (posx+8) == x || (posx+9) == x) begin
                    if((posy) <= y && y <= (posy+19)) begin
                        isChar = 1;
                    end
                end
                else if((posx+2) <= x && x <= (posx+7)) begin
                    if((posy+9) <= y && y <= (posy+10)) begin
                        isChar = 1;
                    end
                end
            end
            4: begin // I
                if(((posx+2) <= x && x <= (posx+3)) || ((posx+6) <= x && x <= (posx+7))) begin
                    if(((posy) <= y && y <= (posy+1)) || ((posy+18) <= y && y <= (posy+19)))begin
                        isChar = 1;
                    end
                end
                else if((posx+4) <= x && x <= (posx+5)) begin
                    if((posy) <= y && y <= (posy+19)) begin
                        isChar = 1;
                    end
                end
            end
            5: begin // O
                if((posx+2) <= x && x <= (posx+7)) begin
                    if(((posy) <= y && y <= (posy+1)) || ((posy+18) <= y && y <= (posy+19)))begin
                        isChar = 1;
                    end
                end
                else if(((posx) <= x && x <= (posx+1)) || ((posx+8) <= x && x <= (posx+9))) begin
                    if((posy+2) <= y && y <= (posy+17))begin
                        isChar = 1;
                    end
                end
            end
            6: begin // V
                if(posx == x || (posx+1) == x || (posx+8) == x || (posx+9) == x) begin
                    if((posy) <= y && y <= (posy+15)) begin
                        isChar = 1;
                    end
                end
                else if(((posx+2) <= x && x <= (posx+3))|| ((posx+6) <= x && x <= (posx+7))) begin
                    if((posy+16) <= y && y <= (posy+17)) begin
                        isChar = 1;
                    end
                end
                else if((posx+4) <= x && x <= (posx+5)) begin
                    if((posy+18) <= y && y <= (posy+19)) begin
                        isChar = 1;
                    end
                end
            end
            7: begin // R
                if(posx <= x && x <= (posx+1)) begin
                    if((posy) <= y && y <= (posy+19)) begin
                        isChar = 1;
                    end
                end
                else if((posx+2) <= x && x <= (posx+7)) begin
                    if((posy) <= y && y <= (posy+1) || (posy+9) <= y && y <= (posy+10)) begin
                        isChar = 1;
                    end
                end
                else if((posx+8) <= x && x <= (posx+9)) begin
                    if((posy+2) <= y && y <= (posy+8) || (posy+11) <= y && y <= (posy+19)) begin
                        isChar = 1;
                    end
                end
            end
            8: begin // E
                if(posy == y || (posy+1) == y || (posy+18) == y || (posy+19) == y) begin
                    if((posx) <= x && x <= (posx+9)) begin
                        isChar = 1;
                    end
                end 
                else if(((posy+2) <= y && y <= (posy+8))||((posy+11) <= y && y <= (posy+17))) begin
                    if(posx <= x && x <= (posx+1)) begin
                        isChar = 1;
                    end
                end
                else if(((posy+9) <= y && y <= (posy+10))) begin
                    if((posx <= x && x <= (posx+7))) begin
                        isChar = 1;
                    end
                end
            end
        endcase
    end
    
    assign char = isChar;    
endmodule