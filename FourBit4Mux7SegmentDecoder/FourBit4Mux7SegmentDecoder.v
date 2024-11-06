module FourBit4Mux7SegmentDecoder(input [17:0]SW, output [6:0]HEX0);
	wire [3:0]signal;
	FourBit4to1MuxInternal(SW[17:16], SW[15:0], signal);
	ThreeBit7SegmentDecoder(signal, HEX0);
endmodule