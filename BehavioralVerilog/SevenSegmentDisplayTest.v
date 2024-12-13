module SevenSegmentDisplayTest(input [11:0]SW, output [15:0]LEDR, output [8:0]LEDG, output [6:0]HEX2, HEX1, HEX0);
	SevenSegmentDisplay(SW[7:0], SW[7:0], SW[8], SW[9], SW[11:10], LEDR[7:0], LEDR[15:8], LEDG, HEX2, HEX1, HEX0);
endmodule