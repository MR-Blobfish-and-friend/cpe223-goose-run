`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2020 05:23:20 PM
// Design Name: 
// Module Name: detect_hit
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


module detect_hit(
    input goose,
    input bean,
    output reg hit
    );
    
    always @(*)
    begin
        if (goose && bean) hit = 1;
        else hit = 0;
    end
    
endmodule
