module Elevator(input up, input down, input CLK, input R, output [3:0]lights);
	wire [1:0]S, Sbar, Snext;

	assign Snext[0] = S[1]&~S[0] | up&~down&(S[1]|~S[0]) | ~up&~down&S[0];
	assign Snext[1] = S[1]&S[0] | up&~down&(S[0]|S[1]) | ~up&~down&~S[1];

	DFlipFlop(~R & Snext[0], CLK, S[0], Sbar[0]);
	DFlipFlop(~R & Snext[1], CLK, S[1], Sbar[0]);

	assign lights[0] = ~S[1]&~S[0];
	assign lights[1] = ~S[1]&S[0];
	assign lights[2] = S[1]&~S[0];
	assign lights[3] = S[1]&S[0];
endmodule