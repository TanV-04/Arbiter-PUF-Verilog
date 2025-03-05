// this is the top module

module arbiter_puf (
    input clk,
    input [63:0] challenge,
    output response
);

    wire upper_path, lower_path;
    
    mux_stage mux (
        .sel(challenge[0]),
        .in0(1'b0),     
        .in1(1'b1),    
        .out0(upper_path),
        .out1(lower_path)
    );
    arbiter arb (
        .clk(clk),
        .path0(upper_path),
        .path1(lower_path),
        .response(response)
    );

endmodule
