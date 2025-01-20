// https://en.wikipedia.org/wiki/Hitachi_HD44780_LCD_controller
module LCD(	input Reset,
				input CLOCK_50,
				input [7:0]characters[1:0][15:0],
				output reg [5:0]state,
				output reg CLK_2500,
				output reg LCD_EN,
				output reg LCD_RS,
				output reg [7:0]LCD_DATA);

	parameter	RESET0 = 0,
					RESET1 = 1,
					RESET2 = 2,
					FUNC_SET = 3,
					MODE_SET = 4,
					DISPLAY_ON = 5,
					WRITE = 6,
					RETURN_TO_LINE_0 = 7,
					RETURN_TO_LINE_1 = 8,
					TOGGLE_E = 9,
					HOLD = 10,
					DISPLAY_OFF = 11,
					DISPLAY_CLEAR = 12;

	// Counter has several uses:
	// - Used to make certain states last multiple clock cycles since they take longer
	// - Used to track the cursor/current character when writing
	reg [5:0]counter = 0;
	parameter	END_LINE0 = 6'b001111,
					END_LINE1 = 6'b011111;

	reg [15:0]CLK_2500_Count;
	always @(posedge CLOCK_50) begin
		if (CLK_2500_Count == 16'h4E20) begin
			CLK_2500_Count <= 0;
			CLK_2500 <= 1;
		end else begin
			CLK_2500_Count <= CLK_2500_Count + 1;
			CLK_2500 <= 0;
		end
	end

	reg [5:0]nextCommand;
	reg line;
	always @(posedge CLK_2500) begin
		case (state)
			// The following comment is copied from the sample code from https://www.edaboard.com/threads/fpga-de2-115-lcd.403331/#post-1737731
			// These reset states are needed for reliable push button reset of lcd
			RESET0: begin
				LCD_EN <= 1;
				LCD_RS <= 0;
				LCD_DATA <= 8'h38;
				nextCommand <= RESET1;
				state <= TOGGLE_E;
			end
			RESET1: begin
				LCD_EN <= 1;
				LCD_RS <= 0;
				LCD_DATA <= 8'h38;
				nextCommand <= RESET2;
				state <= TOGGLE_E;
			end
			RESET2: begin
				LCD_EN <= 1;
				LCD_RS <= 0;
				LCD_DATA <= 8'h38;
				nextCommand <= FUNC_SET;
				state <= TOGGLE_E;
			end
			FUNC_SET: begin
				LCD_EN <= 1;
				LCD_RS <= 0;
				LCD_DATA <= 8'h38;
				nextCommand <= DISPLAY_OFF;
				state <= TOGGLE_E;
			end
			DISPLAY_OFF: begin
				LCD_EN <= 1;
				LCD_RS <= 0;
				LCD_DATA <= 8'h08;
				nextCommand <= Reset ? DISPLAY_OFF : DISPLAY_CLEAR;
				state <= TOGGLE_E;
				counter <= 0; // Reset the counter to 0 in preparation for the next state below.
			end
			DISPLAY_CLEAR: begin
				LCD_EN <= 1;
				LCD_RS <= 0;
				LCD_DATA <= 8'h01;
				// Wait until counter counts to the to the end before moving on to the next state since this command takes much longer than other commands.
				nextCommand <= &counter ? DISPLAY_ON : DISPLAY_CLEAR;
				counter <= counter + 1;
				state <= TOGGLE_E;
			end
			DISPLAY_ON: begin
				LCD_EN <= 1;
				LCD_RS <= 0;
				LCD_DATA <= 8'h0C;
				nextCommand <= MODE_SET;
				state <= TOGGLE_E;
			end
			MODE_SET: begin
				LCD_EN <= 1;
				LCD_RS <= 0;
				LCD_DATA <= 8'h06;
				nextCommand <= WRITE;
				state <= TOGGLE_E;
				counter <= 0; // Reset the conuter to 0 in preparation for the next state (write) below.
			end
			// This is where writing the characters happen.
			// The if the counter's first bit (sixth bit from the right) is 1, this code is meant to run.
			// The counter's second bit (fifth bit from the right) is the line number. 0 for the first line, and 1 for the second line.
			// The counter's last four bits (first four bits from te right) is the character. 0 is the first character, and 1111 (15) is the last character.
			WRITE: begin
				LCD_EN <= 1;
				LCD_RS <= 1;
				LCD_DATA <= characters[counter[4]][counter[3:0]];
				case (counter)
					END_LINE0: nextCommand <= RETURN_TO_LINE_1;
					END_LINE1: nextCommand <= RETURN_TO_LINE_0;
					default: nextCommand <= WRITE;
				endcase
				counter <= counter + 1;
				state <= TOGGLE_E;
			end
			RETURN_TO_LINE_0: begin
				LCD_EN <= 1;
				LCD_RS <= 0;
				LCD_DATA <= 8'h80;
				nextCommand <= Reset ? RESET0 : WRITE;
				state <= TOGGLE_E;
				counter = 0; // Reset the counter in preparation for the write state.
			end
			RETURN_TO_LINE_1: begin
				LCD_EN <= 1;
				LCD_RS <= 0;
				LCD_DATA <= 8'hC0;
				nextCommand <= WRITE;
				state <= TOGGLE_E;
			end
			TOGGLE_E: begin
				LCD_EN <= 0;
				state <= nextCommand; // Used to go to HOLD but doesn't seem to be needed.
			end
			HOLD: state <= nextCommand;
		endcase
	end
endmodule