`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2020 14:18:13
// Design Name: 
// Module Name: arrow
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


module arrow(
    input [9:0] x, y,
    output arrow
    );
    reg isArrow;
    
    always @(x or y)
    begin
        isArrow = 0;
        if(y == 194) begin
            if(317 <= x && x <= 322) begin
                 isArrow = 1;
            end
        end
        else if(y == 195) begin
            if(316 <= x && x <= 323) begin
                 isArrow = 1;
            end
        end
        else if(y == 196) begin
            if((315 <= x && x <= 317)||(322 <= x && x <= 324)) begin
                 isArrow = 1;
            end
        end
        else if(y == 197) begin
            if((314 <= x && x <= 316)||(323 <= x && x <= 325)) begin
                 isArrow = 1;
            end
        end
        else if(y == 198) begin
            if((313 <= x && x <= 315)||(324 <= x && x <= 326)) begin
                 isArrow = 1;
            end
        end
        else if(y == 199) begin
            if((313 <= x && x <= 314)||(325 <= x && x <= 326)) begin
                 isArrow = 1;
            end
        end
        else if(y == 200) begin
            if((312 <= x && x <= 314)||(325 <= x && x <= 327)) begin
                 isArrow = 1;
            end
        end
        else if(y == 201) begin
            if((312 <= x && x <= 313)||(326 <= x && x <= 327)) begin
                 isArrow = 1;
            end
        end
        else if(y == 202) begin
            if((312 <= x && x <= 313)||(326 <= x && x <= 327)) begin
                 isArrow = 1;
            end
        end
        else if(y == 203) begin
            if((312 <= x && x <= 313)||(326 <= x && x <= 327)) begin
                 isArrow = 1;
            end
        end
        else if(y == 204) begin
            if((312 <= x && x <= 313)||(323 <= x && x <= 330)) begin
                 isArrow = 1;
            end
        end
        else if(y == 205) begin
            if((312 <= x && x <= 313)||(324 <= x && x <= 329)) begin
                 isArrow = 1;
            end
        end
        else if(y == 206) begin
            if((312 <= x && x <= 314)||(325 <= x && x <= 328)) begin
                 isArrow = 1;
            end
        end
        else if(y == 207) begin
            if((313 <= x && x <= 314)||(326 <= x && x <= 327)) begin
                 isArrow = 1;
            end
        end
        else if(y == 208) begin
            if(313 <= x && x <= 315) begin
                 isArrow = 1;
            end
        end
        else if(y == 209) begin
            if(314 <= x && x <= 316) begin
                 isArrow = 1;
            end
        end
        else if(y == 210) begin
            if(315 <= x && x <= 317) begin
                 isArrow = 1;
            end
        end
        else if(y == 211) begin
            if(316 <= x && x <= 321) begin
                 isArrow = 1;
            end
        end
        else if(y == 212) begin
            if(317 <= x && x <= 321) begin
                 isArrow = 1;
            end
        end
    end
    
    assign arrow = isArrow;    
endmodule