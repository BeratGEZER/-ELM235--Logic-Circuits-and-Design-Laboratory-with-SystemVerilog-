module tb_lab1_g29_p1(); 
    // Giriş ve çıkış sinyallerini tanımla
    logic G, T, U, E; 
    logic y;

    // DUT (Device Under Test) örneğini oluştur
    lab1_g29_p1 dut0 (G, T, U, E, y);

    // Test döngüsünü başlat
    initial begin
        // G, T, U, E için başlangıç değerleri atayıp tüm kombinasyonları sırayla test et
        G = 0; T = 0; U = 0; E = 0; #10;
        G = 0; T = 0; U = 0; E = 1; #10;
        G = 0; T = 0; U = 1; E = 0; #10;
        G = 0; T = 0; U = 1; E = 1; #10;
        G = 0; T = 1; U = 0; E = 0; #10;
        G = 0; T = 1; U = 0; E = 1; #10;
        G = 0; T = 1; U = 1; E = 0; #10;
        G = 0; T = 1; U = 1; E = 1; #10;
        G = 1; T = 0; U = 0; E = 0; #10;
        G = 1; T = 0; U = 0; E = 1; #10;
        G = 1; T = 0; U = 1; E = 0; #10;
        G = 1; T = 0; U = 1; E = 1; #10;
        G = 1; T = 1; U = 0; E = 0; #10;
        G = 1; T = 1; U = 0; E = 1; #10;
        G = 1; T = 1; U = 1; E = 0; #10;
        G = 1; T = 1; U = 1; E = 1; #10;

        // Simülasyonu durdur
        $stop;
    end
endmodule
