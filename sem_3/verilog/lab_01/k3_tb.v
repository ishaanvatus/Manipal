`timescale 1ns/1ns
`include "k3.v"
module k3_tb;
reg a, b, c, d;
wire f;
k3 uut(f, a, b, c, d);
initial begin
    $dumpfile("k3_tb.vcd");
    $dumpvars(0, k3_tb);
    a=0; b=0; c=0; d=0; #20;
    a=0; b=0; c=0; d=1; #20;
    a=0; b=0; c=1; d=0; #20;
    a=0; b=0; c=1; d=1; #20;
    a=0; b=1; c=0; d=0; #20;
    a=0; b=1; c=0; d=1; #20;
    a=0; b=1; c=1; d=0; #20;
    a=0; b=1; c=1; d=1; #20;
    a=1; b=0; c=0; d=0; #20;
    a=1; b=0; c=0; d=1; #20;
    a=1; b=0; c=1; d=0; #20;
    a=1; b=0; c=1; d=1; #20;
    a=1; b=1; c=0; d=0; #20;
    a=1; b=1; c=0; d=1; #20;
    a=1; b=1; c=1; d=0; #20;
    a=1; b=1; c=1; d=1; #20;
    $display("Test Complete");
end
endmodule
