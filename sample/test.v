module testtest(
    input a,
    input b,
    input c,
    input d,
    output outAandB,
    output outCandD,
    output result
);
    assign outAandB = a & b;
    assign outCandD = c & d;
    assign result = outAandB & outCandD;

endmodule