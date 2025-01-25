module Word #(parameter BITS = 64)(input [BITS-1:0]D, input E, output [BITS-1:0]Q);
	DLatchKevin word_latches [BITS-1:0] (D, E, Q);
endmodule
