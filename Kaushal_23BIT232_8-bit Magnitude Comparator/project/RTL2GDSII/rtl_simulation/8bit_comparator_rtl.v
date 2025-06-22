module magComp(
    input  Clock,       // Clock input
    input  [7:0] A,         // 8-bit input A
    input  [7:0] B,         // 8-bit input B
    output reg   Gt,        // A greater than B
    output reg   Lt,        // A less than B
    output reg   Eq         // A equals B
);

always @(posedge Clock) begin
    if (A == B) begin
        Eq <= 1;
        Gt <= 0;
        Lt <= 0;
    end else if (A > B) begin
        Eq <= 0;
        Gt <= 1;
        Lt <= 0;
    end else begin
        Eq <= 0;
        Gt <= 0;
        Lt <= 1;
    end
end

endmodule
