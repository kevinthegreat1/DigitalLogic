module TFlipFlopTest(input [7:0]SW, input [3:0]KEY, output [7:0]LEDR);
	wire Qbar;
	TFlipFlop(SW[0], KEY[0], LEDR[0], Qbar);
endmodule