module lab1_g29_p2(
    input logic G, T, U, E, 
    output logic y
);

    // Çıktıyı tanımlayan lojik ifade
    assign y = (T & E) | (~G & U & E) | (G & T & U) | (G & ~U & E);

endmodule