module DLatchKevin(input D, input E, output reg Q);
	always @(E) begin
		if (E) begin
			Q <= D;
		end
	end
endmodule