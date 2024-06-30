	// module_file.sv

	// lab3_g29_p1 - 2x1 MUX modülü
	module lab3_g29_p1 (
		 input logic a,
		 input logic b,
		 input logic sel,
		 output logic y
	);
		 logic sel_nand, not_sel_nand, a_sel_nand, b_not_sel_nand;
		 assign not_sel_nand = ~(sel & sel);
		 assign a_sel_nand = ~(a & not_sel_nand);
		 assign b_not_sel_nand = ~(b & sel);
		 assign y = ~(a_sel_nand & b_not_sel_nand);
	endmodule

	// AND kapısı modülü
	module lab3_g29_p2_and_gate (
		 input logic a,
		 input logic b,
		 output logic y
	);
		 lab3_g29_p1 mux (.a(1), .b(a & b), .sel(1), .y(y));
	endmodule

	// OR kapısı modülü
	module lab3_g29_p2_or_gate (
		 input logic a,
		 input logic b,
		 output logic y
	);
		 lab3_g29_p1 mux (.a(a), .b(a | b), .sel(1), .y(y));
	endmodule

	// NAND kapısı modülü
	module lab3_g29_p2_nand_gate (
		 input logic a,
		 input logic b,
		 output logic y
	);
		 lab3_g29_p1 mux (.a(1), .b(~(a & b)), .sel(1), .y(y));
	endmodule

	// NOR kapısı modülü
	module lab3_g29_p2_nor_gate (
		 input logic a,
		 input logic b,
		 output logic y
	);
		 lab3_g29_p1 mux (.a(1), .b(~(a | b)), .sel(1), .y(y));
	endmodule
