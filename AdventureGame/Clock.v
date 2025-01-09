module Clock #(parameter BITS)(input CLOCK_50, output reg CLK);
	reg [BITS-1:0]counter;
	always @(posedge CLOCK_50) begin
		counter <= counter + 1;
		if (~|counter) CLK <= !CLK;
	end
endmodule