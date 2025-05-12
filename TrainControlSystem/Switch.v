module Switch(input open, input CLOCK_50, output reg pwm);
	reg [19:0]counter;
	always @(posedge CLOCK_50) begin
		counter <= counter + 1;
		if (counter == (open ? 71000 : 58000)) pwm <= 0;
		if (counter == 1000000) begin
			counter <= 0;
			pwm <= 1;
		end
	end
endmodule