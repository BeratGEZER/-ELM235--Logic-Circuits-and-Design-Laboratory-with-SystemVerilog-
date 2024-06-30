module lab3_g29_p4_2(


	input logic A0,A1,A2,A3,
	output logic a0,a1,a2,a3,b0,b1,b2,b3,c0,c1,c2,c3,d0,d1,d2,d3


);

assign q0 = (~A0 & ~A1) 	;
assign q1 = (~A0 &  A1)	;
assign q2 = ( A0 & ~A1)	;
assign q3 = ( A0 &  A1)	;


assign a0 = ~(q0&~A2 & ~A3) 	;
assign a1 = ~(q0&~A2 &  A3)	;
assign a2 = ~(q0& A2 & ~A3)	;
assign a3 = ~(q0& A2 &  A3)	;


assign b0 = ~(q1&~A2 & ~A3) ;
assign b1 = ~(q1&~A2 &  A3)	;
assign b2 = ~(q1& A2 & ~A3)	;
assign b3 = ~(q1& A2 &  A3)	;

assign c0 = ~(q2&~A2 & ~A3) ;
assign c1 = ~(q2&~A2 &  A3)	;
assign c2 = ~(q2& A2 & ~A3)	;
assign c3 = ~(q2& A2 &  A3)	;

assign d0 = ~(q3&~A2 & ~A3) ;
assign d1 = ~(q3&~A2 &  A3)	;
assign d2 = ~(q3& A2 & ~A3)	;
assign d3 = ~(q3& A2 &  A3)	;



endmodule