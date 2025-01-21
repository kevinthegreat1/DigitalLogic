module AdventureGame(input N, E, S, W, Reset, CLOCK_50, output [2:0]rooms, output sword, output CLK, output [5:0]lcdState, output lcdCLK, output LCD_EN, LCD_RS, output [7:0]LCD_DATA);
	Clock #(16)(CLOCK_50, CLK);

	wire [255:0]characters;
	Rooms(N, E, S, W, Reset, sword, CLK, rooms, characters);
	Sword(Reset, rooms, CLK, sword);

	LCD(Reset, CLOCK_50, characters, lcdState, lcdCLK, LCD_EN, LCD_RS, LCD_DATA);
endmodule