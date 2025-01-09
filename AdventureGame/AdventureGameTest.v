module AdventureGameTest(input [3:0]KEY, input [0:0]SW, input CLOCK_50, output [3:0]LEDR, output [0:0]LEDG);
	AdventureGame(~KEY[2], ~KEY[0], ~KEY[1], ~KEY[3], SW, CLOCK_50, LEDR[2:0], LEDR[3], LEDG);
endmodule