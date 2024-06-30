`timescale 1ns/1ps

module main(

   input logic a_tb, b_tb,
   output logic and_out_tb, or_out_tb, nand_out_tb, nor_out_tb);

    // AND Kapısı Test
    lab3_g29_p2_and_gate and_mod (
        .a(a_tb),
        .b(b_tb),
        .y(and_out_tb)
    );

    // OR Kapısı Test
    lab3_g29_p2_or_gate or_mod (
        .a(a_tb),
        .b(b_tb),
        .y(or_out_tb)
    );

    // NAND Kapısı Test
    lab3_g29_p2_nand_gate nand_mod (
        .a(a_tb),
        .b(b_tb),
        .y(nand_out_tb)
    );

    // NOR Kapısı Test
    lab3_g29_p2_nor_gate nor_mod (
        .a(a_tb),
        .b(b_tb),
        .y(nor_out_tb)
    );

    endmodule