module BehavioralCounterTest(input [1:0]SW, input[0:0]KEY, output [20:0]LEDR, output [6:0]HEX4, HEX3, HEX2, HEX1, HEX0);
	BehavioralCounter(SW[1], KEY[0], SW[0], LEDR, HEX4, HEX3, HEX2, HEX1, HEX0);
endmodule