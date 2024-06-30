module lab1_g29_p1(
    input logic G, T, U, E, 
    output logic y
);

    // Çıktıyı tanımlayan lojik ifade
    assign y = (~G & T & ~U & E) | (G & T & U & E) | (G & ~T & ~U & E) | (G & T & U & ~E) | (~G & T & U & E) |
	 (~G & ~T & U & E) | (G & T & U & ~E);

endmodule
