`timescale 1ns / 1ns
module stimulus();
    // input
    reg x;
    reg y;
    // output
    wire z;
    // instantiate the unit under test (uut)
    comparator uut (
        .x(x),
        .y(y),
        .z(z)
    );

    integer period;

    initial begin
        x = 0;
        y = 0;
        period = 10;
    end

    initial begin
        forever begin
            #(period/3) x=~x;
            #(period/3) x=~x;
        end
    end

    initial begin
        forever begin
            #(period/2) y=~y;
            #(period/2) y=~y;
        end
    end

    initial begin
        #100 $finish();
    end

    initial begin
        $monitor("x=%d, y=%d, z=%d \n", x, y, z);
        $dumpfile("comparatorsecond.vcd");
        $dumpvars(0, stimulus);
    end

endmodule // stimulus