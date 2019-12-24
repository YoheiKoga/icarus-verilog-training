`timescale 1ns/1ns

module top();

    reg clk, res;
    wire [3:0] q;

    parameter STEP = 100;
    always #(STEP/2) clk = ~clk;

    counter_hex counter_hex_i (clk, res, q);

    initial begin
        #0      res = 0; clk = 0;
        #STEP   res = 1;
        #STEP   res = 0;
        #(STEP*20) $finish();
    end

    initial begin
        $dumpfile("fourbitcounter.vcd");
        $dumpvars (0, top);
        $monitor ($stime, "res=%b clk=%b Q=%h", res, clk, q);
    end

    // initial begin
    //     #500 $finish();
    // end

endmodule