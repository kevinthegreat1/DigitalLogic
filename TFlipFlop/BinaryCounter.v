module BinaryCounter(input T, input CLK, output [7:0]counter);
	wire [7:0]counterBar;
	TFlipFlop(T, CLK, counter[0], counterBar[0]);
	TFlipFlop(T, ~counter[0], counter[1], counterBar[1]);
	TFlipFlop(T, ~counter[1], counter[2], counterBar[2]);
	TFlipFlop(T, ~counter[2], counter[3], counterBar[3]);
	TFlipFlop(T, ~counter[3], counter[4], counterBar[4]);
	TFlipFlop(T, ~counter[4], counter[5], counterBar[5]);
	TFlipFlop(T, ~counter[5], counter[6], counterBar[6]);
	TFlipFlop(T, ~counter[6], counter[7], counterBar[7]);
endmodule