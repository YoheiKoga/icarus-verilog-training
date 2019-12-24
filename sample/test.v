module TEST(
    input CLK,
    output reg [3:0] counter = 4'b0
);

always @(posedge CLK) begin
    counter = counter + 1;
end

endmodule // TESTintpu CLK,
