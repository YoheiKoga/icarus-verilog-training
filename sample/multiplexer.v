module multiplexer2_1(
    out,
    cntrl,
    in1,
    in2
);
    input cntrl, in1, in2;
    output out;
    assign out = cntrl ? in2 : in1;

endmodule 