module Multiplexer #(parameter BITS = 64, ADDRESS_BUS_WIDTH = 6)(input [(1<<ADDRESS_BUS_WIDTH) * BITS - 1:0]D, input [ADDRESS_BUS_WIDTH-1:0]Address, output [BITS-1:0]Q);
	assign Q = D[Address * BITS +: BITS];
endmodule
