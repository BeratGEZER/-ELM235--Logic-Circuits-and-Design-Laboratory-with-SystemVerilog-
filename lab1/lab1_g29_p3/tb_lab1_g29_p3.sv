 
module tb_lab1_g29_p3 (); 
    logic G_tb, T_tb, U_tb, E_tb; // test tezgahi giriş sinyal tanımları 
    logic X_tb, Y_tb; // test tezgahi çıkış sinyal tanımları 
    lab1_g29_p3 mut0(.G(G_tb), .T(T_tb), .U(U_tb), .E(E_tb), .X(X_tb), .Y(Y_tb)); 
    // Bu kısımda sinyaller test edilen devreye sıralı olarak uygulanır. 
    // Sonuçlar test edilen devre çıkışlarında gözlenebilir. 
    initial begin 
        G_tb = 0; T_tb = 0; U_tb = 0; E_tb = 0; 
        #10; // G = 1, T = 1, U = 1, E = 1 yap, 10 ns bekle 
        G_tb = 0; T_tb = 0; U_tb = 0; E_tb = 1; 
        #10; // G = 1, T = 1, U = 1, E = 0 yap, 10 ns bekle 
        G_tb = 0; T_tb = 0; U_tb = 1; E_tb = 0; 
        #10; // G = 1, T = 1, U = 0, E = 1 yap, 10 ns bekle 
        G_tb = 0; T_tb = 0; U_tb = 1; E_tb = 1; 
        #10; // G = 1, T = 1, U = 0, E = 0 yap, 10 ns bekle 
        G_tb = 0; T_tb = 1; U_tb = 0; E_tb = 0; 
        #10; // G = 1, T = 0, U = 1, E = 1 yap, 10 ns bekle 
        G_tb = 0; T_tb = 1; U_tb = 0; E_tb = 1; 
        #10; // G = 1, T = 0, U = 1, E = 0 yap, 10 ns bekle 
        G_tb = 0; T_tb = 1; U_tb = 1; E_tb = 0; 
        #10; // G = 1, T = 0, U = 0, E = 1 yap, 10 ns bekle 
        G_tb = 0; T_tb = 1; U_tb = 1; E_tb = 1; 
        #10; // G = 1, T = 0, U = 0, E = 0 yap, 10 ns bekle 
        G_tb = 1; T_tb = 0; U_tb = 0; E_tb = 0; 
        #10; // G = 0, T = 1, U = 1, E = 1 yap, 10 ns bekle 
        G_tb = 1; T_tb = 0; U_tb = 0; E_tb = 1; 
        #10; // G = 0, T = 1, U = 1, E = 0 yap, 10 ns bekle 
        G_tb = 1; T_tb = 0; U_tb = 1; E_tb = 0; 
        #10; // G = 0, T = 1, U = 0, E = 1 yap, 10 ns bekle 
        G_tb = 1; T_tb = 0; U_tb = 1; E_tb = 1; 
        #10; // G = 0, T = 1, U = 0, E = 0 yap, 10 ns bekle 
        G_tb = 1; T_tb = 1; U_tb = 0; E_tb = 0; 
        #10; // G = 0, T = 0, U = 1, E = 1 yap, 10 ns bekle 
        G_tb = 1; T_tb = 1; U_tb = 0; E_tb = 1; 
        #10; // G = 0, T = 0, U = 1, E = 0 yap, 10 ns bekle 
        G_tb = 1; T_tb = 1; U_tb = 1; E_tb = 0; 
        #10; // G = 0, T = 0, U = 0, E = 1 yap, 10 ns bekle 
        G_tb = 1; T_tb = 1; U_tb = 1; E_tb = 0; 
        #10; // G = 0, T = 0, U = 0, E = 0 yap, 10 ns bekle 
        #20; // simulasyondan sonra 20 ns bekle 
        $finish; // simulasyonu sonlandır 
    end 
endmodule