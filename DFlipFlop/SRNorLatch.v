module SRNorLatch(input S, input R, output Q, output Qbar);
	wire QInternal;
	wire QbarInternal;

	assign QbarInternal = ~(S|QInternal);
	assign QInternal = ~(R|QbarInternal);

	assign Q = QInternal;
	assign Qbar = QbarInternal;
endmodule