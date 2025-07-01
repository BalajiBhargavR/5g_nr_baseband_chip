// Testbench for FFT module
module fft_tb;
    reg clk = 0, rst = 1;
    reg [15:0] din_real = 0, din_imag = 0;
    reg din_valid = 0;
    wire [15:0] dout_real, dout_imag;
    wire dout_valid;

    // Instantiate DUT
    fft uut (
        .clk(clk),
        .rst(rst),
        .din_real(din_real),
        .din_imag(din_imag),
        .dout_real(dout_real),
        .dout_imag(dout_imag),
        .din_valid(din_valid),
        .dout_valid(dout_valid)
    );

    // Clock
    always #5 clk = ~clk;

    initial begin
        // Reset
        #10 rst = 0;
        // Stimulus: simple ramp
        #10;
        repeat (8) begin
            din_real = $random;
            din_imag = $random;
            din_valid = 1;
            #10;
        end
        din_valid = 0;
        #100;
        $finish;
    end
endmodule
