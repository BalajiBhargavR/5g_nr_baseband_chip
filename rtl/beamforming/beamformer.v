// Classic Verilog-2005, Yosys-compatible Beamformer Example

module beamformer(
    input            clk,
    input            rst,
    input      [7:0] in_data0,
    input      [7:0] in_data1,
    input      [7:0] in_data2,
    input      [7:0] in_data3,
    input      [7:0] weight0,
    input      [7:0] weight1,
    input      [7:0] weight2,
    input      [7:0] weight3,
    output reg [9:0] out_data
);

    reg [15:0] acc;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            acc      <= 0;
            out_data <= 0;
        end else begin
            // Example weighted sum (You can replace with your own logic)
            acc <= in_data0 * weight0 +
                   in_data1 * weight1 +
                   in_data2 * weight2 +
                   in_data3 * weight3;
            out_data <= acc[15:6]; // Downscale to 10 bits for output
        end
    end

endmodule
