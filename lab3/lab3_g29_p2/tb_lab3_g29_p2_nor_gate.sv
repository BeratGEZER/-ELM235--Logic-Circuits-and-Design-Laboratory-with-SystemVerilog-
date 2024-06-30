module tb_lab3_g29_p2_nor_gate();
    logic a_tb, b_tb;
    logic y_tb;

    lab3_g29_p2_nor_gate dut (
        .a(a_tb),
        .b(b_tb),
        .y(y_tb)
    );

    initial begin
        // Girişler
        a_tb = 0; b_tb = 0;
        #10;
        a_tb = 0; b_tb = 1;
        #10;
        a_tb = 1; b_tb = 0;
        #10;
        a_tb = 1; b_tb = 1;
        #10;
        
        $finish;
    end

endmodule
