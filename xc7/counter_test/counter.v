`timescale 1 ps / 1 ps

module top (
    input  clk,
    output [15:0] led
);

    localparam BITS = 16;
    localparam LOG2DELAY = 40;

    wire bufg;
    BUFG bufgctrl(.I(clk), .O(bufg));

    reg [BITS+LOG2DELAY-1:0] counter = 0;

    always @(posedge bufg) begin
        counter <= counter + 1;
    end

    assign led[15:0] = counter >> LOG2DELAY;
endmodule
