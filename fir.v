module fir_filter (
    input clk,
    input reset,
    input signed [7:0] x_in,
    output reg signed [15:0] y_out
);

    // Coefficients
    parameter signed [7:0] h0 = 8'd1;
    parameter signed [7:0] h1 = 8'd2;
    parameter signed [7:0] h2 = 8'd3;
    parameter signed [7:0] h3 = 8'd4;

    // Shift registers for past inputs
    reg signed [7:0] x_reg [0:3];
    integer i;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            for (i = 0; i < 4; i = i + 1)
                x_reg[i] <= 8'd0;
            y_out <= 16'd0;
        end else begin
            // Shift input values
            x_reg[3] <= x_reg[2];
            x_reg[2] <= x_reg[1];
            x_reg[1] <= x_reg[0];
            x_reg[0] <= x_in;

            // Multiply-accumulate operation
            y_out <= (h0 * x_reg[0]) +
                     (h1 * x_reg[1]) +
                     (h2 * x_reg[2]) +
                     (h3 * x_reg[3]);
        end
    end

endmodule
