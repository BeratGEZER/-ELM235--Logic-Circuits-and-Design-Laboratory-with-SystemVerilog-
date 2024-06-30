module lab5_g29_p1_tb;

    logic clk;
    logic reset;
    logic en;
    logic [4:0] psc;
    logic tick;

    // Instantiate the lab5_g29_p1 module
    lab5_g29_p1 uut (
        .clk(clk),
        .reset(reset),
        .en(en),
        .psc(psc),
        .tick(tick)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Test sequence
    initial begin
        // Initialize inputs
        reset = 0;
        en = 0;
        psc = 5'd10;

        // Reset the counter
        #10 reset = 1;

        // Enable the counter
        #10 en = 1;

        // Let the counter run for a few clock cycles
        #200;

        // Change the prescaler value
        #10 psc = 5'd15;

        // Let the counter run for a few more clock cycles
        #200;

        // Disable the counter
        #10 en = 0;

        // Let the counter be disabled for a few clock cycles
        #50;

        // Re-enable the counter
        #10 en = 1;

        // Let the counter run for a few more clock cycles
        #100;

        // End simulation
        $stop;
    end

    // Monitor outputs
    initial begin
        $monitor("Time = %0t : clk = %b, reset = %b, en = %b, psc = %d, tick = %b, counter = %d", $time, clk, reset, en, psc, tick, uut.counter);
    end

endmodule