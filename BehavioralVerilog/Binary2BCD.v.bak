module Binary2BCD(input [7:0]val, output reg [9:0]bcd);
	integer i, j;

	always @(val) begin
		for (i = 0; i <= 9; i = i + 1) bcd[i] = 0;
		bcd[7:0] = val;
		for (i = 0; i <= 4; i = i + 1)
			for (j = 0; j <= i / 3; j = j + 1)
				if (bcd[8 - i + 4 * j -: 4] > 4)
					bcd[8 - i + 4 * j -: 4] = bcd[8 - i + 4 * j -: 4] + 4'd3;
	end
endmodule