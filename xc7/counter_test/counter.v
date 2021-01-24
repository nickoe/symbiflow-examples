`timescale 1 ps / 1 ps
`default_nettype	none

module counter
#(parameter LOG2DELAY = 8)
(
    input  clk,
    output [15:0] led
);

    localparam BITS = 16;

    wire bufg;
    BUFG bufgctrl(.I(clk), .O(bufg));

    reg [BITS+LOG2DELAY-1:0] counter_reg = 0;

    always @(posedge bufg) begin
        counter_reg <= counter_reg + 1;
    end

    assign led[15:0] = counter_reg[BITS+LOG2DELAY-1:LOG2DELAY];
endmodule
