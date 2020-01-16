module stimulus();
    reg [3:0] x;
    wire [2:0] pcode;

    // instantiate the unit under test (uut)
    priory_encoder uut(
        .x(x),
        .pcode(pcode)
    );

    initial begin
        // initialize inputs
        x = 4'b0000;

        #20 x = 4'b0001;
        #20 x = 4'b0010;
        #20 x = 4'b0011;
        #20 x = 4'b0100;
        #20 x = 4'b0101;
        #20 x = 4'b0110;
        #20 x = 4'b0111;
        #20 x = 4'b1000;
        #20 x = 4'b1001;
        #20 x = 4'b1010;
        #20 x = 4'b1011;
        #20 x = 4'b1100;
        #20 x = 4'b1101;
        #20 x = 4'b1110;
        #20 x = 4'b1111;
        #20 x = 4'b0000;

        #40 $finish();
    end

    initial begin
        $monitor("t=%3d, x=%4b, pcode=%3b", $time, x, pcode);
        $dumpfile("ifstatement.vcd");
        $dumpvars(0,stimulus);
    end
endmodule