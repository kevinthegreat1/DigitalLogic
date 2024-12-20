module DFlipFlop(input D, input CLK, output Q, output Qbar);
	wire CLKL1, Q1, Q1bar;
	assign CLKL1 = ~CLK;
	DLatchKevin(D, CLKL1, Q1, Q1bar);

	wire CLKL2;
	assign CLKL2 = ~CLKL1;
	DLatchKevin(Q1, CLKL2, Q, Qbar);
endmodule