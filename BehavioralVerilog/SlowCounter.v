module SlowCounter(input CLOCK_50, output [6:0]HEX3, HEX2, HEX1, HEX0);
	reg [19:0]counter;
	always @(posedge CLOCK_50) begin
		counter <= counter + 1;
	end

	reg [15:0]val;
	always @(posedge CLOCK_50) begin
		if (~|counter) val <= (val + 1) % 10000;
	end

	wire [17:0]bcd;
	Binary2BCD #(14)(val, bcd);
	BCD2SevenSegment(bcd[15:12], HEX3);
	BCD2SevenSegment(bcd[11:8], HEX2);
	BCD2SevenSegment(bcd[7:4], HEX1);
	BCD2SevenSegment(bcd[3:0], HEX0);
endmodule