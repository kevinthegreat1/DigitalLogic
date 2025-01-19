// https://en.wikipedia.org/wiki/Hitachi_HD44780_LCD_controller
module LCD(input Reset, input CLOCK_50, input [7:0]characters[1:0][15:0], output reg [5:0]state, output reg CLK_400, output reg LCD_EN, output reg LCD_RS, output reg [7:0]LCD_DATA);
	parameter RESET0 = 0, RESET1 = 1, RESET2 = 2, FUNC_SET = 3, MODE_SET = 4, DISPLAY_ON = 5, LINE0 = 6'b100000, LINE1 = 6'b110000, RETURN_HOME0 = 6, RETURN_HOME1 = 7, TOGGLE_E = 8, HOLD = 9, DISPLAY_OFF = 10, DISPLAY_CLEAR = 11;

	reg [19:0]CLK_400_Count;
	always @(posedge CLOCK_50) begin
		if (Reset) begin
			CLK_400_Count <= 20'h00000;
			CLK_400 <= 0;
		end else if (CLK_400_Count == 20'h1E848) begin
			CLK_400_Count <= 20'h00000;
			CLK_400 <= 1;
		end else begin
			CLK_400_Count <= CLK_400_Count + 1;
			CLK_400 <= 0;
		end
	end

	reg [5:0]nextCommand;
	reg line;
	always @(posedge CLK_400) begin
		if (Reset) begin
			state <= RESET0;
			LCD_DATA <= 8'h38;
			LCD_EN <= 1;
			LCD_RS <= 0;
		end

		case (state)
			// These reset states are needed for reliable push button reset of lcd
			RESET0: begin
				LCD_EN <= 1;
				LCD_RS <= 0;
				LCD_DATA <= 8'h38;
				state <= TOGGLE_E;
				nextCommand <= RESET1;
			end
			RESET1: begin
				LCD_EN <= 1;
				LCD_RS <= 0;
				LCD_DATA <= 8'h38;
				state <= TOGGLE_E;
				nextCommand <= RESET2;
			end
			RESET2: begin
				LCD_EN <= 1;
				LCD_RS <= 0;
				LCD_DATA <= 8'h38;
				state <= TOGGLE_E;
				nextCommand <= FUNC_SET;
			end
			FUNC_SET: begin
				LCD_EN <= 1;
				LCD_RS <= 0;
				LCD_DATA <= 8'h38;
				state <= TOGGLE_E;
				nextCommand <= DISPLAY_OFF;
			end
			DISPLAY_OFF: begin
				LCD_EN <= 1;
				LCD_RS <= 0;
				LCD_DATA <= 8'h08;
				state <= TOGGLE_E;
				nextCommand <= DISPLAY_CLEAR;
			end
			DISPLAY_CLEAR: begin
				LCD_EN <= 1;
				LCD_RS <= 0;
				LCD_DATA <= 8'h01;
				state <= TOGGLE_E;
				nextCommand <= DISPLAY_ON;
			end
			DISPLAY_ON: begin
				LCD_EN <= 1;
				LCD_RS <= 0;
				LCD_DATA <= 8'h0C;
				state <= TOGGLE_E;
				nextCommand <= MODE_SET;
			end
			MODE_SET: begin
				LCD_EN <= 1;
				LCD_RS <= 0;
				LCD_DATA <= 8'h06;
				state <= TOGGLE_E;
				nextCommand <= LINE0;
			end
			default: begin
				LCD_EN <= 1;
				LCD_RS <= 1;
				LCD_DATA <= characters[state[4]][state[3:0]];
				case (state)
					5'b01111: nextCommand <= RETURN_HOME1;
					5'b11111: nextCommand <= RETURN_HOME0;
					default: nextCommand <= state + 1;
				endcase
				state <= TOGGLE_E;
			end
			RETURN_HOME0: begin
				LCD_EN <= 1;
				LCD_RS <= 0;
				LCD_DATA <= 8'h80;
				state <= TOGGLE_E;
				nextCommand <= LINE0;
			end
			RETURN_HOME1: begin
				LCD_EN <= 1;
				LCD_RS <= 0;
				LCD_DATA <= 8'hC0;
				state <= TOGGLE_E;
				nextCommand <= LINE1;
			end
			TOGGLE_E: begin
				LCD_EN <= 0;
				state <= HOLD;
			end
			HOLD: state <= nextCommand;
		endcase
	end
endmodule