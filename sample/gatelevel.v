module gates (
    input a_input,
    input b_input,
    output c_and,
    output d_or,
    output e_xor
);

    and (c_and, a_input, b_input);  // c is the output, a and b are inputs
    or  (d_or, a_input, b_input);  // d is the output, a and b are inputs
    xor (e_xor, a_input, b_input);  // e is the output, a and b are inputs

endmodule