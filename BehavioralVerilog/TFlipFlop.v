module TFlipFlop(input T, input CLK, input R, output reg Q);
	always @(posedge CLK) begin
		if (R) Q <= 0;
		else if (T) Q <= ~Q;
	end
endmodule