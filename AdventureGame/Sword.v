module Sword(input Reset, input [2:0]rooms, input CLK, output reg sword);
	parameter SSS = 3'b100;

	always @(posedge CLK) begin
		if (Reset) sword <= 0;
		if (rooms == SSS) sword <= 1;
	end
endmodule