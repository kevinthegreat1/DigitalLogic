module BehavioralCounter(input E, input CLK, input R, output [20:0]bcd, output [6:0]HEX4, HEX3, HEX2, HEX1, HEX0);
	reg [15:0]Q;
	always @(posedge CLK) begin
		if (R) Q <= 0;
		else if (E) Q <= Q + 1;
	end

	Binary2BCD #(16)(Q, bcd);
	BCD2SevenSegment(bcd[19:16], HEX4);
	BCD2SevenSegment(bcd[15:12], HEX3);
	BCD2SevenSegment(bcd[11:8], HEX2);
	BCD2SevenSegment(bcd[7:4], HEX1);
	BCD2SevenSegment(bcd[3:0], HEX0);
endmodule