module lab3_g29_p2 (
    input logic [0:3] a ,
    input logic [0:3]  b ,
    input logic  [0:3] c ,
    input logic  [0:3] d ,
    input logic [0:1] sel,
    output logic [0:3]  y 
);

    logic  [0:3 ]mux1_y  , mux2_y ;

    // İlk 2x1 Mux
    lab3_g29_p1 mux1 (
        .a(a),
        .b(b),
        .sel(sel[0]),
        .y(mux1_y)
    );

    // İkinci 2x1 Mux
    lab3_g29_p1 mux2 (
        .a(c),
        .b(d),
        .sel(sel[0]),
        .y(mux2_y)
    );

    // Üçüncü 2x1 Mux
    lab3_g29_p1 mux3 (
        .a(mux1_y),
        .b(mux2_y),
        .sel(sel[1]),
        .y(y)
    );

endmodule
