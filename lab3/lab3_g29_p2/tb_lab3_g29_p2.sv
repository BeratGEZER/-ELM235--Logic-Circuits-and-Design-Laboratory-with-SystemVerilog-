module tb_lab3_g29_p2();
    logic a_tb, b_tb;
    logic and_out, or_out, nand_out, nor_out;

    // AND Kapısı
    lab3_g29_p2_and_gate and_gate_inst (
        .a(a_tb),
        .b(b_tb),
        .y(and_out)
    );

    // OR Kapısı
    lab3_g29_p2_or_gate or_gate_inst (
        .a(a_tb),
        .b(b_tb),
        .y(or_out)
    );

    // NAND Kapısı
    lab3_g29_p2_nand_gate nand_gate_inst (
        .a(a_tb),
        .b(b_tb),
        .y(nand_out)
    );

    // NOR Kapısı
    lab3_g29_p2_nor_gate nor_gate_inst (
        .a(a_tb),
        .b(b_tb),
        .y(nor_out)
    );

    // Testlerin başlatılması
    initial begin
        // Giriş kombinasyonlarının test edilmesi
        a_tb = 0; b_tb = 0;
        #10;
        a_tb = 0; b_tb = 1;
        #10;
        a_tb = 1; b_tb = 0;
        #10;
        a_tb = 1; b_tb = 1;
        #10;

        // Test sonuçlarının görüntülenmesi
        $display("AND: %b, OR: %b, NAND: %b, NOR: %b", and_out, or_out, nand_out, nor_out);

        // Simülasyonun sonlandırılması
        $finish;
    end
endmodule
