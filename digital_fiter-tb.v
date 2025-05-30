module tb_fir_filter;

    reg clk;
    reg reset;
    reg signed [7:0] x_in;
    wire signed [15:0] y_out;

    fir_filter uut (
        .clk(clk),
        .reset(reset),
        .x_in(x_in),
        .y_out(y_out)
    );

    initial begin
        // Initialize signals
        clk = 0;
        reset = 1;
        x_in = 0;

        #10 reset = 0;

        // Apply input samples
        #10 x_in = 8'd1;
        #10 x_in = 8'd2;
        #10 x_in = 8'd3;
        #10 x_in = 8'd4;
        #10 x_in = 8'd5;
        #10 x_in = 8'd6;
        #10 x_in = 8'd7;
        #10 x_in = 8'd8;
        #10 $finish;
    end

    // Clock generation
    always #5 clk = ~clk;

endmodule
