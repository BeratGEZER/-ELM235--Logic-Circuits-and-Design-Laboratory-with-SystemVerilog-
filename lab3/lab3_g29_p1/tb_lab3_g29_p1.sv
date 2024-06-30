module tb_lab3_g29_p1();
    logic sel_tb, a_tb, b_tb;
    logic y_tb;

    // Test edilen modülün yaratımı ve port bağlantılarının yapılması
    lab3_g29_p1 dut (
        .a(a_tb),
        .b(b_tb),
        .sel(sel_tb),
        .y(y_tb)
    );

    initial begin
        // Girişler
        sel_tb = 0; a_tb = 0; b_tb = 0;
        #10;
        sel_tb = 0; a_tb = 0; b_tb = 1;
        #10;
        sel_tb = 0; a_tb = 1; b_tb = 0;
        #10;
        sel_tb = 0; a_tb = 1; b_tb = 1;
        #10;
        sel_tb = 1; a_tb = 0; b_tb = 0;
        #10;
        sel_tb = 1; a_tb = 0; b_tb = 1;
        #10;
        sel_tb = 1; a_tb = 1; b_tb = 0;
        #10;
        sel_tb = 1; a_tb = 1; b_tb = 1;
        #10;
        
        $finish;
    end

endmodule
