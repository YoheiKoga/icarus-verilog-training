module myModule_tb();
    wire out;
    reg clock;

    always begin
        #2 clock =!clock;
    end

    initial begin
        // initialize clock
        clock = 0;

        // end simulation
        #100 $finish();
    end

    myModule notGate(clock, out);

    initial begin
        $dumpfile("mymodule_test.vcd");
        $dumpvars(0, myModule_tb);
    end

endmodule // myModule_tb