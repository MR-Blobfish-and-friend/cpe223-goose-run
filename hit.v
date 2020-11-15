`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2020 04:35:48 PM
// Design Name: 
// Module Name: hit
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


module hit(
    input goose,
    input bean,
    output hit
    );
    
    reg isHit;
    
    always @(*)
        if (goose && bean) isHit = 1;
        else isHit = 0;
    
    assign hit = isHit;
    
endmodule
