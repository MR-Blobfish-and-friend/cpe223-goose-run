module vga_test
	(
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
    wire floor, goose, bean, score, score_hi, sky, isEnd, start;
    wire [11:0] goose_rgb, bean_rgb, score_rgb, score_hi_rgb, sky_rgb, floor_rgb, start_rgb;
    reg [0:0] menu, play, game_over, activate_over, activate_reset, first_round, guy;
    wire [31:0] score_wire;
    integer score_hi_mem, state;
//    parameter start = 0, play = 1, over = 2;
    
    initial begin
        score_hi_mem <= 0;
        menu <= 1;
        play <= 0;
        game_over <= 0;
        activate_over <= 0;
        activate_reset <= 0;
        first_round <= 1;
        guy = 0;
    end

    divide_25Hz d1(clk, clk_25Hz);
    divide_2p5Hz d2(clk, clk_2p5Hz);
    divide_1000Hz d3(clk, clk_1000Hz);
    
    score_count scc(.clk(clk_2p5Hz), .enable(play), .reset(reset), .score(score_wire));
    draw_score dsc(.x(x), .y(y), .score(score_wire), .isScore(score), .score_rgb(score_rgb));
    draw_score_hi dsh(.x(x), .y(y), .score_hi(score_hi_mem), .isScore(score_hi), .score_rgb(score_hi_rgb));
    draw_goose dg(.x(x), .y(y), .clk(clk_25Hz), .btnL(JA[2]), .btnR(JA[3]), 
                    .stop(game_over), .reset(reset), .goose(goose), .goose_rgb(goose_rgb));
    draw_bean db(.x(x), .y(y), .clk_shift(clk_25Hz), .clk_rand(clk_1000Hz), .button(JA), .score(score_wire),
                    .stop(~play), .reset(reset), .bean(bean), .bean_rgb(bean_rgb));
    draw_floor df(.x(x), .y(y), .floor(floor), .floor_rgb(floor_rgb));
    draw_sky ds(.x(x), .y(y), .sky(sky), .sky_rgb(sky_rgb));
    draw_end de(.x(x), .y(y), .game_over(game_over),.isEnd(isEnd));
    draw_start dst(.x(x), .y(y), .enable(menu), .start(start), .start_rgb(start_rgb));
    
    vga_sync vga_sync_unit (.clk(clk), .hsync(hsync), .vsync(vsync), .video_on(video_on), .p_tick(), .x(x), .y(y));

    always @(activate_reset or activate_over) begin
        if ((game_over & activate_reset) | first_round) begin
            menu = 1;
            play = 0;
            game_over = 0;
            first_round = 0;
            guy = 0;
        end
        else if (menu & activate_reset) begin
            menu = 0;
            play = 1;
            game_over = 0;
            guy = 0;
        end
        else if (activate_over) begin
            menu = 0;
            play = 0;
            game_over = 1;
            guy = 0;
        end
        else begin guy = 1; end
    end
    
    always @(posedge clk)
    begin
        if (reset) begin 
            activate_over = 0;
            activate_reset = 1;
        end
        else activate_reset = 0;
        if (goose && bean) activate_over <= 1;
        else if (start) rgb_reg <= start_rgb;
        else if (isEnd) rgb_reg <= 12'hfff;
        else if (score) rgb_reg <= score_rgb;
        else if (score_hi) rgb_reg <= score_hi_rgb;
        else if (goose) rgb_reg <= goose_rgb;
        else if (bean) rgb_reg <= bean_rgb;
        else if (floor) rgb_reg <= floor_rgb;
        else if (sky) rgb_reg <= sky_rgb;
        else rgb_reg <= 12'h900;
    end
    
    always @(score_wire)
        if (score_wire > score_hi_mem) score_hi_mem <= score_wire;
    
    // output
    assign rgb = rgb_reg;
//    assign led[11:1] = score_wire;
    assign led[15:12] = {menu, play, game_over, guy};
    assign led[2:0] = {activate_over, activate_reset, reset};
//    assign led[0] = guy;
endmodule