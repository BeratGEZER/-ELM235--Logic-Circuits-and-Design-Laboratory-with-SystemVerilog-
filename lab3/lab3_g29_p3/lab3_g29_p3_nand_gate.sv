module lab3_g29_p3_nand_gate( 

   input logic A, B,
	output logic q0, q1, q2, q3

);

	assign q0 = ~(~A&~B);
	assign q1 = ~(~A&B);
	assign q2 = ~(A&~B);
	assign q3 = ~(A&B);


endmodule