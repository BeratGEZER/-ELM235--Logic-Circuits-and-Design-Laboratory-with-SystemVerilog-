`timescale 1ns/1ps

module tb_all_gates_mux();

    // Test tezgahı sinyalleri
    logic a_tb, b_tb, sel_tb;
    logic and_out_tb, or_out_tb, nand_out_tb, nor_out_tb;

    // Kapı modülleri ve MUX
    lab3_g29_p2_and_gate and_mod(
        .a(a_tb),
        .b(b_tb),
        .y(and_out_tb)
    );

    lab3_g29_p2_or_gate or_mod(
        .a(a_tb),
        .b(b_tb),
        .y(or_out_tb)
    );

    lab3_g29_p2_nand_gate nand_mod(
        .a(a_tb),
        .b(b_tb),
        .y(nand_out_tb)
    );

    lab3_g29_p2_nor_gate nor_mod(
        .a(a_tb),
        .b(b_tb),
        .y(nor_out_tb)
    );

    initial begin
        // Giriş kombinasyonları
        a_tb = 0; b_tb = 0;
        #10;
        a_tb = 0; b_tb = 1;
        #10;
        a_tb = 1; b_tb = 0;
        #10;
        a_tb = 1; b_tb = 1;
        #10;

        $finish; // Simülasyonu sonlandır
    end

endmodule
