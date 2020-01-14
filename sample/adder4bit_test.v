module adder4bit_test();
    reg [3:0] a, b;
    reg cin;
    wire [3:0] s;
    wire cout;

    adder4bit dut(
        .a(a),
        .b(b),
        .cin(cin),
        .s(s),
        .cout(cout)
    );

    initial begin
        #5;
        a = 0;
        b = 0;
        cin = 0;

        #5;
        a = 2;
        b = 3;

        #5;
        cin = 1;

        #5;
        cin = 0;
        a = 4'b1001;
        b = 4'b0111;

        #5;
        cin = 1;

        #5 $finish();
    end

    initial begin
        $monitor("time=%2d, IN1=%4b, IN2=%4b, CIN=%1b, COUT=%1b, SUM=%5b", $time,a,b,cin,cout, s);
        $dumpfile("adder4bit.vcd");
        $dumpvars(0, adder4bit_test);
    end

endmodule