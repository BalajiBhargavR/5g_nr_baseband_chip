// Skeleton for LDPC Encoder
module ldpc_encoder #(
    parameter CODEWORD_LEN = 672,
    parameter MESSAGE_LEN = 360
) (
    input clk,
    input reset_n,
    input start,
    input [MESSAGE_LEN-1:0] data_in,
    output reg [CODEWORD_LEN-1:0] codeword_out,
    output reg done
);

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            codeword_out <= 0;
            done <= 0;
        end else if (start) begin
            // Dummy encoding: just zero-extend data for illustration
            codeword_out <= {data_in, {(CODEWORD_LEN-MESSAGE_LEN){1'b0}}};
            done <= 1;
        end else begin
            done <= 0;
        end
    end

endmodule
