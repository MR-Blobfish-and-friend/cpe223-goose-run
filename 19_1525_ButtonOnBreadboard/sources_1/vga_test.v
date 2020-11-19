module vga_test
	(
		input wire clk, reset,
		input wire [1:0] JA,
		output wire hsync, vsync,
		output wire [11:0] rgb
	);
	
	// register for Basys 2 8-bit RGB DAC 
	reg [11:0] rgb_reg;
	
	// video status output from vga_sync to tell when to route out rgb signal to DAC
	wire video_on;
    wire [9:0] x,y;
        // instantiate vga_sync
        vga_sync vga_sync_unit (.clk(clk), .hsync(hsync), .vsync(vsync),
                                .video_on(video_on), .p_tick(), .x(x), .y(y));
        // rgb buffer
    wire floor, goose, bean;
    wire [11:0] goose_rgb, bean_rgb;
    
    
    divide_bean(clk, clk_25M);
    divide_G_jump(clk, clk_5);
    draw_floor f1(x, y, floor);
    draw_goose g1(.x(x), .y(y), .clk(clk_5), .btnL(JA[0]), .btnR(JA[1]), .goose(goose), .goose_rgb(goose_rgb));
    draw_bean b1(.x(x), .y(y), .clk(clk_25M), .bean(bean), .bean_rgb(bean_rgb));
    
    always @(*)
    begin
        if (goose) rgb_reg = goose_rgb;
        else if (bean) rgb_reg = bean_rgb;
        else if (floor) rgb_reg = 12'h940;
        else rgb_reg = 12'h000;
    end
    
    // output
    assign rgb = rgb_reg;
endmodule