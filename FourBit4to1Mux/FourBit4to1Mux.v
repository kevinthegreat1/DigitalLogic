module FourBit4to1Mux(input [17:0]SW, output [3:0]LEDR);
	FourBit4to1MuxInternal(SW[17:16], SW[15:0], LEDR);
endmodule

module FourBit4to1MuxInternal(input [1:0]s, input [15:0]SW, output [3:0]LEDR);
	wire [3:0]Mux1, Mux2;
	FourBit2to1MuxInternal(s[0], SW[15:8], Mux1);
	FourBit2to1MuxInternal(s[0], SW, Mux2);
	assign LEDR = {4{s[1]}} & Mux1 | {4{~s[1]}} & Mux2;
//	assign LEDR = s[1] ? Mux1 : Mux2;
endmodule