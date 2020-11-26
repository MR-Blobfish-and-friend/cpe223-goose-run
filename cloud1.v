`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2020 03:01:06 PM
// Design Name: 
// Module Name: cloud1
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


module cloud1(
    input x, y,
    input p,
    output [11:0] rgb,
    output isCloud_reg
    );
    
    reg [11:0] rgb_reg;
    reg isCloud;
    integer phase;
    
    always @(*) begin
        assign isCloud = 0;
        if (phase==1) begin
            if (y == 73) begin
                if (p-58 <= x && x <= p-57) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end
            else if (y == 74) begin
                if (p-59 <= x && x <= p-56) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end
            else if (y == 75) begin
                if (p-60 <= x && x <= p-55) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end
            else if (y == 76) begin
                if (p-61 <= x && x <= p-59) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-58 <= x && x <= p-57) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-56 <= x && x <= p-54) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-52 <= x && x <= p-51) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end
            else if (y == 77) begin
                if (p-61 <= x && x <= p-60) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-59 <= x && x <= p-58) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (x == p-57) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end
                else if (x == p-56) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-55 <= x && x <= p-53) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-52 <= x && x <= p-51) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (x == p-50) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end
            else if (y == 78) begin
                if (x == p-61) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-60 <= x && x <= p-59) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-58 <= x && x <= p-56) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end
                else if (x == p-55) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-54 <= x && x <= p-53) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (x == p-52) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (x == p-51) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end
        end
        
        if (phase==2) begin
            if (y == 54) begin
                if (p-33 <= x && x <= p-29) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end
            else if (y == 55) begin
                if (p-34 <= x && x <= p-28) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end
            else if (y == 56) begin
                if (p-35 <= x && x <= p-27) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end
            else if (y == 57) begin
                if (p-36 <= x && x <= p-33) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-32 <= x && x <= p-30) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-29 <= x && x <= p-26) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end
            else if (y == 58) begin
                if (p-39 <= x && x <= p-35) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-34 <= x && x <= p-29) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-28 <= x && x <= p-25) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end
            else if (y == 59) begin
                if (p-40 <= x && x <= p-36) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-35 <= x && x <= p-28) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-27 <= x && x <= p-24) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end
            else if (y == 60) begin
                if (p-41 <= x && x <= p-35) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-34 <= x && x <= p-27) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-26 <= x && x <= p-23) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end
            else if (y == 61) begin
                if (p-41 <= x && x <= p-40) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-39 <= x && x <= p-38) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-37 <= x && x <= p-34) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-33 <= x && x <= p-32) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (x == p-31) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end
                else if (p-30 <= x && x <= p-26) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-25 <= x && x <= p-22) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end
            else if (y == 62) begin
                if (x == p-41) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (x == p-40) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (x == p-39) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end
                else if (p-37 <= x && x <= p-34) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-38 <= x && x <= p-37) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-35 <= x && x <= p-33) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-32 <= x && x <= p-30) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end
                else if (p-29 <= x && x <= p-26) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-25 <= x && x <= p-22) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end
            else if (y == 63) begin
                if (x == p-41) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-40 <= x && x <= p-38) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end
                else if (p-37 <= x && x <= p-35) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-34 <= x && x <= p-32) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-31 <= x && x <= p-29) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end
                else if (p-28 <= x && x <= p-25) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-24 <= x && x <= p-22) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end
            else if (y == 64) begin
                if (p-41 <= x && x <= p-37) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end
                else if (p-36 <= x && x <= p-34) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-33 <= x && x <= p-31) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-30 <= x && x <= p-28) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end
                else if (p-27 <= x && x <= p-25) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-24 <= x && x <= p-22) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end
            else if (y == 65) begin
                if (p-41 <= x && x <= p-36) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end
                else if (p-35 <= x && x <= p-34) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-33 <= x && x <= p-30) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-29 <= x && x <= p-27) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end
                else if (p-26 <= x && x <= p-24) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-23 <= x && x <= p-22) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end   
        end
        
        if (phase==3) begin
            if (y == 109) begin
                if (p-29 <= x && x <= p-28) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end
            else if (y == 110) begin
                if (p-30 <= x && x <= p-27) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end
            else if (y == 111) begin
                if (p-31 <= x && x <= p-26) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end
            else if (y == 112) begin
                if (p-32 <= x && x <= p-30) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-29 <= x && x <= p-28) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-27 <= x && x <= p-25) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-23 <= x && x <= p-22) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end
            else if (y == 113) begin
                if (p-32 <= x && x <= p-31) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-30 <= x && x <= p-29) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (x == p-28) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end
                else if (x == p-27) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-26 <= x && x <= p-24) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-23 <= x && x <= p-22) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (x == p-21) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end
            else if (y == 114) begin
                if (x == p-32) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-31 <= x && x <= p-30) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-29 <= x && x <= p-27) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end
                else if (x == p-26) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-25 <= x && x <= p-24) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (x == p-23) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (x == p-22) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end
        end
        
        if (phase==4) begin
            if (y == 27) begin
                if (p-15 <= x && x <= p-7) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end
            else if (y == 28) begin
                if (p-16 <= x && x <= p-5) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end
            else if (y == 29) begin
                if (p-16 <= x && x <= p-3) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end
            else if (y == 30) begin
                if (p-17 <= x && x <= p-3) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end
            else if (y == 31) begin
                if (p-18 <= x && x <= p-15) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-14 <= x && x <= p-8) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-7 <= x && x <= p-1) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end                
            end
            else if (y == 32) begin
                if (p-18 <= x && x <= p-16) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-15 <= x && x <= p-5) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-4 <= x && x <= p) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end                
            end
            else if (y == 33) begin
                if (p-31 <= x && x <= p-26) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-19 <= x && x <= p-17) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-16 <= x && x <= p-3) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-2 <= x && x <= p) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end                
            end
            else if (y == 34) begin
                if (p-32 <= x && x <= p-25) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-20 <= x && x <= p-17) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-16 <= x && x <= p-3) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-2 <= x && x <= p) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end                
            end
            else if (y == 35) begin
                if (p-32 <= x && x <= p-24) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-20 <= x && x <= p-18) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-17 <= x && x <= p-2) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-1 <= x && x <= p) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end                
            end
            else if (y == 36) begin
                if (p-33 <= x && x <= p-31) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-30 <= x && x <= p-26) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-25 <= x && x <= p-23) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-21 <= x && x <= p-19) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-18 <= x && x <= p) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end             
            end
            else if (y == 37) begin
                if (p-34 <= x && x <= p-32) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-31 <= x && x <= p-25) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-24 <= x && x <= p-20) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-19 <= x && x <= p-9) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end 
                else if (p-8 <= x && x <= p-2) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end  
                else if (p-1 <= x && x <= p) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end          
            end
            else if (y == 38) begin
                if (p-34 <= x && x <= p-32) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-31 <= x && x <= p-24) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-23 <= x && x <= p-21) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-20 <= x && x <= p-17) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end 
                else if (p-16 <= x && x <= p-14) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end 
                else if (p-13 <= x && x <= p-10) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end 
                else if (p-9 <= x && x <= p-1) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end  
                else if (x == p) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end          
            end
            else if (y == 39) begin
                if (p-35 <= x && x <= p-33) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-32 <= x && x <= p-26) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-25 <= x && x <= p-20) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-19 <= x && x <= p-18) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end 
                else if (p-17 <= x && x <= p-13) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end 
                else if (p-12 <= x && x <= p-11) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end 
                else if (p-10 <= x && x <= p) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end         
            end
            else if (y == 40) begin
                if (p-36 <= x && x <= p-34) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-33 <= x && x <= p-27) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-26 <= x && x <= p-19) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-18 <= x && x <= p-12) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end 
                else if (p-11 <= x && x <= p) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end         
            end
            else if (y == 41) begin
                if (p-36 <= x && x <= p-35) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-34 <= x && x <= p-32) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-31 <= x && x <= p-29) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end
                else if (x == p-28) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-27 <= x && x <= p-18) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-17 <= x && x <= p-13) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end 
                else if (p-12 <= x && x <= p) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end         
            end
            else if (y == 42) begin
                if (p-37 <= x && x <= p-35) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-34 <= x && x <= p-33) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-32 <= x && x <= p-29) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end
                else if (p-28 <= x && x <= p-27) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-26 <= x && x <= p-23) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-22 <= x && x <= p-21) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-16 <= x && x <= p-14) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end 
                else if (p-13 <= x && x <= p) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end         
            end
            else if (y == 43) begin
                if (p-38 <= x && x <= p-36) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-35 <= x && x <= p-33) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-32 <= x && x <= p-30) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end
                else if (p-29 <= x && x <= p-28) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-27 <= x && x <= p-22) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-21 <= x && x <= p-11) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-10 <= x && x <= p-4) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end 
                else if (p-3 <= x && x <= p) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end         
            end
            else if (y == 44) begin
                if (p-38 <= x && x <= p-37) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-36 <= x && x <= p-35) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-34 <= x && x <= p-31) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end
                else if (x == p-30) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-29 <= x && x <= p-20) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-19 <= x && x <= p-12) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-11 <= x && x <= p-3) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end 
                else if (p-2 <= x && x <= p) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end         
            end
            else if (y == 45) begin
                if (p-39 <= x && x <= p-38) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-37 <= x && x <= p-36) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-35 <= x && x <= p-32) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end
                else if (x == p-31) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-30 <= x && x <= p-20) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-19 <= x && x <= p-12) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-11 <= x && x <= p-1) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end 
                else if (x == p) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end         
            end
            else if (y == 46) begin
                if (p-41 <= x && x <= p-38) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (x == p-37) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-36 <= x && x <= p-33) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end
                else if (x == p-32) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (x == p-31) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-30 <= x && x <= p-26) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end
                else if (p-25 <= x && x <= p-18) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-17 <= x && x <= p-12) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-11 <= x && x <= p) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end       
            end
            else if (y == 47) begin
                if (p-42 <= x && x <= p-37) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-36 <= x && x <= p-34) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end
                else if (x == p-33) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (x == p-32) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-31 <= x && x <= p-25) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end
                else if (p-24 <= x && x <= p-16) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-15 <= x && x <= p-13) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-12 <= x && x <= p-11) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-10 <= x && x <= p-7) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end  
                else if (p-6 <= x && x <= p) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end     
            end
            else if (y == 48) begin
                if (p-43 <= x && x <= p-42) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-41 <= x && x <= p-39) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-38 <= x && x <= p-36) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (x == p-35) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end
                else if (x == p-34) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (x == p-33) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-32 <= x && x <= p-24) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end
                else if (p-23 <= x && x <= p-16) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-15 <= x && x <= p-14) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-13 <= x && x <= p-12) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-11 <= x && x <= p-6) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end  
                else if (p-5 <= x && x <= p) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end     
            end
            else if (y == 49) begin
                if (p-43 <= x && x <= p-38) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-37 <= x && x <= p-35) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (x == p-34) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-33 <= x && x <= p-23) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end
                else if (p-22 <= x && x <= p-16) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (x == p-15) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-14 <= x && x <= p-13) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-12 <= x && x <= p-4) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end  
                else if (p-3 <= x && x <= p) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end     
            end
            else if (y == 50) begin
                if (p-43 <= x && x <= p-40) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end
                else if (p-39 <= x && x <= p-37) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-36 <= x && x <= p-35) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-34 <= x && x <= p-22) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end
                else if (p-21 <= x && x <= p-14) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-13 <= x && x <= p-3) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end  
                else if (p-2 <= x && x <= p) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end     
            end
            else if (y == 51) begin
                if (p-43 <= x && x <= p-40) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end
                else if (p-39 <= x && x <= p-37) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-36 <= x && x <= p-35) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-34 <= x && x <= p-21) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end
                else if (p-20 <= x && x <= p-15) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-14 <= x && x <= p-1) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end  
                else if (x == p) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end     
            end
            else if (y == 52) begin
                if (p-34 <= x && x <= p-20) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end
                else if (p-19 <= x && x <= p-16) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-15 <= x && x <= p) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end      
            end
        end
        
        else if (phase==5) begin
            if (y == 32) begin
                if (x == p-127) begin 
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end   
            end
            else if (y == 33) begin
                if (p-127 <= x && x <= p-126) begin 
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end   
            end
            else if (y == 34 && y == 35) begin
                if (p-127 <= x && x <= p-125) begin 
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end   
            end
            else if (y == 36) begin
                if (p-127 <= x && x <= p-24) begin 
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end   
            end
            else if (y == 37) begin
                if (x == p-127) begin 
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-126 <= x && x <= p-124) begin 
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end   
            end
            else if (y == 38) begin
                if (p-127 <= x && x <= p-126) begin 
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-125 <= x && x <= p-123) begin 
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end   
            end
            else if (y == 39) begin
                if (p-127 <= x && x <= p-125) begin 
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-124 <= x && x <= p-122) begin 
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end   
            end
            else if (y == 40) begin
                if (x == p-127) begin 
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end 
                else if (p-126 <= x && x <= p-125) begin 
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-124 <= x && x <= p-122) begin 
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end   
            end
            else if (y == 41) begin
                if (p-127 <= x && x <= p-126) begin 
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end 
                else if (p-125 <= x && x <= p-124) begin 
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-123 <= x && x <= p-121) begin 
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end   
            end
            else if (y == 42) begin
                if (p-127 <= x && x <= p-125) begin 
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end 
                else if (x == p-124) begin 
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-123 <= x && x <= p-120) begin 
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end   
            end
            else if (y == 43) begin
                if (p-127 <= x && x <= p-119) begin 
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end 
            end
            else if (y == 44) begin
                if (p-127 <= x && x <= p-118) begin 
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end 
            end
            else if (y == 45) begin
                if (p-127 <= x && x <= p-117) begin 
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end 
            end
            else if (y == 46) begin
                if (p-127 <= x && x <= p-117) begin 
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end 
            end
            else if (y == 47) begin
                if (x == p-127) begin 
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end  
                else if (p-126 <= x && x <= p-116) begin 
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end 
            end
            else if (y == 48) begin
                if (p-127 <= x && x <= p-126) begin 
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end  
                else if (p-125 <= x && x <= p-115) begin 
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end 
            end
            else if (y == 49) begin
                if (p-127 <= x && x <= p-125) begin 
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end  
                else if (p-124 <= x && x <= p-115) begin 
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end 
            end
            else if (y == 50) begin
                if (p-127 <= x && x <= p-124) begin 
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end  
                else if (p-123 <= x && x <= p-115) begin 
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end 
            end
            else if (y == 51) begin
                if (p-127 <= x && x <= p-123) begin 
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end  
                else if (p-122 <= x && x <= p-114) begin 
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end 
            end
            else if (y == 52) begin
                if (p-127 <= x && x <= p-122) begin 
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end  
                else if (p-121 <= x && x <= p-114) begin 
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end 
            end
            else if (y == 86) begin
                if (p-35 <= x && x <= p-34) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end
            else if (y == 87) begin
                if (p-36 <= x && x <= p-33) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end
            else if (y == 88) begin
                if (p-37 <= x && x <= p-32) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end
            else if (y == 89) begin
                if (p-38 <= x && x <= p-36) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-35 <= x && x <= p-34) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-33 <= x && x <= p-31) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-29 <= x && x <= p-28) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end
            else if (y == 90) begin
                if (p-38 <= x && x <= p-37) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-36 <= x && x <= p-35) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (x == p-34) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end
                else if (x == p-33) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-32 <= x && x <= p-30) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-29 <= x && x <= p-28) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (x == p-27) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end
            else if (y == 91) begin
                if (x == p-38) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (p-37 <= x && x <= p-36) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-35 <= x && x <= p-33) begin
                    rgb_reg = 12'hcdf;
                    isCloud = 1;
                end
                else if (x == p-32) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (p-31 <= x && x <= p-30) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
                else if (x == p-29) begin
                    rgb_reg = 12'hffe;
                    isCloud = 1;
                end
                else if (x == p-28) begin
                    rgb_reg = 12'hfff;
                    isCloud = 1;
                end
            end     
        end
        
    end
    
    assign isCloud_reg = isCloud;     
    
endmodule
