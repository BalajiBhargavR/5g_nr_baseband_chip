// Testbench for LDPC Encoder

`timescale 1ns/1ps

module ldpc_encoder_tb;

    localparam CODEWORD_LEN = 672;
    localparam MESSAGE_LEN = 360;

    reg clk;
    reg reset_n;
    reg start;
    reg [MESSAGE_LEN-1:0] data_in;
    wire [CODEWORD_LEN-1:0] codeword_out;
    wire done;

    ldpc_encoder #(
        .CODEWORD_LEN(CODEWORD_LEN),
        .MESSAGE_LEN(MESSAGE_LEN)
    ) uut (
        .clk(clk),
        .reset_n(reset_n),
        .start(start),
        .data_in(data_in),
        .codeword_out(codeword_out),
        .done(done)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        $dumpfile("ldpc_encoder_tb.vcd");
        $dumpvars(0, ldpc_encoder_tb);

        clk = 0;
        reset_n = 0;
        start = 0;
        data_in = 0;

        $display("Simulation started");

        #20;
        reset_n = 1;
        $display("Reset deasserted");

        #20;
        data_in = 360'hA5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5;
        start = 1;
        $display("Start signal set high, data_in = %h", data_in);
        #10;
        start = 0;
        $display("Start signal set low");

        // Wait for 'done' signal from the DUT
        wait (done == 1);

        // Self-check: Compare output with expected value
        if (codeword_out == {data_in, {(CODEWORD_LEN-MESSAGE_LEN){1'b0}}}) begin
            $display("Test PASSED!");
        end else begin
            $display("Test FAILED!");
            $display("Expected: %h", {data_in, {(CODEWORD_LEN-MESSAGE_LEN){1'b0}}});
            $display("Got:      %h", codeword_out);
        end

        #20;
        $display("Simulation finished");
        $finish;
    end

endmodule
