module FourBit2to1Mux(input [17:0]SW, output [3:0]LEDR);
	FourBit2to1MuxInternal(SW[17], SW, LEDR);
endmodule

module FourBit2to1MuxInternal(input s, input [7:0]SW, output [3:0]LEDR);
	assign LEDR = s ? SW[7:4] : SW[3:0];
endmodule