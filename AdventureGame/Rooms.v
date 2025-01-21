module Rooms(input N, E, S, W, Reset, sword, CLK, output reg [2:0]rooms, output reg [255:0]characters);
	parameter CC = 3'b000, TT = 3'b001, RR = 3'b101, SSS = 3'b100, DD = 3'b110, GG = 3'b011, VV = 3'b111;
	parameter	CCString = "    Cave of        Cacophany    ",
					TTString = " Twisty Tunnel                  ",
					RRString = "  Rapid River                   ",
					SSSString = "     Secret       Sword Stash   ",
					DDString = "  Dragon's Den                  ",
					GGString = "    Grevious       Graveyard    ",
					VVString = " Victory Vault                  ";
	reg prevN, prevE, prevS, prevW;
	reg [9:0]dragonFight;

	always @(posedge CLK) begin
		if (Reset) begin
			rooms <= CC;
			dragonFight <= 0;
		end
		if (N && !prevN && rooms == RR) rooms <= rooms - 3'b100;
		if (E && !prevE) begin
			if (rooms == CC || rooms == SSS || rooms == RR) rooms <= rooms + 1;
		end
		if (S && !prevS && rooms == TT) rooms <= rooms + 3'b100;
		if (W && !prevW) begin
			if (rooms == TT || rooms == RR) rooms <= rooms - 1;
		end
		if (rooms == DD) begin
			dragonFight <= dragonFight + 1;
			if (&dragonFight) rooms <= sword ? VV : GG;
		end
		prevN <= N;
		prevE <= E;
		prevS <= S;
		prevW <= W;
	end

	always @(rooms) begin
		case (rooms)
			CC: characters <= CCString;
			TT: characters <= TTString;
			RR: characters <= RRString;
			SSS: characters <= SSSString;
			DD: characters <= DDString;
			GG: characters <= GGString;
			VV: characters <= VVString;
		endcase
	end
endmodule