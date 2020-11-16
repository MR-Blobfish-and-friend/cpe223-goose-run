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
    input clk,
    output bean
    );
    
    reg [8:0] isBean;
    reg [8:0] beans [9:0];
    reg [8:0] b;
    reg [8:0] height = 40;
    reg [8:0] width = 30;
    reg [8:0] pos_shift = 5;
    
    initial begin beans[0] = 400; end
    
    always @(posedge clk)
    begin
        beans[0] = beans[0] - pos_shift;
    end
    
    always @(*)
    begin        
        b = beans[0];
        if ((b <= x && x <= b + width) && (380 >= y && y >= 380 - height)) isBean = 1;
        else isBean = 0;
    end
    
    assign bean = isBean;
    
endmodule
