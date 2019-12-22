module counter(CLK, RST_X, cnt);
    input RST_X, CLK;
    output reg [3:0] cnt;
    always @(posedge CLK) begin
        if (!RST_X) begin
            cnt <= 4'h0;
        end
        else begin
            cnt <= cnt + 4'h1;
        end
    end
endmodule