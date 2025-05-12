module Key(input key, input CLOCK_50, output reg pressed);
	reg prev;
	always @(posedge CLOCK_50) begin
		if (!key && prev) pressed <= 1;
		else if (key && !prev) pressed <= 0;
		prev <= key;
	end
endmodule