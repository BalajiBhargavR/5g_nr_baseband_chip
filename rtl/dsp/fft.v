// Simple FFT module stub for 5G NR baseband chip
module fft #(
    parameter N = 8
)(
    input wire clk,
    input wire rst,
    input wire [15:0] din_real,
    input wire [15:0] din_imag,
    output wire [15:0] dout_real,
    output wire [15:0] dout_imag,
    input wire din_valid,
    output wire dout_valid
);
// Implementation TBD
endmodule
