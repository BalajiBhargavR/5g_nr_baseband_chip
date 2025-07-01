`timescale 1ns/1ps

module tb_beamformer;

    reg clk, rst;
    reg  [15:0] data_in;
    wire [15:0] data_out;

    beamformer dut (
        .clk(clk),
        .rst(rst),
        .data_in(data_in),
        .data_out(data_out)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
        data_in = 0;

        #12;
        rst = 0;

        #8;  data_in = 16'h1234; #40;
        data_in = 16'hABCD;      #40;
        data_in = 16'h0000;      #40;
        data_in = 16'hFFFF;      #40;

        $finish;
    end

    initial begin
        $dumpfile("tb_beamformer.vcd");
        $dumpvars(0, tb_beamformer);
    end

endmodule
