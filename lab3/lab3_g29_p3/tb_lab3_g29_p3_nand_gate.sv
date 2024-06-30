module tb_lab3_g29_p3_nand_gate();

	logic A,B;
	logic q0,q1,q2,q3;

lab3_g29_p3_nand_gate dut0 (A,B, q0,q1,q2,q3);

initial begin

	A = 0; B = 0;		#10;
	B = 1;			#10;
	A = 1; B = 0;		#10;
	B = 1;			#10;
		
	$stop;

end

endmodule