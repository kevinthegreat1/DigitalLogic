module SRNorLatchTest(input [1:0]SW, output [1:0]LEDR);
	SRNorLatch(SW[1], SW[0], LEDR[1], LEDR[0]);
endmodule