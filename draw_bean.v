`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2020 03:24:17 PM
// Design Name: 
// Module Name: draw_bean
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


module draw_bean(
    input [9:0] x,
    input [9:0] y,
    output bean
    );
    
    reg isBean;
    reg [9:0] beans;
    reg b;
    reg height = 40, width = 30;
    
    always @(*)
    begin
        beans[0] = 320;
        
        b = beans[0];
        if ((b <= x && x <= b + width) && (380 >= y && y >= 380 - height)) isBean = 1;
        else isBean = 0;        
    end
    
    assign bean = isBean;
    
endmodule
