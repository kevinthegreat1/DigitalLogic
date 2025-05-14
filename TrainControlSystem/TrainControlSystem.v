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
	wire left2Pressed, left1Pressed, right4Pressed, right3Pressed;
	wire [2:0]trackPressed;
	Key left_2_key(KEY[3], CLOCK_50, left2Pressed);
	Key left_1_key(KEY[2], CLOCK_50, left1Pressed);
	Key right_4_key(KEY[1], CLOCK_50, right4Pressed);
	Key right_3_key(KEY[0], CLOCK_50, right3Pressed);
	Encoder track_encoder({right4Pressed, right3Pressed, left2Pressed, left1Pressed}, trackPressed);

	// Process station tracks, which are encoded from the four switches.
	// The first bit is whether a station track is selected (one of the switches is on),
	// while the last two bits store which switch is on.
	wire [2:0]stationTrackSelector;
	Encoder station_track_encoder(SW, stationTrackSelector);

	// Main route setting and interlocking logic
	always @(trackPressed, stationTrackSelector) begin
		if (trackPressed[2] && stationTrackSelector[2]) begin
			if (trackPressed[1:0] == L2) begin
				// Left track 2 (outbound) pressed, set selected station track and interlock
				if (stationTrackSelector[1:0] <= S2) begin
					// When either station tracks 1 and 2 is selected, unset conflicting routes
					// Conflicts with S1, S2, S3, S4 -> L1, L2
					if (stationRoutes[S1][1:0] == L1 || stationRoutes[S1][1:0] == L2) stationRoutes[S1] = 0;
					if (stationRoutes[S2][1:0] == L1 || stationRoutes[S2][1:0] == L2) stationRoutes[S2] = 0;
					if (stationRoutes[S3][1:0] == L1 || stationRoutes[S3][1:0] == L2) stationRoutes[S3] = 0;
					if (stationRoutes[S4][1:0] == L1 || stationRoutes[S4][1:0] == L2) stationRoutes[S4] = 0;
					// Conflicts with L1, L2 -> S1, S2, S3, S4
					leftRoutes[L1] = 0;
					leftRoutes[L2] = 0;
				end else begin
					// When either station tracks 3 and 4 is selected, unset conflicting routes
					// Conflicts with S1, S2 -> L2
					if (stationRoutes[S1][1:0] == L2) stationRoutes[S1] = 0;
					if (stationRoutes[S2][1:0] == L2) stationRoutes[S2] = 0;
					// Conflicts with S3, S4 -> L1, L2
					if (stationRoutes[S3][1:0] == L1 || stationRoutes[S3][1:0] == L2) stationRoutes[S3] = 0;
					if (stationRoutes[S4][1:0] == L1 || stationRoutes[S4][1:0] == L2) stationRoutes[S4] = 0;
					// Conflicts with L1 -> S3, S4
					if (leftRoutes[L1][1:0] == S3 || leftRoutes[L1][1:0] == S4) leftRoutes[L1] = 0;
					// Conflicts with L2 -> S1, S2, S3, S4
					leftRoutes[L2] = 0;
				end
				// Set route from station to L2
				stationRoutes[stationTrackSelector[1:0]] = L2;
				// Set the route
				stationRoutes[stationTrackSelector[1:0]][2] = 1;
			end else if (trackPressed[1:0] == R3) begin
				// Right track 3 (outbound) pressed, set selected station track and interlock
				if (stationTrackSelector[1:0] <= S2) begin
					// When either station tracks 1 and 2 is selected, unset conflicting routes
					// Conflicts with S1, S2 -> R3, R4
					if (stationRoutes[S1][1:0] == R3 || stationRoutes[S1][1:0] == R4) stationRoutes[S1] = 0;
					if (stationRoutes[S2][1:0] == R3 || stationRoutes[S2][1:0] == R4) stationRoutes[S2] = 0;
					// Conflicts with S3, S4 -> R3
					if (stationRoutes[S3][1:0] == R3) stationRoutes[S3] = 0;
					if (stationRoutes[S4][1:0] == R3) stationRoutes[S4] = 0;
					// Conflicts with R3 -> S1, S2, S3, S4
					rightRoutes[R3] = 0;
					// Conflicts with R4 -> S1, S2
					if (rightRoutes[R4][1:0] == S1 || rightRoutes[R4][1:0] == S2) rightRoutes[R4] = 0;
				end else begin
					// When either station tracks 3 and 4 is selected, unset conflicting routes
					// Conflicts with S1, S2, S3, S4 -> R3, R4
					if (stationRoutes[S1][1:0] == R3 || stationRoutes[S1][1:0] == R4) stationRoutes[S1] = 0;
					if (stationRoutes[S2][1:0] == R3 || stationRoutes[S2][1:0] == R4) stationRoutes[S2] = 0;
					if (stationRoutes[S3][1:0] == R3 || stationRoutes[S3][1:0] == R4) stationRoutes[S3] = 0;
					if (stationRoutes[S4][1:0] == R3 || stationRoutes[S4][1:0] == R4) stationRoutes[S4] = 0;
					// Conflicts with R3, R4 -> S1, S2, S3, S4
					rightRoutes[R3] = 0;
					rightRoutes[R4] = 0;
				end
				// Set route from station to R3
				stationRoutes[stationTrackSelector[1:0]] = R3;
				// Set the route
				stationRoutes[stationTrackSelector[1:0]][2] = 1;
			end else if (trackPressed[1:0] == L1) begin
				// Left track 1 (inbound) pressed, set selected station track and interlock
				if (stationTrackSelector[1:0] <= S2) begin
					// When either station tracks 1 and 2 is selected, unset conflicting routes
					// Conflicts with S1, S2 -> L1, L2
					if (stationRoutes[S1][1:0] == L1 || stationRoutes[S1][1:0] == L2) stationRoutes[S1] = 0;
					if (stationRoutes[S2][1:0] == L1 || stationRoutes[S2][1:0] == L2) stationRoutes[S2] = 0;
					// Conflicts with S3, S4 -> L1
					if (stationRoutes[S3][1:0] == L1) stationRoutes[S3] = 0;
					if (stationRoutes[S4][1:0] == L1) stationRoutes[S4] = 0;
					// Conflicts with L1 -> S1, S2, S3, S4
					leftRoutes[L1] = 0;
					// Conflicts with L2 -> S1, S2
					if (leftRoutes[L2][1:0] == S1 || leftRoutes[L2][1:0] == S2) leftRoutes[L2] = 0;
				end else begin
					// When either station tracks 3 and 4 is selected, unset conflicting routes
					// Conflicts with S1, S2, S3, S4 -> L1, L2
					if (stationRoutes[S1][1:0] == L1 || stationRoutes[S1][1:0] == L2) stationRoutes[S1] = 0;
					if (stationRoutes[S2][1:0] == L1 || stationRoutes[S2][1:0] == L2) stationRoutes[S2] = 0;
					if (stationRoutes[S3][1:0] == L1 || stationRoutes[S3][1:0] == L2) stationRoutes[S3] = 0;
					if (stationRoutes[S4][1:0] == L1 || stationRoutes[S4][1:0] == L2) stationRoutes[S4] = 0;
					// Conflicts with L1, L2 -> S1, S2, S3, S4
					leftRoutes[L1] = 0;
					leftRoutes[L2] = 0;
				end
				// Set route from L1 to station
				leftRoutes[L1] = stationTrackSelector[1:0];
				// Set the route
				leftRoutes[L1][2] = 1;
			end else if (trackPressed[1:0] == R4) begin
				// Right track 4 (inbound) pressed, set selected station track and interlock
				if (stationTrackSelector[1:0] <= S2) begin
					// When either station tracks 1 and 2 is selected, unset conflicting routes
					// Conflicts with S1, S2, S3, S4 -> R3, R4
					if (stationRoutes[S1][1:0] == R3 || stationRoutes[S1][1:0] == R4) stationRoutes[S1] = 0;
					if (stationRoutes[S2][1:0] == R3 || stationRoutes[S2][1:0] == R4) stationRoutes[S2] = 0;
					if (stationRoutes[S3][1:0] == R3 || stationRoutes[S3][1:0] == R4) stationRoutes[S3] = 0;
					if (stationRoutes[S4][1:0] == R3 || stationRoutes[S4][1:0] == R4) stationRoutes[S4] = 0;
					// Conflicts with R3, R4 -> S1, S2, S3, S4
					rightRoutes[R3] = 0;
					rightRoutes[R4] = 0;
				end else begin
					// When either station tracks 3 and 4 is selected, unset conflicting routes
					// Conflicts with S1, S2 -> R4
					if (stationRoutes[S1][1:0] == R4) stationRoutes[S1] = 0;
					if (stationRoutes[S2][1:0] == R4) stationRoutes[S2] = 0;
					// Conflicts with S3, S4 -> R3, R4
					if (stationRoutes[S3][1:0] == R3 || stationRoutes[S3][1:0] == R4) stationRoutes[S3] = 0;
					if (stationRoutes[S4][1:0] == R3 || stationRoutes[S4][1:0] == R4) stationRoutes[S4] = 0;
					// Conflicts with R3 -> S3, S4
					if (rightRoutes[R3][1:0] == S3 || rightRoutes[R3][1:0] == S4) rightRoutes[R3] = 0;
					// Conflicts with R4 -> S1, S2, S3, S4
					rightRoutes[R4] = 0;
				end
				// Set route from R4 to station
				rightRoutes[R4] = stationTrackSelector[1:0];
				// Set the route
				rightRoutes[R4][2] = 1;
			end
		end
	end

	// Calculate and output switch positions
	parameter SWITCH1 = 0, SWITCH2 = 2, SWITCH3 = 4, SWITCH4 = 6, SWITCH5 = 8, SWITCH6 = 10, SWITCH7 = 12, SWITCH8 = 14, SWITCH9 = 16, SWITCH10 = 18, SWITCH11 = 20, SWITCH12 = 22;
	// Switches 1 & 4: S3, S4 -> L1; L1 -> S3, S4
	Switch switch_1(stationRoutes[S3][2] && stationRoutes[S3][1:0] == L1 || stationRoutes[S4][2] && stationRoutes[S4][1:0] == L1 || leftRoutes[L1][2] && leftRoutes[L1][1:0] >= S3, CLOCK_50, GPIO[SWITCH1]);
	assign GPIO[SWITCH4] = GPIO[SWITCH1];
	// Switches 2 & 3: S1, S2 -> L2; L2 -> S1, S2
	Switch switch_2(stationRoutes[S1][2] && stationRoutes[S1][1:0] == L2 || stationRoutes[S2][2] && stationRoutes[S2][1:0] == L2 || leftRoutes[L2][2] && leftRoutes[L2][1:0] <= S2, CLOCK_50, GPIO[SWITCH2]);
	assign GPIO[SWITCH3] = GPIO[SWITCH2];
	// Switch 5: S1 -> L1, L2; L1, L2 -> S1
	Switch switch_5(stationRoutes[S1][2] && stationRoutes[S1][1:0] == L1 || stationRoutes[S1][2] && stationRoutes[S1][1:0] == L2 || leftRoutes[L1][2] && leftRoutes[L1][1:0] == S1 || leftRoutes[L2][2] && leftRoutes[L2][1:0] == S1, CLOCK_50, GPIO[SWITCH5]);
	// Switch 6: S4 -> L1, L2; L1, L2 -> S4
	Switch switch_6(stationRoutes[S4][2] && stationRoutes[S4][1:0] == L1 || stationRoutes[S4][2] && stationRoutes[S4][1:0] == L2 || leftRoutes[L1][2] && leftRoutes[L1][1:0] == S4 || leftRoutes[L2][2] && leftRoutes[L2][1:0] == S4, CLOCK_50, GPIO[SWITCH6]);
	// Switch 7: S1 -> R3, R4; R3, R4 -> S1
	Switch switch_7(stationRoutes[S1][2] && stationRoutes[S1][1:0] == R3 || stationRoutes[S1][2] && stationRoutes[S1][1:0] == R4 || rightRoutes[R3][2] && rightRoutes[R3][1:0] == S1 || rightRoutes[R4][2] && rightRoutes[R4][1:0] == S1, CLOCK_50, GPIO[SWITCH7]);
	// Switch 8: S4 -> R3, R4; R3, R4 -> S4
	Switch switch_8(stationRoutes[S4][2] && stationRoutes[S4][1:0] == R3 || stationRoutes[S4][2] && stationRoutes[S4][1:0] == R4 || rightRoutes[R3][2] && rightRoutes[R3][1:0] == S4 || rightRoutes[R4][2] && rightRoutes[R4][1:0] == S4, CLOCK_50, GPIO[SWITCH8]);
	// Switch 9 & 12: S1, S2 -> R4; R4 -> S1, S2
	Switch switch_9(stationRoutes[S1][2] && stationRoutes[S1][1:0] == R4 || stationRoutes[S2][2] && stationRoutes[S2][1:0] == R4 || rightRoutes[R4][2] && rightRoutes[R4][1:0] <= S2, CLOCK_50, GPIO[SWITCH9]);
	assign GPIO[SWITCH12] = GPIO[SWITCH9];
	// Switch 10 & 11: S3, S4 -> R3; R3 -> S3, S4
	Switch switch_10(stationRoutes[S3][2] && stationRoutes[S3][1:0] == R3 || stationRoutes[S4][2] && stationRoutes[S4][1:0] == R3 || rightRoutes[R3][2] && rightRoutes[R3][1:0] >= S3, CLOCK_50, GPIO[SWITCH10]);
	assign GPIO[SWITCH11] = GPIO[SWITCH10];
endmodule