module fulladder(
    input x,
    input y,
    input cin,

    output A,
    output cout
);

    assign {cout, A} = cin + y + x;
    // assign A = ((~cin) & x & (~y));
    // assign cout = ((~cin) & x & y);

endmodule // fulladder