module lab5_g29_p1 (
    input logic clk, reset, en,
    input logic [4:0] psc,
    output logic tick
);

    logic [4:0] counter;

    always_ff @(posedge clk or negedge reset) begin
        if (!reset) begin
            counter <= 5'd0;
            tick <= 1'b0;
        end else if (en) begin
            if (counter == psc) begin
                counter <= 5'd0;
                tick <= 1'b1;
            end else begin
                counter <= counter + 1;
                tick <= 1'b0;
            end
        end
    end

endmodule
