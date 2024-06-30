module tb_lab3_g29_p4_2();

	logic A0,A1,A2,A3;
	logic a0,a1,a2,a3,b0,b1,b2,b3,c0,c1,c2,c3,d0,d1,d2,d3;

lab3_g29_p4_2 dut0 (A0,A1,A2,A3,a0,a1,a2,a3,b0,b1,b2,b3,c0,c1,c2,c3,d0,d1,d2,d3);

initial begin
	A0 = 0; A1 = 0; A2 = 0; A3 = 0; #10
	A3 = 1; 			    #10
	A2 = 1; A3 = 0;	 	    #10
	A2 = 1; A3 = 1;	 	    #10
	A1 = 1; A2 = 0; A3 = 0; 	    #10
	A1 = 1; A2 = 0; A3 = 1; 	    #10
	A1 = 1; A2 = 1; A3 = 0; 	    #10
	A1 = 1; A2 = 1; A3 = 1; 	    #10
	A0 = 1; A1 = 0; A2 = 0; A3 = 0; #10
	A3 = 1; 			    #10
	A2 = 1; A3 = 0;	 	    #10
	A2 = 1; A3 = 1;	 	    #10
	A1 = 1; A2 = 0; A3 = 0; 	    #10
	A1 = 1; A2 = 0; A3 = 1; 	    #10
	A1 = 1; A2 = 1; A3 = 0; 	    #10
	A1 = 1; A2 = 1; A3 = 1; 	    #10



	$stop;
end

endmodule