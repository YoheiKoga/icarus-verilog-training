module multiplexer2_tb();
    wire out;
    reg cntrl, in1, in2;

    multiplexer2_1 uut(out, cntrl, in1, in2);

    initial begin
        cntrl = 0;
        in1 = 0;
        in2 = 0;
    end

    initial begin
        #1;
        in1 = 1;
        in2 = 0;

        #1;
        in1 = 0;
        in2 = 1;

        #1;
        in1 = 1;
        in2 = 1;

        #1;
        in1 = 0;
        in2 = 0;

        #1;
        cntrl = 1;

        #1
        in1 = 1;
        in2 = 0;

        #1
        in1 = 0;
        in2 = 1;

        #1;
        in1 = 1;
        in2 = 1;

        #1;
        in1 = 0;
        in2 = 0;

        #1
        $finish();
    end

    initial begin
        $monitor($time, ", out=%b, cntrl=%b, in1=%b, in2=%b", out, cntrl, in1, in2);
        $dumpfile("multiplexer.vcd");
        $dumpvars(0, multiplexer2_tb);
    end

endmodule