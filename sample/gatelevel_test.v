module gatelevel();
    //input
    reg a;
    reg b;
    // output
    wire c;
    wire d;
    wire e;

    gates uut (
        .a_input(a),
        .b_input(b),
        .c_and(c),
        .d_or(d),
        .e_xor(e)        
    );

    integer i;

    initial begin
        a = 0;
        b = 0;
    end

    initial begin
        for (i=0; i<20; i=i+1) begin
            #1 a <= $random;
            b <= $random;
        end
    end

    initial begin
        // #200 $finish();
        $monitor("t=%0t, a=%0b, c=%0b, c(and)=%0b, d(or)=%0b, e(xor)=%0b \n", $time, a, b, c, d, e);
        $dumpfile("gatelevel.vcd");
        $dumpvars(0, gatelevel);
    end

endmodule // gate