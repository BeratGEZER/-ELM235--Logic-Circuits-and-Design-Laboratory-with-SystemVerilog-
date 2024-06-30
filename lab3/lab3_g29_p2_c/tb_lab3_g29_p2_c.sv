`timescale 1ns/1ps

module tb_lab3_g29_p2_c();

    logic [1:0] sel_tb;
    logic a_tb, b_tb, c_tb, d_tb;
    logic y_tb;

    // Test edilecek 4x1 MUX modülü
    lab3_g29_p2_c dut (
        .sel(sel_tb),
        .a(a_tb),
        .b(b_tb),
        .c(c_tb),
        .d(d_tb),
        .y(y_tb)
    );

    // Test sinyalleri uygulanıyor
    initial begin
        // Tüm kombinasyonlar
        sel_tb = 2'b00; a_tb = 0; b_tb = 0; c_tb = 0; d_tb = 0;
        #10;
        $display("sel_tb = %b, a_tb = %b, b_tb = %b, c_tb = %b, d_tb = %b, y_tb = %b", sel_tb, a_tb, b_tb, c_tb, d_tb, y_tb);

        sel_tb = 2'b00; a_tb = 1; b_tb = 0; c_tb = 0; d_tb = 0;
        #10;
        $display("sel_tb = %b, a_tb = %b, b_tb = %b, c_tb = %b, d_tb = %b, y_tb = %b", sel_tb, a_tb, b_tb, c_tb, d_tb, y_tb);

        sel_tb = 2'b01; a_tb = 0; b_tb = 1; c_tb = 0; d_tb = 0;
        #10;
        $display("sel_tb = %b, a_tb = %b, b_tb = %b, c_tb = %b, d_tb = %b, y_tb = %b", sel_tb, a_tb, b_tb, c_tb, d_tb, y_tb);

        sel_tb = 2'b10; a_tb = 0; b_tb = 0; c_tb = 1; d_tb = 0;
        #10;
        $display("sel_tb = %b, a_tb = %b, b_tb = %b, c_tb = %b, d_tb = %b, y_tb = %b", sel_tb, a_tb, b_tb, c_tb, d_tb, y_tb);

        sel_tb = 2'b11; a_tb = 0; b_tb = 0; c_tb = 0; d_tb = 1;
        #10;
        $display("sel_tb = %b, a_tb = %b, b_tb = %b, c_tb = %b, d_tb = %b, y_tb = %b", sel_tb, a_tb, b_tb, c_tb, d_tb, y_tb);

        $finish;
    end

endmodule
