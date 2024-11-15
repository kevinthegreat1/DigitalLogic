module TFlipFlop(input T, input CLK, output Q, output Qbar);
	DFlipFlop(T ^ Q, CLK, Q, Qbar);
endmodule