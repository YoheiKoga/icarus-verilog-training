module testtest_test();
    reg inputA;
    reg inputB;
    reg inputC;
    reg inputD;

    wire out;

    testtest uut(
        .a(inputA),
        .b(inputB),
        .c(inputC),
        .d(inputD),
        .result(out)
    );

    initial begin
        inputA = 0;
        inputB = 0;
        inputC = 0;
        inputD = 0;
    end

    initial begin
        #1;
        inputA = 1;
        inputB = 0;
        inputC = 0;
        inputD = 0;

        #1;
        inputA = 0;
        inputB = 1;
        inputC = 0;
        inputD = 0;

        #1;
        inputA = 1;
        inputB = 1;
        inputC = 0;
        inputD = 0;

        #1;
        inputA = 0;
        inputB = 0;
        inputC = 0;
        inputD = 0;

        #1;
        inputA = 0;
        inputB = 0;
        inputC = 1;
        inputD = 0;

        #1;
        inputA = 0;
        inputB = 0;
        inputC = 0;
        inputD = 1;

        #1;
        inputA = 0;
        inputB = 0;
        inputC = 1;
        inputD = 1;

        #1;
        inputA = 0;
        inputB = 0;
        inputC = 0;
        inputD = 0;

        #1;
        inputA = 1;
        inputB = 0;
        inputC = 1;
        inputD = 1;

        #1;
        inputA = 1;
        inputB = 1;
        inputC = 1;
        inputD = 0;

        #1;
        inputA = 0;
        inputB = 0;
        inputC = 0;
        inputD = 0;

        #1;
        inputA = 1;
        inputB = 1;
        inputC = 1;
        inputD = 1;

        #1;
        $finish();
    end

    initial begin
        $monitor("time=%0t, inputA=%0b, inputB=%0b, inputC=%0b, inputD=%0b, out=%0b \n", $time, inputA, inputB, inputC, inputD, out);
        $dumpfile("test.vcd");
        $dumpvars(0, testtest_test);
    end

endmodule