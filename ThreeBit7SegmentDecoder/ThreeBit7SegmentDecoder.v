module ThreeBit7SegmentDecoder(input [2:0]SW, output [6:0]HEX0, output [2:0]LEDR);
	ThreeBit7SegmentDecoderInternal(SW[2], SW[1], SW[0], HEX0[0], HEX0[1], HEX0[2], HEX0[3], HEX0[4], HEX0[5], HEX0[6]);
endmodule

module ThreeBit7SegmentDecoderInternal(A2, A1, A0, A, B, C, D, E, F, G);
	input A2;
	input A1;
	input A0;
	output A, B, C, D, E, F, G;

	assign At = A1 | A2~^A0;
	assign Bt = ~A2 | A1~^A0;
	assign Ct = A2 | ~A1 | A0;
	assign Dt = ~A2&~A0 | ~A2&A1 | A1&~A0 | A2&~A1&A0;
	assign Et = ~A2&~A0 | A1&~A0;
	assign Ft = ~A1&~A0 | A2&~A1 | A2&~A0;
	assign Gt = A2^A1 | A1&~A0;

	assign A = ~At;
	assign B = ~Bt;
	assign C = ~Ct;
	assign D = ~Dt;
	assign E = ~Et;
	assign F = ~Ft;
	assign G = ~Gt;
endmodule
