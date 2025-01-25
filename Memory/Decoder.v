module Decoder #(parameter BITS = 6)(input [BITS-1:0]D, output [(1<<BITS)-1:0]Q);
	assign Q = 1 << D;
endmodule
