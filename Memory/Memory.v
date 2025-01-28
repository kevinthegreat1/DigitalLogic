module Memory #(parameter BITS = 64, ADDRESS_BUS_WIDTH = 6)(input [BITS-1:0]D, input [ADDRESS_BUS_WIDTH-1:0]Address, input WE, output [BITS-1:0]Q);
	wire [(1<<ADDRESS_BUS_WIDTH)-1:0]addressDecoded;
	Decoder #(ADDRESS_BUS_WIDTH) address_decoder(Address, addressDecoded);

	wire [(1<<ADDRESS_BUS_WIDTH) * BITS - 1:0]out;
	Word #(BITS) words [(1<<ADDRESS_BUS_WIDTH)-1:0] (D, addressDecoded & {1<<ADDRESS_BUS_WIDTH{WE}}, out);
	Multiplexer #(BITS, ADDRESS_BUS_WIDTH) output_multiplexer (out, Address, Q);
endmodule
