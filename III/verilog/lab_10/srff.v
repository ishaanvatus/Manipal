module srff(s, r, clk, rst, q);
input s, r, clk, rst;
output reg q;
always @ (posedge clk or posedge rst) begin
    if (rst) 
        q <= 0;
    else
        case ({s, r})
            2'b00: q <= q;
            2'b01: q <= 0;
            2'b10: q <= 1;
            2'b11: q <= 1'bx;
        endcase
end
endmodule
