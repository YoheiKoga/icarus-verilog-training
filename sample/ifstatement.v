module priory_encoder(
    input wire [3:0] x,
    output reg [2:0] pcode
);
    always @(x[3], x[2], x[1], x[0]) begin

        // if (x[4] == 1'b1) begin
        //     pcode = 3'b100;
        // end
        // else if (x[3] == 1'b1) begin
        //     pcode = 3'b011;
        // end
        // else if (x[2] == 1'b1) begin
        //     pcode = 3'b010;
        // end
        // else if (x[1] == 1'b1) begin
        //     pcode = 3'b001;
        // end
        // else begin
        //     pcode = 3'b000;
        // end
        
        if (x[3] == 1'b1) 
            pcode = 3'b100;
        else if (x[2] == 1'b1)
            pcode = 3'b011;
        else if (x[1] == 1'b1)
            pcode = 3'b010;
        else if (x[0] == 1'b1)
            pcode = 3'b001;
        else 
            pcode = 3'b000;
    end

endmodule