`timescale 1ns/1ns

module udpcomparator(
    input x,
    input y,
    output z
);
udpcompare c0(z, x, y);

endmodule

primitive udpcompare(out, in1, in2);
    output out;
    input in1, in2;

    // define XNOR Gate
    table
        // in1  in2  :  out
        0  0  :  1;
        0  1  :  0;
        1  0  :  0;
        1  1  :  1;
    endtable
endprimitive