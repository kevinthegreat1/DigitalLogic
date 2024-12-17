module SevenSegmentDisplay(input [7:0]Ain, Bin, input Sel, input E, input [1:0]Operation, output reg [7:0]A, B, output [10:0]bcd, output [6:0]HEX2, HEX1, HEX0);
	reg [8:0]val;

	always @(E) begin
		if (E) begin
			case (Sel)
				1'b0: A <= Ain;
				1'b1: B <= Bin;
			endcase
		end
	end

	always @(A, B, Operation) begin
		case (Operation)
			2'b00: val <= A;
			2'b01: val <= B;
			2'b10: val <= A + B;
			2'b11: val <= A ^ B;
		endcase
	end

	Binary2BCD #(9)(val, bcd);

	BCD2SevenSegment({1'b0, bcd[10:8]}, HEX2);
	BCD2SevenSegment(bcd[7:4], HEX1);
	BCD2SevenSegment(bcd[3:0], HEX0);
endmodule