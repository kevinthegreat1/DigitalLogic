module MemoryTest(input [17:0]SW, output [2:0]LEDR);
	Memory #(3, 2)(SW[2:0], SW[17:16], SW[15], LEDR);
endmodule
