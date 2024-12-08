module Thunderbird(input L, input R, input Reset, input CLK, output [2:0]Lout, output [2:0]Rout);
	wire L0, L1, L2, Lbar0, Lbar1, Lbar2, R0, R1, R2, Rbar0, Rbar1, Rbar2;
	wire [2:0]Lnext, Rnext;
	wire LRterm1, LRterm2;

	assign LRterm1 = L&R & (~L2&~L1&~L0&~R0&~R1&~R2 | ~L2&~L1&L0&~R0&~R1&~R2 | ~L2&L1&L0&~R0&~R1&~R2 | L2&L1&L0&~R0&~R1&~R2
								| ~L2&~L1&~L0&R0&~R1&~R2 | ~L2&~L1&~L0&R0&R1&~R2 | ~L2&~L1&~L0&R0&R1&R2 | L2&~L1&L0&~R0&R1&~R2);
	assign LRterm2 = (L~^R) & ~L2&L1&~L0&R0&~R1&R2;

	assign Lnext[0] = ~R & (~L2&~L1&L0&~R0&~R1&~R2 | ~L2&L1&L0&~R0&~R1&~R2)
						 | L&~R & (~L2&~L1&~L0&~R0&~R1&~R2 | ~L2&~L1&~L0&R0&~R1&~R2 | ~L2&~L1&~L0&R0&R1&~R2 | ~L2&~L1&~L0&R0&R1&R2
									 | ~L2&L1&~L0&R0&~R1&R2 | L2&~L1&L0&~R0&R1&~R2)
						 | LRterm2;
	assign Lnext[1] = ~R & (~L2&~L1&L0&~R0&~R1&~R2 | ~L2&L1&L0&~R0&~R1&~R2)
						 | LRterm1;
	assign Lnext[2] = ~R & ~L2&L1&L0&~R0&~R1&~R2
						 | LRterm2;
	assign Rnext[0] = ~L & (~L2&~L1&~L0&R0&~R1&~R2 | ~L2&~L1&~L0&R0&R1&~R2)
						 | ~L&R & (~L2&~L1&~L0&~R0&~R1&~R2 | ~L2&~L1&L0&~R0&~R1&~R2 | ~L2&L1&L0&~R0&~R1&~R2 | L2&L1&L0&~R0&~R1&~R2
									 | ~L2&L1&~L0&R0&~R1&R2 | L2&~L1&L0&~R0&R1&~R2)
						 | LRterm1;
	assign Rnext[1] = ~L & (~L2&~L1&~L0&R0&~R1&~R2 | ~L2&~L1&~L0&R0&R1&~R2)
						 | LRterm2;
	assign Rnext[2] = ~L & ~L2&~L1&~L0&R0&R1&~R2
						 | LRterm1;

	DFlipFlop(~Reset & Lnext[0], CLK, L0, Lbar0);
	DFlipFlop(~Reset & Lnext[1], CLK, L1, Lbar1);
	DFlipFlop(~Reset & Lnext[2], CLK, L2, Lbar2);
	DFlipFlop(~Reset & Rnext[0], CLK, R0, Rbar0);
	DFlipFlop(~Reset & Rnext[1], CLK, R1, Rbar1);
	DFlipFlop(~Reset & Rnext[2], CLK, R2, Rbar2);

	assign Lout[0] = L0;
	assign Lout[1] = L1;
	assign Lout[2] = L2;
	assign Rout[2] = R0;
	assign Rout[1] = R1;
	assign Rout[0] = R2;
endmodule