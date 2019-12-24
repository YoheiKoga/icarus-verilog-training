`timescale 1ns / 1ps
module stimulus;
    // inputs
    reg x;
    reg y;
    // outputs
    wire z;

    // instantiate the unit under test (UUT)
    comparator uut(
        .x(x),
        .y(y),
        .z(z)
    );

    initial begin
        // initialize inputs
        x = 0;
        y = 0;

        #20 x = 1;
        #20 y = 1;
        #20 y = 0;
        #20 x = 0;
        #40;
    end

    initial begin
        $monitor("x=%d, y=%d, z=%d \n", x, y, z);
        $dumpfile("comparator.vcd");
        $dumpvars(0, stimulus);
    end
endmodule