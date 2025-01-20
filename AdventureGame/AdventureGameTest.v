module AdventureGameTest(input [3:0]KEY, input [0:0]SW, input CLOCK_50, output [17:0]LEDR, output [7:0]LEDG, output LCD_ON, LCD_EN, LCD_RS, LCD_RW, output [7:0]LCD_DATA);
	AdventureGame(~KEY[2], ~KEY[0], ~KEY[1], ~KEY[3], SW, CLOCK_50, LEDR[2:0], LEDR[3], LEDG[0], LEDR[11:6], LEDG[1], LCD_EN, LCD_RS, LCD_DATA);
	assign LCD_ON = 1;
	assign LCD_RW = 0;
endmodule