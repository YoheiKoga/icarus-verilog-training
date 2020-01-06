module halfadder(
    input x,
    input y,
    output A,
    output cout
);

    assign cout = x & y;
    assign A = x ^ y;

endmodule // halfadder