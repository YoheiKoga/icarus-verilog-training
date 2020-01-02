`timescale 1ns/1ns

module udptest();
    reg x;
    reg y;
    wire z;

    // instantiate the unit under test(uut)
    udpcomparator uut (
        .x(x),
        .y(y),
        .z(z)
    );

    initial begin
        x = 0;
        y = 0;
    end

    initial begin
        #100;
        #50 x = 1;
        #60 y = 1;
        #70 y = 1;
        #80 x = 0;
    end

    initial begin
        $monitor("x=%d, y=%d, z=%d \n", x,y,z);
        $dumpfile("udpcomparator.vcd");
        $dumpvars(0, udptest);
    end
endmodule