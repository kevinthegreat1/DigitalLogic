module StructuralAndBehavioralCounter(input E, input CLK, input R, output [3:0]out);
	TFlipFlop(E, CLK, R, out[0]);
	TFlipFlop(E & out[0], CLK, R, out[1]);
	TFlipFlop(E & out[0] & out[1], CLK, R, out[2]);
	TFlipFlop(E & out[0] & out[1] & out[2], CLK, R, out[3]);
endmodule