`timescale 1ns / 1ps

module tb_lab2_g29_p2;
   
    logic x_0, x_1, x_2, x_3;
    logic a, b, c, d, e, f, g;

   
    lab2_g29_p2 dut (x_0, x_1, x_2, x_3, a, b, c, d, e, f, g);
    
    initial begin
        // Try all possible input combinations every 10 ns
        x_0 = 0; x_1 = 0; x_2 = 0; x_3 = 0; #10;
        x_0 = 0; x_1 = 0; x_2 = 0; x_3 = 1; #10;
        x_0 = 0; x_1 = 0; x_2 = 1; x_3 = 0; #10;
        x_0 = 0; x_1 = 0; x_2 = 1; x_3 = 1; #10;
        x_0 = 0; x_1 = 1; x_2 = 0; x_3 = 0; #10;
        x_0 = 0; x_1 = 1; x_2 = 0; x_3 = 1; #10;
        x_0 = 0; x_1 = 1; x_2 = 1; x_3 = 0; #10;
        x_0 = 0; x_1 = 1; x_2 = 1; x_3 = 1; #10;
        
        x_0 = 1; x_1 = 0; x_2 = 0; x_3 = 0; #10;
        x_0 = 1; x_1 = 0; x_2 = 0; x_3 = 1; #10;
        x_0 = 1; x_1 = 0; x_2 = 1; x_3 = 0; #10;
        x_0 = 1; x_1 = 0; x_2 = 1; x_3 = 1; #10;
        x_0 = 1; x_1 = 1; x_2 = 0; x_3 = 0; #10;
        x_0 = 1; x_1 = 1; x_2 = 0; x_3 = 1; #10;
        x_0 = 1; x_1 = 1; x_2 = 1; x_3 = 0; #10;
        x_0 = 1; x_1 = 1; x_2 = 1; x_3 = 1; #10;

        $stop;  // Stop the simulation
    end
endmodule
