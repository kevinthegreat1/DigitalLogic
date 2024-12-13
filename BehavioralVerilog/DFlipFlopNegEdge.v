module DFlipFlopNegEdge(input D, input CLK, output reg Q);
	always @(negedge CLK) begin
		Q <= D;
	end
endmodule