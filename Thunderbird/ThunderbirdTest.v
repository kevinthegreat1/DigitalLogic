module ThunderbirdTest(input [3:0]KEY, output [17:0]LEDR);
	Thunderbird(~KEY[3], ~KEY[0], ~KEY[1], ~KEY[2], LEDR[5:3], LEDR[2:0]);
endmodule