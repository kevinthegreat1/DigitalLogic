module TrainControlSystem(input [3:0]SW, input [3:0]KEY, input CLOCK_50, output [35:0]GPIO);
	// These buses store which route is open from the left, station, or right.
	// 0 is unset and 4-7 correspond to tracks 1-4.
	// For left and right, track 1-4 correspond to station tracks.
	// For station tracks, tracks 1 and 2 correspond to left tracks and tracks 3 and 4 correspond to right tracks.
	parameter L1 = 0, L2 = 1, R3 = 2, R4 = 3, S1 = 0, S2 = 1, S3 = 2, S4 = 3;
	reg [2:0]leftRoutes[3:0], rightRoutes[3:0];
	reg [2:0]stationRoutes[3:0];

	// Process keys
	// Each key correspond to a left or right track
	// and opens a route to/from the selected station track when a key is pressed.
	wire left2Pressed, left1Pressed, right2Pressed, right1Pressed;
	wire [2:0]trackPressed;
	Key(KEY[3], CLOCK_50, left2Pressed);
	Key(KEY[2], CLOCK_50, left1Pressed);
	Key(KEY[1], CLOCK_50, right2Pressed);
	Key(KEY[0], CLOCK_50, right1Pressed);
	Encoder({right2Pressed, right1Pressed, left2Pressed, left1Pressed}, trackPressed);

	// Process station tracks, which are encoded from the four switches.
	// The first bit is whether a station track is selected (one of the switches is on),
	// while the last two bits store which switch is on.
	wire [2:0]stationTrackSelector;
	Encoder(SW, stationTrackSelector);

	// Main route setting and interlocking logic
	always @(trackPressed, stationTrackSelector) begin
		if (trackPressed[2] && stationTrackSelector[2]) begin
			if (trackPressed[1:0] == L2) begin
				// Left track 2 (outbound) pressed, set selected station track and interlock
				if (stationTrackSelector[1:0] <= S2) begin
					// When either station tracks 1 and 2 is selected, unset conflicting routes
					// Conflicts with S1, S2, S3, S4 -> L1, L2
					if (stationRoutes[S1][1:0] == L1 || stationRoutes[S1][1:0] == L2) stationRoutes[S1][1:0] = 0;
					if (stationRoutes[S2][1:0] == L1 || stationRoutes[S2][1:0] == L2) stationRoutes[S2][1:0] = 0;
					if (stationRoutes[S3][1:0] == L1 || stationRoutes[S3][1:0] == L2) stationRoutes[S3][1:0] = 0;
					if (stationRoutes[S4][1:0] == L1 || stationRoutes[S4][1:0] == L2) stationRoutes[S4][1:0] = 0;
					// Conflicts with L1, L2 -> S1, S2, S3, S4
					leftRoutes[L1] = 0;
					leftRoutes[L2] = 0;
				end else begin
					// When either station tracks 3 and 4 is selected, unset conflicting routes
					// Conflicts with S1, S2 -> L2
					if (stationRoutes[S1][1:0] == 1) stationRoutes[S1] = 0;
					if (stationRoutes[S2][1:0] == 1) stationRoutes[S2] = 0;
					// Conflicts with S3, S4 -> L1, L2
					if (stationRoutes[S3][1:0] == 0 || stationRoutes[S3][1:0] == 1) stationRoutes[S3] = 0;
					if (stationRoutes[S4][1:0] == 0 || stationRoutes[S4][1:0] == 1) stationRoutes[S4] = 0;
					// Conflicts with L1 -> S3, S4
					if (leftRoutes[L1][1:0] == 2 || leftRoutes[L1][1:0] == 3) leftRoutes[L1] = 0;
					// Conflicts with L2 -> S1, S2, S3, S4
					leftRoutes[L2] = 0;
				end
				// Set route from station
				stationRoutes[stationTrackSelector[1:0]] = L2;
			end else if (trackPressed[1:0] == 2'b10) begin
				// Right track 1 (outbound) pressed, set selected station track and interlock
				
				// Set route from station
				stationRoutes[stationTrackSelector[1:0]] = R3;
			end
		end
	end

	Switch(SW[0], CLOCK_50, GPIO[0]);
endmodule