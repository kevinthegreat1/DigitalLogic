module StructuralAndBehavioralCounterTest(input [1:0]SW, input [0:0]KEY, output [3:0]LEDR);
	StructuralAndBehavioralCounter(SW[1], KEY[0], SW[0], LEDR);
endmodule