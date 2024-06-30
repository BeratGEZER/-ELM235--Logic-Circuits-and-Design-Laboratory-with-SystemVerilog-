`timescale 1ns/1ps
module tb_lab2_g29_p1();
    logic a, b, c, d;
    logic y;
	 
    // Instantiate the Device Under Test (DUT)
    lab2_g29_p1 dut0 (a, b, c, d, y);

    initial begin
        // Initial state
        a = 0; b = 0; c = 0; d = 0; #10;
        d = 1; #10;
        c = 1; d = 0; #10;
        d = 1; #10;
        b = 1; c = 0; d = 0; #10;
        d = 1; #10;
        c = 1; d = 0; #10;
        d = 1; #10;
        a = 1; b = 0; c = 0; d = 0; #10;
        d = 1; #10;
        c = 1; d = 0; #10;
        d = 1; #10;
        b = 1; c = 0; d = 0; #10;
        d = 1; #10;
        c = 1; d = 0; #10;
        d = 1; #10;
        
        $stop; // Stop simulation
    end
endmodule