`timescale 1ns / 1ns

module stimulus();
    // input
    reg x;
    reg y;

    // output
    wire z;

    // instantiate the unit under test
    comparator uut (
        .x(x),
        .y(y),
        .z(z)
    );

    always @(y) begin
        #1 x = ~x;
        #1 x = ~x;
        #1 x = ~x;
    end

    initial begin
        x = 0;
        y = 0;
    end

    initial begin

        #20 y = 1;
        #20 y = 0;
        #20 y = 1;

        #40 $finish();
    end

    initial begin
        $dumpfile("alwaysblock.vcd");
        $dumpvars(0, stimulus);
        $monitor("t=%3d, x=%d, y=%d, z=%d \n", $time, x, y, z);
    end
endmodule