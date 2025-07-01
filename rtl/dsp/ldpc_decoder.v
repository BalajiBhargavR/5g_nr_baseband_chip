module ldpc_decoder(
    input clk,
    input rst,
    input [127:0] data_in,
    output reg [127:0] data_out,
    output reg done
);
// Dummy LDPC decoder: just pass-through
always @(posedge clk) begin
    if (rst) begin
        data_out <= 0;
        done <= 0;
    end else begin
        data_out <= data_in;
        done <= 1;
    end
end
endmodule
