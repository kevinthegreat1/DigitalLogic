module BinaryCounterTest(input [0:0]SW, input [0:0]KEY, output [7:0]LEDR);
	BinaryCounter(SW[0], KEY[0], LEDR);
endmodule