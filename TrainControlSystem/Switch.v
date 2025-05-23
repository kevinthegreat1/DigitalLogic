module Switch#(parameter right = 0)(input open, input E, input CLOCK_50, output reg pwm);
	reg [19:0]counter;
	always @(posedge CLOCK_50) begin
		counter <= counter + 1;
		if (counter == ((open ^ right) ? 72000 : 62000)) pwm <= 0;
		if (counter == 1000000) begin
			counter <= 0;
			if (E) pwm <= 1;
		end
	end
endmodule