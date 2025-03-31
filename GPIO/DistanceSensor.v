module DistanceSensor(input CLOCK_50, inout reg [35:0]GPIO, output [6:0] HEX3, HEX2, HEX1, HEX0);
	reg [21:0]counter;
	reg [21:0]distanceCounter;
	reg [21:0]distance;
	wire [15:0]bcd;

	always @(posedge CLOCK_50) begin
		counter <= counter + 1;
		if (counter == 500) GPIO[0] <= 0;
		if (GPIO[1]) distanceCounter <= distanceCounter + 1;
		if (counter == 24'b1111111111111111111111) begin
			distance <= distanceCounter;
			counter <= 0;
			distanceCounter <= 0;
			GPIO[0] <= 1;
		end
	end

	Binary2BCD #(14)(distance/50 >= 38000 ? 9999 : distance/50/58, bcd);
	BCD2SevenSegment(bcd[15:12], HEX3);
	BCD2SevenSegment(bcd[11:8], HEX2);
	BCD2SevenSegment(bcd[7:4], HEX1);
	BCD2SevenSegment(bcd[3:0], HEX0);
endmodule