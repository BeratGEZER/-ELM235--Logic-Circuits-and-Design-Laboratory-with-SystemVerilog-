module lab2_g29_p2 (
    input logic x_0, x_1, x_2, x_3, 
    output logic a, b, c, d, e, f, g 
); 

    assign a = (x_1 | x_3);
    assign b = (x_3 & x_0) | (~x_2 & x_0);
    assign c = (~x_2 & x_0) | (x_2 & x_1);
    assign d = x_1 | x_2;
    assign e = (x_1 & ~x_3 & ~x_0) | (x_2 & ~x_1);
    assign f = (x_1 & ~x_0) | (~x_1 & ~x_3 & x_0) | (x_2 & ~x_0);
    assign g = x_1 | (x_3 & x_0);

endmodule
