module fft #(parameter N = 2048)(
    input clk,
    input rst,
    input [15:0] din,
    input valid_in,
    output reg [15:0] dout,
    output reg valid_out
);
// Dummy FFT logic for illustration
always @(posedge clk) begin
    if (rst) begin
        dout <= 0;
        valid_out <= 0;
    end else if (valid_in) begin
        dout <= din; // Pass-through (real FFT would be here)
        valid_out <= 1;
    end else begin
        valid_out <= 0;
    end
end
endmodule
