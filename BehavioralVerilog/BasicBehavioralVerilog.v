module BasicBehavioralVerilog(input D, input CLK, output Qa, output Qb, output Qc);
	DLatchKevin(D, CLK, Qa);
	DFlipFlop(D, CLK, Qb);
	DFlipFlopNegEdge(D, CLK, Qc);
endmodule