`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2020 03:15:44 PM
// Design Name: 
// Module Name: draw_floor
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


module draw_floor(
    input [9:0] x,
    input [9:0] y,
    output floor
    );
    
    reg isFloor;
    
    always @(*)
        if ((0 <= x && x <= 640) && (380 <= y && y <= 480)) isFloor = 1;
        else isFloor = 0;
    
    assign floor = isFloor;
    
endmodule
