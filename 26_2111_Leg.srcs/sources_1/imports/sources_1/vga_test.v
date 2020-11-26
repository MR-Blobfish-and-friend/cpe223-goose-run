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
    wire floor, goose, bean, score;
    wire [11:0] goose_rgb, bean_rgb, score_rgb;
    reg hit;
    wire [13:0] score_wire;
    reg [13:0] score_present, score_hi;
    
    initial begin
        hit = 0;
        score_present = 0;
        score_hi = 0;
    end

    divide_25Hz(clk, clk_25Hz);
    draw_floor f1(x, y, floor);
    draw_goose g1(.x(x), .y(y), .clk(clk_25Hz), .btnL(JA[2]), .btnR(JA[3]), 
                    .check_hit(hit), .reset(reset), .goose(goose), .goose_rgb(goose_rgb));
    draw_bean b1(.x(x), .y(y), .clk(clk_25Hz), .check_hit(hit), .reset(reset), .bean(bean), .bean_rgb(bean_rgb));
    score_count s1(.clk(clk_25Hz), .hit(hit), .reset(reset), .score(score_wire));
    draw_score ds1(.x(x), .y(y), .score(score_present), .isScore(score), .score_rgb(score_rgb));
    
    
    always @(score_wire)
    begin
        score_present = score_wire;
    end
    
    always @(posedge clk)
    begin
        if (reset) begin
            hit = 0;
            score_present = 0;
        end
        if (goose && bean) begin
            rgb_reg = 12'hf99;
            hit = 1;
        end        
        else if (goose) rgb_reg = goose_rgb;
        else if (bean) rgb_reg = bean_rgb;
        else if (floor) rgb_reg = 12'h940;
        else if (score) rgb_reg = score_rgb;
        else rgb_reg = 12'h000;
    end
    
    // output
    assign rgb = rgb_reg;
endmodule