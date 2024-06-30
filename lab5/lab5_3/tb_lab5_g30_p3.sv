`timescale 1ns/1ps
module tb_lab5_g30_p3(); 
    logic clk, reset, A; 
    logic Y; 

    // Instantiate the DUT (Device Under Test)
    lab5_g30_p3 dut0(
        .clk(clk),
        .reset(reset), 
        .A(A), 
        .Y(Y)
    );

    // Clock generation
    always begin 
        clk = 1; #5; 
        clk = 0; #5; 
    end 

    // Test sequence
    initial begin 
        // Apply initial reset
        reset = 0;
        #10;
        reset = 1;

        // Test cases
        A = 0; #15; 
        A = 1; #10; 
        A = 0; #40; 
        A = 1; #60; 
        A = 0; #20;    
    end 

    // Monitor signals
    initial begin
        $monitor("Time: %0t | clk: %b | reset: %b | A: %b | Y: %b | state: %0d", 
                 $time, clk, reset, A, Y, dut0.state);
    end

    // End simulation
    initial begin 
        #1000; 
        $stop;
    end 
endmodule
