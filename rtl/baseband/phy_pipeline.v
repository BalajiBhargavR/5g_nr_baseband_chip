module phy_pipeline(
    input clk,
    input rst,
    input [15:0] data_in,
    output reg [15:0] data_out
);
// Dummy PHY pipeline: pass-through
always @(posedge clk) begin
    if (rst)
        data_out <= 0;
    else
        data_out <= data_in;
end
endmodule
