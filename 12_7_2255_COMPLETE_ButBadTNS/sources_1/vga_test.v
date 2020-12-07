module vga_test	(
		input wire clk, reset,
		input wire [3:2] JA,
		input wire [3:0] sw,
		output wire hsync, vsync,
		output wire [11:0] rgb,
		output wire [15:0] led
	);	
	reg [11:0] rgb_reg;
    wire [9:0] x,y;
    wire clk_25Hz, clk_2p5Hz, clk_1000Hz;
    wire floor, glass, goose, bean, score, score_hi, sky, isEnd, isStart;
    wire [11:0] goose_rgb, bean_rgb, score_rgb, score_hi_rgb, sky_rgb, floor_rgb, start_rgb;
    reg hit, menu, play, game_over, first_round;
    wire [31:0] score_wire;
    integer score_hi_mem;
    
    initial begin
        game_over = 0;
        score_hi_mem = 0;
        first_round = 1;
        menu = 1;
        play = 0;
        game_over = 0;
    end

    divide_25Hz d1(clk, clk_25Hz);
    divide_2p5Hz d2(clk, clk_2p5Hz);
    divide_1000Hz d3(clk, clk_1000Hz);
    
    score_count scc(.clk(clk_2p5Hz), .enable(play), .reset(reset), .score(score_wire));
    draw_score dsc(.x(x), .y(y), .score(score_wire), .isScore(score), .score_rgb(score_rgb));
    draw_score_hi dsh(.x(x), .y(y), .score_hi(score_hi_mem), .isScore(score_hi), .score_rgb(score_hi_rgb));
    draw_goose dg(.x(x), .y(y), .clk(clk_25Hz), .btnL(JA[2]), .btnR(JA[3]), 
                    .check_hit(game_over), .reset(reset), .goose(goose), .goose_rgb(goose_rgb));
    draw_bean db(.x(x), .y(y), .clk_shift(clk_25Hz), .clk_rand(clk_1000Hz), .stop(~play), .reset(reset), 
                    .button(JA), .score(score_wire), .bean(bean), .bean_rgb(bean_rgb));   
    draw_floor df(x, y, floor, glass);
    draw_sky ds(.x(x), .y(y), .sky(sky), .sky_rgb(sky_rgb));
    draw_end de(.x(x), .y(y), .hit(game_over),.isEnd(isEnd));
    draw_start dst(.x(x), .y(y), .enable(menu), .start(isStart), .start_rgb(start_rgb));
    
    vga_sync vga_sync_unit (.clk(clk), .hsync(hsync), .vsync(vsync), .video_on(video_on), .p_tick(), .x(x), .y(y));
    
    always @(posedge clk_2p5Hz) begin
        if ((game_over & reset) | first_round) begin
            menu <= 1;
            play <= 0;
            game_over <= 0;
            first_round <= 0;
        end
        else if (menu & reset) begin
            menu <= 0;
            play <= 1;
            game_over <= 0;
        end
        else if (hit) begin
            menu <= 0;
            play <= 0;
            game_over <= 1;
        end
    end
    
    always @(posedge clk)
    begin
        if (reset) hit = 0;
        if (goose && bean) hit = 1;
        if (isStart) rgb_reg = start_rgb;
        else if (isEnd) rgb_reg = 12'hfff;
        else if (score) rgb_reg = score_rgb;
        else if (score_hi) rgb_reg = score_hi_rgb;
        else if (goose) rgb_reg = goose_rgb;
        else if (bean) rgb_reg = bean_rgb;
        else if (floor) rgb_reg = 12'h940;
        else if (glass) rgb_reg = 12'h2a2;
        else if (sky) rgb_reg = sky_rgb;
        else rgb_reg = 12'h000;
        if (score_wire > score_hi_mem) score_hi_mem = score_wire;
    end
    
    // output
    assign rgb = rgb_reg;
    assign led[10:0] = score_wire;
    assign led[15:13] = {menu, play, game_over};
endmodule