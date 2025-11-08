//design code 
module d_latch (
    input D, En,
    output reg Q
);
    always @ (D or En) begin
        if (En)
            Q = D;     // When enabled, output follows input
        else
            Q = Q;     // When disabled, hold previous value
    end
endmodule
