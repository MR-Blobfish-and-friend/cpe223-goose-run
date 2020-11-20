module vga_test
	(
		input wire clk, reset,
		input wire [3:2] JA,
		input wire [3:0] sw,
		output wire hsync, vsync,
		output wire [11:0] rgb,
		output wire [1:0] led
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
    reg hit, check_hit;
    
    initial begin
        hit = 0;
        check_hit = 0;
    end

    divide_bean(clk, clk_25M);
    divide_G_jump(clk, clk_5);
    draw_floor f1(x, y, floor);
    draw_goose g1(.x(x), .y(y), .clk(clk_5), .btnL(JA[2]), .btnR(JA[3]), 
                    .check_hit(hit), .reset(reset), .goose(goose), .goose_rgb(goose_rgb));
    draw_bean b1(.x(x), .y(y), .clk(clk_25M), .check_hit(hit), .reset(reset), .bean(bean), .bean_rgb(bean_rgb));
    //detect_hit h1(.goose(goose), .bean(bean), .hit(check_hit_wire));
    
    always @(posedge clk)
    begin
        if (reset) hit = 0;
        if (goose && bean) begin
            rgb_reg = 12'hf99;
            hit = 1;
        end
        else if (goose) rgb_reg = goose_rgb;
        else if (bean) rgb_reg = bean_rgb;
        else if (floor) rgb_reg = 12'h940;
        else rgb_reg = 12'h000;
    end
    
    // output
    assign rgb = rgb_reg;
endmodule