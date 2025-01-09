module AdventureGame(input N, E, S, W, Reset, CLOCK_50, output [2:0]rooms, output sword, output CLK);
	Clock #(20)(CLOCK_50, CLK);

	Rooms(N, E, S, W, Reset, sword, CLK, rooms);
	Sword(Reset, rooms, CLK, sword);
endmodule