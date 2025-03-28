module Servo(input [0:0]SW, input CLOCK_50, output reg [35:0]GPIO);
	reg [19:0]counter;
	always @(posedge CLOCK_50) begin
		counter <= counter + 1;
		if (counter == (SW[0] ? 105000 : 45000)) GPIO[0] <= 0;
		if (counter == 1000000) begin
			counter <= 0;
			GPIO[0] <= 1;
		end
	end
endmodule