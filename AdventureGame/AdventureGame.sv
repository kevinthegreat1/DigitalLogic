module AdventureGame(input N, E, S, W, Reset, CLOCK_50, output [2:0]rooms, output sword, output CLK, output [5:0]lcdState, output lcdCLK, output LCD_EN, LCD_RS, output [7:0]LCD_DATA);
	Clock #(20)(CLOCK_50, CLK);

	Rooms(N, E, S, W, Reset, sword, CLK, rooms);
	Sword(Reset, rooms, CLK, sword);

	wire [7:0]characters[1:0][15:0];
	assign characters[0][0] = "a";
	assign characters[0][1] = "b";
	assign characters[0][2] = "c";
	assign characters[0][3] = "d";
	assign characters[1][13] = "x";
	assign characters[1][14] = "y";
	assign characters[1][15] = "z";
	LCD(Reset, CLOCK_50, characters, lcdState, lcdCLK, LCD_EN, LCD_RS, LCD_DATA);
endmodule