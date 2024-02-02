module tff(t, clk, rst, q);
input t, clk, rst;
output reg q;
always @ (posedge clk or posedge rst) begin
    if (rst)
        q <= 0;
    else 
        q <= ~q;
end
endmodule 
