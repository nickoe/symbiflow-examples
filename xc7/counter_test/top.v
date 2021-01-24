`timescale 1 ps / 1 ps
`default_nettype	none

module top
#(parameter LOG2DELAY = 22)
(
    input  clk,
    output [15:0] led
);
    counter #(.LOG2DELAY(LOG2DELAY)) my_counter (clk, led);
endmodule
