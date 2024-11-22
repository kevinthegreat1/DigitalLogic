module BinaryCounter(input T, input CLK, output [7:0]counter);
	wire [7:0]counterBar;
	TFlipFlop(T, CLK, counter[0], counterBar[0]);
	TFlipFlop(T, counterBar[0], counter[1], counterBar[1]);
	TFlipFlop(T, counterBar[1], counter[2], counterBar[2]);
	TFlipFlop(T, counterBar[2], counter[3], counterBar[3]);
	TFlipFlop(T, counterBar[3], counter[4], counterBar[4]);
	TFlipFlop(T, counterBar[4], counter[5], counterBar[5]);
	TFlipFlop(T, counterBar[5], counter[6], counterBar[6]);
	TFlipFlop(T, counterBar[6], counter[7], counterBar[7]);
endmodule