module Rooms(input N, E, S, W, Reset, sword, CLK, output reg [2:0]rooms);
	parameter CC = 3'b000, TT = 3'b001, RR = 3'b101, SSS = 3'b100, DD = 3'b110, GG = 3'b011, VV = 3'b111;
	reg prevN, prevE, prevS, prevW;

	always @(posedge CLK) begin
		if (Reset) rooms <= CC;
		if (N && !prevN && rooms == RR) rooms <= rooms - 3'b100;
		if (E && !prevE) begin
			if (rooms == CC || rooms == SSS || rooms == RR) rooms <= rooms + 1;
		end
		if (S && !prevS && rooms == TT) rooms <= rooms + 3'b100;
		if (W && !prevW) begin
			if (rooms == TT || rooms == RR) rooms <= rooms - 1;
		end
		prevN <= N;
		prevE <= E;
		prevS <= S;
		prevW <= W;
	end
endmodule