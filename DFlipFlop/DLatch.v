module DLatchKevin(input D, input E, output Q, output Qbar);
	SRNorLatch(D & E, ~D & E, Q, Qbar);
endmodule