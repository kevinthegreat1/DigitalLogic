module Thunderbird(input L, input R, input Reset, input CLK, output [2:0]Lout, output [2:0]Rout);
	wire [2:0]LInternal, LbarInternal, Lnext, RInternal, RbarInternal, Rnext;

	assign Lnext[0] = L&~R | ~R&LbarInternal[2]&LbarInternal[1]&LInternal[0] | ~R&LbarInternal[2]&LInternal[1]&LInternal[0] | (L~^R)&LbarInternal[2]&LInternal[1]&LbarInternal[0]&RInternal[0]&RbarInternal[1]&RInternal[2];
	assign Lnext[1] = ~R&LbarInternal[2]&LbarInternal[1]&LInternal[0] | ~R&LbarInternal[2]&LInternal[1]&LInternal[0] | L&R;
	assign Lnext[2] = ~R&~LInternal[2]&LInternal[1]&LInternal[0] | (L~^R)&LbarInternal[2]&LInternal[1]&LbarInternal[0]&RInternal[0]&RbarInternal[1]&RInternal[2];

	assign Rnext[0] = ~L&R | ~L&RInternal[0]&RbarInternal[1]&RbarInternal[2] | ~L&RInternal[0]&RInternal[1]&RbarInternal[2] | L&R;
	assign Rnext[1] = ~L&RInternal[0]&RbarInternal[1]&RbarInternal[2] | ~L&RInternal[0]&RInternal[1]&RbarInternal[2] | (L~^R)&LbarInternal[2]&LInternal[1]&LbarInternal[0]&RInternal[0]&RbarInternal[1]&RInternal[2];
	assign Rnext[2] = ~L&RInternal[0]&RInternal[1]&RbarInternal[2] | L&R;

	DFlipFlop(~Reset & Lnext[0], CLK, LInternal[0], LbarInternal[0]);
	DFlipFlop(~Reset & Lnext[1], CLK, LInternal[1], LbarInternal[1]);
	DFlipFlop(~Reset & Lnext[2], CLK, LInternal[2], LbarInternal[2]);

	DFlipFlop(~Reset & Rnext[0], CLK, RInternal[0], RbarInternal[0]);
	DFlipFlop(~Reset & Rnext[1], CLK, RInternal[1], RbarInternal[1]);
	DFlipFlop(~Reset & Rnext[2], CLK, RInternal[2], RbarInternal[2]);

	assign Lout = LInternal;
	assign Rout = RInternal;
endmodule