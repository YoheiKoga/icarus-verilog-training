`timescale 1ns/1ns
module stimulus();
    //input
    reg[1:0] x;
    reg[1:0] y;
    //output
    wire z;

    integer period;

    comparator2bit uut(
        .x(x),
        .y(y),
        .z(z)
    );

    initial begin
        x = 0;
        y = 0;

        period = 15;
    end

    initial begin
        forever begin
            #(period/5) x += 1;
        end
    end

    initial begin
        forever begin
            #(period/3) y += 1;
        end
    end

    initial begin
        #100 $finish();
    end

    initial begin
        $monitor("t=%3d x=%2b, y=%2b, z=%d \n", $time,x,y,z);
        $dumpfile("vectordata.vcd");
        $dumpvars(0, stimulus);
    end

endmodule // stimulus