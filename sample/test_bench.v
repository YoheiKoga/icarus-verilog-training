// `timescale 1ps/1ps

module tb();
    reg CLK;
    wire [3:0] counter;

    TEST tb(
        .CLK(CLK),
        .counter(counter)
    );

    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0, tb);
        $monitor("%t: clk = %b, counter = %b", $time, CLK, counter);
        CLK = 0;
        forever #10 CLK = ~CLK;
    end

    initial begin
        #500 $finish();
    end
endmodule