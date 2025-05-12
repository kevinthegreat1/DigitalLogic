module Encoder(input [3:0]in, output reg [2:0]out);
	always @(in) begin
		if (in[3]) out <= 3'b111;
		else if (in[2]) out <= 3'b110;
		else if (in[1]) out <= 3'b101;
		else if (in[0]) out <= 3'b100;
		else out <= 3'b000;
	end
endmodule