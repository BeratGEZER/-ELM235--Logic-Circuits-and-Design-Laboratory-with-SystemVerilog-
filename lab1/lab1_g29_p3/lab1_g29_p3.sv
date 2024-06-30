module lab1_g29_p3(
	input logic G,T,U,E,
	output logic X,Y
);


assign X =  U&~E | ~T&~E;
assign Y =  ~G | ~U;


endmodule