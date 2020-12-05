`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2020 21:44:41
// Design Name: 
// Module Name: segment
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

// 0 => 1111110
// 1 => 0110000
// 2 => 1101101
// 3 => 1111001
// 4 => 0110011
// 5 => 1011011
// 6 => 1011111
// 7 => 1110000
// 8 => 1111111
// 9 => 1111011

module segment(
    input [9:0] x, y,
    input [9:0] segx, segy,
    input [3:0] num,
    output isSeg
    );
    
    reg isSeg_reg;
    reg [6:0] seg;
    
    always @(num) begin
        case(num)
            0: seg = 7'b1111110;
            1: seg = 7'b0110000;
            2: seg = 7'b1101101;
            3: seg = 7'b1111001;
            4: seg = 7'b0110011;
            5: seg = 7'b1011011;
            6: seg = 7'b1011111;
            7: seg = 7'b1110000;
            8: seg = 7'b1111111;
            9: seg = 7'b1111011;
            default: seg = 7'b1001001;
        endcase
    end
    
    always @(num)
    begin
            isSeg_reg = 0;
            if(seg[0]) begin
                if(((segy + 9) <= y && y <= (segy + 10)) && ((segx + 2) <= x && x <= (segx + 7))) begin
                    isSeg_reg = 1;
                end
            end
            if(seg[1]) begin
                if(((segy + 2) <= y && y <= (segy + 8)) && ((segx) <= x && x <= (segx + 1))) begin
                    isSeg_reg = 1;
                end
            end
            if(seg[2]) begin
                if(((segy + 11) <= y && y <= (segy + 17)) && ((segx) <= x && x <= (segx + 1))) begin
                    isSeg_reg = 1;
                end
            end    
            if(seg[3] == 1) begin
                if(((segy + 18) <= y && y <= (segy + 19)) && ((segx + 2) <= x && x <= (segx + 7))) begin
                    isSeg_reg = 1;
                end
            end
            if(seg[4] == 1) begin
                if(((segy + 11) <= y && y <= (segy + 17)) && ((segx + 8) <= x && x <= (segx + 9))) begin
                    isSeg_reg = 1;
                end
            end
            if(seg[5] == 1) begin
                if(((segy + 2) <= y && y <= (segy + 8)) && ((segx + 8) <= x && x <= (segx + 9))) begin
                    isSeg_reg = 1;
                end
            end    
            if(seg[6] == 1) begin
                if(((segy) <= y && y <= (segy + 1)) && ((segx + 2) <= x && x <= (segx + 7))) begin
                    isSeg_reg = 1;
                end
            end
    end
    
    assign isSeg = isSeg_reg;
endmodule