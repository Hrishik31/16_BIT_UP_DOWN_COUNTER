module up_down_counter_16bit (
    input Clock,
    input Reset,
    input Enable,
    input Up_Down,              // 1: Count Up, 0: Count Down
    output reg [15:0] Count
);

reg [15:0] count_next;

always @(posedge Clock) begin
    if (Reset)
        Count <= 16'b0;
    else if (Enable)
        Count <= count_next;
end

always @(*) begin
    if (Up_Down)
        count_next = Count + 1;
    else
        count_next = Count - 1;
end

endmodule
