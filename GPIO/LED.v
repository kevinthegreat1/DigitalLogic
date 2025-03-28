module LED(input [0:0]SW, input CLOCK_50, output [35:0]GPIO);
	assign GPIO[0] = 1;
	assign GPIO[1] = SW[0];
	assign GPIO[2] = CLOCK_50;

	wire CLK;
	Clock #(20)(CLOCK_50, CLK);
	assign GPIO[3] = CLK;
endmodule