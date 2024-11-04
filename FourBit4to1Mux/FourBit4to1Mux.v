module FourBit4to1Mux(input [17:0]SW, output [3:0]LEDR);
	wire [3:0]Mux1, Mux2;
	FourBit2to1MuxInternal(SW[16], SW[15:8], Mux1);
	FourBit2to1MuxInternal(SW[16], SW, Mux2);
	assign LEDR = SW[17] ? Mux1 : Mux2;
endmodule